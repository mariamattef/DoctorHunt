import 'package:doctor_hunt/core/Constants/color_utility.dart';
import 'package:doctor_hunt/core/widgets/custom%20_text_button.dart';
import 'package:doctor_hunt/core/widgets/custom_elevated_button.dart';
import 'package:doctor_hunt/features/autth/presentarion/pages/widgets/google_facebook_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPageBody extends StatelessWidget {
  const SignUpPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            Text(
              'Join us to start searching',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
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
            SizedBox(height: 52),
            Form(
                child: Column(
              children: [
                GoogleFacebookButton(),
                // CustomTextButton(label: , onPressed: () {  },)
              ],
            ))
          ],
        ),
      ),
    );
  }
}
