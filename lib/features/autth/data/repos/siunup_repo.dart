import 'package:doctor_hunt/core/Networking/api_error_handller.dart';
import 'package:doctor_hunt/core/Networking/api_result.dart';
import 'package:doctor_hunt/core/Networking/api_service.dart';
import 'package:doctor_hunt/features/autth/data/models/signup_request_body.dart';
import 'package:doctor_hunt/features/autth/data/models/signup_response.dart';

class SignupRepo {
  ApiService apiService;
  SignupRepo(
    this.apiService,
  );
  Future<ApiResult<SignupResponse>> signup(
      SignUpRequestBody signupRequestBody) async {
    try {
      final response = await apiService.signup(signupRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
