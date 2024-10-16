import 'package:doctor_hunt/features/on_boarding/oresentations/pages/on_boarding_page.dart';
import 'package:doctor_hunt/route_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorHuntApp extends StatelessWidget {
  // final AppRouter appRouter;
  const DoctorHuntApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (_, child) {
        return MaterialApp.router(
          routerConfig: AppRouter().router,
          debugShowCheckedModeBanner: false,
          title: 'Doctor Hunt',
          theme: ThemeData(
            useMaterial3: true,
          ),
        );
      },
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
    );
  }
}
