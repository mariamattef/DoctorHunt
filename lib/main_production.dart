import 'package:doctor_hunt/core/Constants/shared_prefs_keys.dart';
import 'package:doctor_hunt/core/DI/dependency_injection.dart';
import 'package:doctor_hunt/core/Helpers/extentions.dart';
import 'package:doctor_hunt/core/Helpers/shared_pref_helper.dart';
import 'doctorHunt_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupDependencyInjection();
  await ScreenUtil.ensureScreenSize();
  await checkedIfUserLoggedIn();

  runApp(
    const DoctorHuntApp(),
  );
}

checkedIfUserLoggedIn() async {
  String userToken =
      await SharedPrefHelper.getString(SharedPrefsKeys.userToken);
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
//flutter build apk --flavor production -t lib/main_production.dart
// flutter run --flavor production -t lib/main_production.dart
// 1//037zDSI69nqfGCgYIARAAGAMSNwF-L9Irp9qgtyNoQM2Rs9N4OtJP-QeKVOaGK-X2WdlPYQVg279R64gBdtiTIfz8xVG7z0SwU10
// dart run build_runner build --delete-conflicting-outputs
// bb@gmail.com      //mooooooka@gmail.com
//1241414M           //mooooooka
