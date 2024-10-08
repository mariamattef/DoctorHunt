import 'package:doctor_hunt/doctorHunt_app.dart';
import 'package:doctor_hunt/route_helper.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(DoctorHuntApp(
    appRouter: AppRouter(),
  ));
}
