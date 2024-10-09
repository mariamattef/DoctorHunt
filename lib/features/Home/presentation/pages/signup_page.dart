import 'package:doctor_hunt/core/Constants/color_utility.dart';
import 'package:doctor_hunt/features/Home/presentation/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  static const String id = "SignUpPage";
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              const Text(
                'Join us to start searching',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  'you can search c course , apply course and find scholarship for abroad studies',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: ColorUtility.grayText),
                ),
              ),
              const SizedBox(height: 52),
              Form(
                  child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomElevatedButton(
                        color: Colors.white,
                        onPressed: () {},
                        // width: 160,
                        child: Icon(Icons.abc),
                        text: 'Google',
                        horizontal: 5,
                        foregroundColor: ColorUtility.grayText,
                      ),
                      CustomElevatedButton(
                        color: Colors.white,
                        horizontal: 5,
                        onPressed: () {},
                        // width: 160,
                        child: Icon(Icons.abc),
                        text: 'Facebook',
                        foregroundColor: ColorUtility.grayText,
                      ),
                    ],
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
