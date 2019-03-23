export interface PasswordChangeCredentials {
    route_id: string;
    user: {
      email: string;
      password: string;
      confirm_password: string;
    };
  }
