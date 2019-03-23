import { Injectable } from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';

import { JwtPayload } from '@accounts/interfaces/jwt-payload';

@Injectable()
export class TokenService {
    constructor(
        private readonly jwtService: JwtService
      ) {}

      async getToken(user_id: number, permissions: string): Promise<string> {
        const userToken: JwtPayload = { sub: user_id, scope: permissions };
        return this.jwtService.sign(userToken);
      }
}
