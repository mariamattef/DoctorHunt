import 'package:doctor_hunt/core/Networking/api_error_handller.dart';
import 'package:doctor_hunt/core/Networking/api_result.dart';
import 'package:doctor_hunt/features/home/data/api/home_api_service.dart';
import 'package:doctor_hunt/features/home/data/models/all_doctors_response_model.dart';
import 'package:doctor_hunt/features/home/data/models/specialization_response_model.dart';

class HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService);
  Future<ApiResult<SpecializationsResponseModel>> getSpecialization() async {
    try {
      final response = await _homeApiService.getSpecialization();
      return ApiResult.success(response);
    } catch (errorHandler) {
      return ApiResult.failure(ErrorHandler.handle(errorHandler));
    }
  }

  Future<ApiResult<AllDoctorsResponseModel>> getAllDoctors() async {
    try {
      final response = await _homeApiService.getAllDoctors();
      return ApiResult.success(response);
    } catch (errorHandler) {
      return ApiResult.failure(ErrorHandler.handle(errorHandler));
    }
  }
}
