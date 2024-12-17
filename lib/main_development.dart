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
