import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  static const String id = 'SplashPage';
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            // Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        elevation: 0,
        title: const Text('OnBoarding Page'),
      ),
    );
  }
}
