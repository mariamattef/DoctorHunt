import 'package:dio/dio.dart';
import 'package:doctor_hunt/core/Networking/api_service.dart';
import 'package:doctor_hunt/features/autth/data/repos/login_repo.dart';
import 'package:doctor_hunt/features/autth/data/repos/siunup_repo.dart';
import 'package:doctor_hunt/features/autth/logic/cubits/login_cubit/login_cubit.dart';
import 'package:doctor_hunt/features/autth/logic/cubits/signup_cubit/signup_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupDependencyInjection() {
  // Dio && ApiService
  Dio dio = Dio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  // LoginRepo &&  LoginCubit
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}
