import 'package:flutter/material.dart';

class AppColors {
  AppColors._();
  static final AppColors _instance = AppColors._();
  factory AppColors() => _instance;
  static const Color primaryColor = Color(0xff0EBE7F);
  static const Color grayLight = Color(0xffD1D1D6);
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color textColor = Color(0xff677294);
  static Color primaryColorWithOpacity =
      const Color(0xff677294).withOpacity(0.16);
}
