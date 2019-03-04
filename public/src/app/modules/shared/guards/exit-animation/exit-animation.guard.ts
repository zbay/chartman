import { Injectable } from '@angular/core';
import { ActivatedRouteSnapshot, RouterStateSnapshot, CanDeactivate } from '@angular/router';
import { Observable } from 'rxjs';
import { ExitAnimatingComponent } from '../../components/exit-animating/exit-animating.component';

@Injectable({
  providedIn: 'root'
})
export class ExitAnimationGuard implements CanDeactivate<ExitAnimatingComponent> {
  canDeactivate(
    component: ExitAnimatingComponent,
    next: ActivatedRouteSnapshot,
    state: RouterStateSnapshot): Observable<boolean> | Promise<boolean> | boolean {
    return component.canDeactivate ? component.canDeactivate() : true;
  }
}
