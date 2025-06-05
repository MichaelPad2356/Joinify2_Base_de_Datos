export interface LoginResponse {
    success: boolean;
    userId: string;  // Usa el tipo que corresponde, 'string' o 'number'
    message?: string;
  }
  