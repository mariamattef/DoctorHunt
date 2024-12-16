import 'package:doctor_hunt/core/Networking/api_error_handller.dart';
import 'package:doctor_hunt/features/home/data/models/all_doctors_response_model.dart';
import 'package:doctor_hunt/features/home/data/models/specialization_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  //specialization
  const factory HomeState.specializationLoading() = SpecializationLoading;
  const factory HomeState.specializationSucess(
          SpecializationsResponseModel specializationsResponseModel) =
      SpecializationSucess;
  const factory HomeState.specializationerror(ErrorHandler errorHandler) =
      SpecializationError;
  //All Doctors
  const factory HomeState.allDoctorsLoading() = AllDoctorsLoading;
  const factory HomeState.allDoctorsSuccess(
      AllDoctorsResponseModel allDoctorsResponseModel) = AllDoctorsSuccess;

  const factory HomeState.allDoctorserror(ErrorHandler errorHandler) =
      AllDoctorsError;
}
