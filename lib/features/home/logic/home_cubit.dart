import 'package:bloc/bloc.dart';
import 'package:doctor_hunt/features/home/data/models/all_doctors_response_model.dart';
import 'package:doctor_hunt/features/home/data/models/specialization_response_model.dart';

import 'package:doctor_hunt/features/home/data/repositories/home_repo.dart';
import 'package:doctor_hunt/features/home/logic/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(
    this._homeRepo,
  ) : super(HomeState.initial());
  List<SpecializationsData?>? specializationsList = [];
  List<DoctorsModel?>? doctorsList = [];

  void getSpecializations() async {
    emit(HomeState.specializationLoading());

    final response = await _homeRepo.getSpecialization();
    response.when(
      success: (specializationResponseModel) {
        specializationsList =
            specializationResponseModel.specializationDataList ?? [];

        emit(HomeState.specializationSucess(specializationResponseModel));
      },
      failure: (errorHandler) {
        emit(HomeState.specializationerror(errorHandler));
      },
    );
  }

  void getAllDoctors() async {
    emit(HomeState.allDoctorsLoading());

    final response = await _homeRepo.getAllDoctors();
    response.when(
      success: (allDoctorsResponseModel) {
        doctorsList = allDoctorsResponseModel.doctorsList;

        emit(HomeState.allDoctorsSuccess(allDoctorsResponseModel));
      },
      failure: (errorHandler) {
        emit(HomeState.allDoctorserror(errorHandler));
      },
    );
  }
}
