import { Routes } from '@angular/router';
import { DummyComponent } from './dummy.component';

export const routes: Routes = [
  { path: '**', component: DummyComponent } // Catch all to allow query params without routing error
];
