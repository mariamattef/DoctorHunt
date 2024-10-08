import 'package:doctor_hunt/features/presentation/pages/on_boarding_page.dart';
import 'package:doctor_hunt/route_helper.dart';
import 'package:flutter/material.dart';

class DoctorHuntApp extends StatelessWidget {
  final AppRouter appRouter;
  const DoctorHuntApp({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doctor Hunt',
      theme: ThemeData(
        useMaterial3: true,
      ),
      onGenerateRoute: appRouter.generateRoute,
      initialRoute: OnBoardingPage.id,
    );
  }
}
