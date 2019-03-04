import { Injectable } from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';

import { JwtPayload } from '@accounts/interfaces/jwt-payload';

@Injectable()
export class TokenService {
    constructor(
        private readonly jwtService: JwtService
      ) {}

      async getToken(userID: number, permissions: string): Promise<string> {
        const userToken: JwtPayload = { sub: userID, scope: permissions };
        return this.jwtService.sign(userToken);
      }
}
