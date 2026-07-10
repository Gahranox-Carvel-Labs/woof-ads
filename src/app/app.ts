import { Component, OnInit, inject, signal } from '@angular/core';
import { ActivatedRoute, Router, RouterOutlet } from '@angular/router';
import { DomSanitizer, SafeResourceUrl } from '@angular/platform-browser';
import { AdComponent } from './ad/ad';
import { FormsModule } from '@angular/forms';
import { CommonModule } from '@angular/common';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet, AdComponent, FormsModule, CommonModule],
  templateUrl: './app.html',
  styleUrls: ['./app.css'],
})
export class App implements OnInit {
  targetUrl: string = '';
  safeUrl = signal<SafeResourceUrl | null>(null);

  private route = inject(ActivatedRoute);
  private router = inject(Router);
  private sanitizer = inject(DomSanitizer);

  ngOnInit() {
    this.route.queryParams.subscribe(params => {
      const site = params['site'];
      if (site) {
        let fullUrl = site;
        if (!site.startsWith('http://') && !site.startsWith('https://')) {
          fullUrl = 'https://' + site;
        }
        this.safeUrl.set(this.sanitizer.bypassSecurityTrustResourceUrl(fullUrl));
      } else {
        this.safeUrl.set(null);
      }
    });
  }

  onSubmit() {
    if (this.targetUrl) {
      this.router.navigate([], {
        relativeTo: this.route,
        queryParams: { site: this.targetUrl },
        queryParamsHandling: 'merge'
      });
    }
  }
}
