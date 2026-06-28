import { Component, Input, AfterViewInit, Inject, PLATFORM_ID } from '@angular/core';
import { isPlatformBrowser } from '@angular/common';

@Component({
  selector: 'app-ad',
  templateUrl: './ad.html',
  styleUrls: ['./ad.css']
})
export class AdComponent implements AfterViewInit {
  @Input() adSlot: string = '';
  @Input() adFormat: string = 'auto';
  @Input() fullWidthResponsive: boolean = false;

  constructor(@Inject(PLATFORM_ID) private platformId: Object) {}

  ngAfterViewInit(): void {
    if (isPlatformBrowser(this.platformId)) {
      setTimeout(() => {
        try {
          (window as any).adsbygoogle = (window as any).adsbygoogle || [];
          (window as any).adsbygoogle.push({});
        } catch (e) {
          console.error('Adsbygoogle error:', e);
        }
      }, 0);
    }
  }
}
