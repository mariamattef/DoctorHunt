import 'package:dio/dio.dart';
import 'package:doctor_hunt/core/Networking/api_constants.dart';
import 'package:doctor_hunt/features/autth/data/models/login_request_body.dart';
import 'package:doctor_hunt/features/autth/data/models/login_response.dart';
import 'package:doctor_hunt/features/autth/data/models/signup_request_body.dart';
import 'package:doctor_hunt/features/autth/data/models/signup_response.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstants.signup)
  Future<SignupResponse> signup(
    @Body() SignUpRequestBody signupRequestBody,
  );
}
