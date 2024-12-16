import 'package:dio/dio.dart';
import 'package:doctor_hunt/core/Networking/api_service.dart';
import 'package:doctor_hunt/features/auth/data/repos/login_repo.dart';
import 'package:doctor_hunt/features/auth/data/repos/siunup_repo.dart';
import 'package:doctor_hunt/features/auth/logic/cubits/login_cubit/login_cubit.dart';
import 'package:doctor_hunt/features/auth/logic/cubits/signup_cubit/signup_cubit.dart';
import 'package:doctor_hunt/features/home/data/api/home_api_service.dart';
import 'package:doctor_hunt/features/home/data/repositories/home_repo.dart';
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
  // home
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
}
