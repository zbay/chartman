import { UserRole } from '@accounts/interfaces/user-role.interface';

export interface UserForAdmin {
    id: number;
    email: string;
    name: string;
    roles: UserRole[];
    last_login: Date;
    strikes?: number;
}
