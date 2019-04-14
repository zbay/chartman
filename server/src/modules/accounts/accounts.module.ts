import { JwtModule } from '@nestjs/jwt';
import { Module, MiddlewareConsumer, RequestMethod } from '@nestjs/common';

import { hasJWT } from '@common/middleware/has-jwt.middleware';
import { LoginController } from '@accounts/controllers/login/login.controller';
import { LoginService } from '@accounts/services/login/login.service';
import { ResetPasswordController } from '@accounts/controllers/reset-password/reset-password.controller';
import { TokenService } from '@accounts/services/token/token.service';
import { UserController } from '@accounts/controllers/user/user.controller';
import { UserService } from '@accounts/services/user/user.service';
import { Role } from '@common/enums/role.enum';

@Module({
    controllers: [LoginController, ResetPasswordController, UserController],
    exports: [UserService],
    imports: [JwtModule.register({
      secretOrPrivateKey: process.env.JWT_SECRET,
      signOptions: {
        algorithm: `HS512`,
        expiresIn: 7200,
      },
    })],
    providers: [LoginService, TokenService, UserService]
})
export class AccountsModule {
    configure(consumer: MiddlewareConsumer) {
        consumer
          .apply(hasJWT())
          .exclude(
            { path: 'accounts/user', method: RequestMethod.POST }
          )
          .forRoutes(UserController)
          .apply(hasJWT(Role.ADMIN))
          .forRoutes('/accounts/user/search');
      }
}
