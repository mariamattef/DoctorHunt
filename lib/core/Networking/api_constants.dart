class ApiConstants {
  static const String baseUrl = 'https://vcare.integration25.com/api/';
  static const String signup = '${baseUrl}auth/register';
  static const String login = '${baseUrl}auth/login';
}

class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
}

// // token ='eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL3JlZ2lzdGVyIiwiaWF0IjoxNzMxMDk5OTU1LCJleHAiOjE3MzExODYzNTUsIm5iZiI6MTczMTA5OTk1NSwianRpIjoiSUhSaXVJRUhidEZnQ1llMyIsInN1YiI6IjI2ODQiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.ICiCAOZ9Mt6xDUO-i4VLRKyvRXwasYQvnYaIy4ViMUA';
// // password='bmb2123';
// // email = 'moka@gmail.com';