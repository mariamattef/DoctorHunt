import 'package:dio/dio.dart';
import 'package:doctor_hunt/core/Constants/shared_prefs_keys.dart';
import 'package:doctor_hunt/core/Helpers/shared_pref_helper.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();
  static Dio? dio;
  static Dio getData() {
    Duration timeOut = const Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioHeaders();
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioHeaders() async {
    dio?.options.headers = {
      'Accept': 'application/json',
      'Authorization':
          'Bearer ${await SharedPrefHelper.getString(SharedPrefsKeys.userToken)}',
    };
  }

  // static void addDioInterceptors() {
  // dio?.interceptors.add(
  //   InterceptorsWrapper(
  //     onRequest: (options, handler) {
  //       options.headers['Content-Type'] =
  //           'application/json'; // Explicitly set content type
  //       return handler.next(options); // Continue
  //     },
  //   ),
  // );

  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}
