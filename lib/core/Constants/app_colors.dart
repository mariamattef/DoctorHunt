import 'package:flutter/material.dart';

class AppColors {
  AppColors._();
  static final AppColors _instance = AppColors._();
  factory AppColors() => _instance;
  static const Color primaryColor = Color(0xFF070431);
  static const Color whiteColor = Color(0xFFFFFFFF);
}
