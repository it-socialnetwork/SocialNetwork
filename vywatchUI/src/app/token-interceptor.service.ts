import { Injectable, Injector } from '@angular/core';
import {
  HttpRequest,
  HttpHandler,
  HttpEvent,
  HttpInterceptor
} from '@angular/common/http';
import { Observable } from 'rxjs';
import { AuthServiceService} from './auth-service.service'
@Injectable()
export class TokenInterceptorService implements HttpInterceptor {
  constructor( private injector: Injector) {}


  intercept(request: HttpRequest<any>, next: HttpHandler): Observable<HttpEvent<any>> {
    let authService = this.injector.get(AuthServiceService)
    let tokenizedReq = request.clone({
        setHeaders: {
          Authorization: `Bearer ${authService.getToken()}`
        }
    })
    return next.handle(tokenizedReq)
  }
}