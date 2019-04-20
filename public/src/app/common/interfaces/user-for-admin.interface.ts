import { UserRole } from '@common/interfaces/user-role.interface';

export interface UserForAdmin {
    id: number;
    email: string;
    first_name: string;
    last_name: string;
    name: string;
    roles: UserRole[];
    strikes: number;
    last_login?: Date;
}
