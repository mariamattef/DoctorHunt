import 'package:doctor_hunt/features/presentation/pages/on_boarding_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  static const String id = 'SplashPage';
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash Page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, OnBoardingPage.id);
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
