import 'package:doctor_hunt/core/DI/dependency_injection.dart';
import 'doctorHunt_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupDependencyInjection();
  await ScreenUtil.ensureScreenSize();

  runApp(
    const DoctorHuntApp(),
  );
}
//flutter build apk --flavor production -t lib/main_production.dart
// flutter run --flavor production -t lib/main_production.dart
