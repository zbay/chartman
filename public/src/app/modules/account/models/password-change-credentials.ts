export interface PasswordChangeCredentials {
    routeID: string;
    user: {
      email: string;
      password: string;
      confirmPassword: string;
    };
  }
