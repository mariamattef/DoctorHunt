import 'core/Routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

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
          theme: ThemeData.light().copyWith(
            textTheme: GoogleFonts.rubikTextTheme(ThemeData.light().textTheme),
          ),
        );
      },
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
    );
  }
}
