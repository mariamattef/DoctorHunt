import 'package:doctor_hunt/core/Networking/api_error_handller.dart';
import 'package:doctor_hunt/core/Networking/api_result.dart';
import 'package:doctor_hunt/core/Networking/api_service.dart';
import 'package:doctor_hunt/features/auth/data/models/login_request_body.dart';
import 'package:doctor_hunt/features/auth/data/models/login_response.dart';

class LoginRepo {
  ApiService apiService;
  LoginRepo(
    this.apiService,
  );
  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
