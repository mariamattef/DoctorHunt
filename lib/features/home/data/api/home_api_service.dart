import 'package:dio/dio.dart';
import 'package:doctor_hunt/core/Networking/api_constants.dart';
import 'package:doctor_hunt/features/home/data/api/home_api_constaants.dart';
import 'package:doctor_hunt/features/home/data/models/all_doctors_response_model.dart';
import 'package:doctor_hunt/features/home/data/models/specialization_response_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;
// get Specialization
  @GET(HomeApiConstants.specializationEP)
  Future<SpecializationsResponseModel> getSpecialization();
  //get All Doctors
  @GET(HomeApiConstants.allDoctors)
  Future<AllDoctorsResponseModel> getAllDoctors();
}
