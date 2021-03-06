import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { BrowserModule } from '@angular/platform-browser';
import { HTTP_INTERCEPTORS, HttpClientModule } from '@angular/common/http';
import { NgModule, ErrorHandler } from '@angular/core';

import { JwtModule } from '@auth0/angular-jwt';

import { AboutComponent } from './components/about/about.component';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { AuthService } from '@app/services/auth/auth.service';
import { CentralErrorHandler } from './error-handling/central-error-handler';
import { ErrorDialogComponent } from '@app/modules/shared/components/error-dialog/error-dialog.component';
import { HeaderComponent } from './components/header/header.component';
import { JwtHttpInterceptor } from '@common/jwt-http-interceptor';
import { LoginComponent } from './components/login/login.component';
import { LogoutComponent } from './components/logout/logout.component';
import { NavbarComponent } from './components/navbar/navbar.component';
import { NavButtonComponent } from './components/nav-button/nav-button.component';
import { SharedModule } from '@app/modules/shared/shared.module';
import { UserEditorComponent } from '@app/modules/shared/components/user-editor/user-editor.component';
import { SidenavComponent } from './components/sidenav/sidenav.component';
import { ScrollToTopComponent } from './components/scroll-to-top/scroll-to-top.component';
import { NavbarVertComponent } from './components/navbar-vert/navbar-vert.component';
import { NavButtonVertComponent } from './components/nav-button-vert/nav-button-vert.component';

export function tokenGetter() {
  return localStorage.getItem('access_token');
}

@NgModule({
  declarations: [
    AppComponent,
    LoginComponent,
    LogoutComponent,
    AboutComponent,
    NavbarComponent,
    NavButtonComponent,
    HeaderComponent,
    SidenavComponent,
    ScrollToTopComponent,
    NavbarVertComponent,
    NavButtonVertComponent
  ],
  imports: [
    AppRoutingModule,
    BrowserAnimationsModule,
    BrowserModule,
    HttpClientModule,
    JwtModule.forRoot({
      config: {
        tokenGetter: tokenGetter,
        whitelistedDomains: ['localhost', 'chartman.zbay.xyz']
      }
    }),
    SharedModule
  ],
  providers: [AuthService,
    { provide: HTTP_INTERCEPTORS, useClass: JwtHttpInterceptor, multi: true },
    { provide: ErrorHandler, useClass: CentralErrorHandler }
  ],
  bootstrap: [AppComponent],
  entryComponents: [ErrorDialogComponent, UserEditorComponent]
})
export class AppModule { }
