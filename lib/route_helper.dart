// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:doctor_hunt/features/presentation/pages/home_page.dart';
import 'package:doctor_hunt/features/presentation/pages/login_page.dart';
import 'package:doctor_hunt/features/presentation/pages/on_boarding_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final String routeName = settings.name ?? '';
    final dynamic data = settings.arguments;
    switch (routeName) {
      case HomePage.id:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
      case OnBoardingPage.id:
        return MaterialPageRoute(
          builder: (context) => OnBoardingPage(),
        );
      case LoginPage.id:
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const Center(
            child: Text('DefaultPage'),
          ),
        );
    }
  }
}
