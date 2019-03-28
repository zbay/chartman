import { ExecutionContext, Injectable, NestInterceptor, CallHandler } from '@nestjs/common';
import { Observable } from 'rxjs';
import { map } from 'rxjs/operators';

@Injectable()
export class AccessControlHeaderInterceptor implements NestInterceptor {
  intercept(context: ExecutionContext, next: CallHandler): Observable<any> {
    const request = context.switchToHttp().getRequest();
    request.res.header[`Access-Control-Allow-Methods`] =  `GET, POST, OPTIONS, DELETE, PUT, PATCH`;
    request.res.header[`Access-Control-Expose-Headers`] = `Authorization`;
    request.res.header[`Access-Control-Allow-Headers`]
      // tslint:disable-next-line:max-line-length
      = `Access-Control-Allow-Headers, X-Amz-Date, X-Requested-By, X-Api-Key, Authorization, Origin, Accept, X-Requested-With, Content-Type, Access-Control-Request-Method, Access-Control-Request-Headers`;
    return next.handle().pipe(map(data => ({ data })));
  }
}
