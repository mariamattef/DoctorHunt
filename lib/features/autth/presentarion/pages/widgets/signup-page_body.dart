import 'package:doctor_hunt/core/Constants/spacing.dart';
import 'package:doctor_hunt/features/autth/presentarion/pages/widgets/form_signup_widget.dart';

import '../../../../../core/Constants/app_colors.dart';
import '../../../../../core/Constants/app_syyles.dart';

import 'custom_intro_signup.dart';
import 'footer_signup_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpPageBody extends StatelessWidget {
  const SignUpPageBody({super.key});
  final bool isAgree = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20.0.r),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomIntroSignUp(),
            const FormSignupWidget(),
            verticalSpace(15),
            Row(
              children: [
                Radio(
                    fillColor:
                        const WidgetStatePropertyAll(AppColors.textColor),
                    activeColor: AppColors.textColor,
                    focusColor: AppColors.textColor,
                    value: true,
                    groupValue: isAgree,
                    onChanged: (value) {
                      // setState(() {
                      //   isAgree = value;
                      // });
                    }),
                Expanded(
                  child: Text(
                    'I agree with the Terms of Service & Privacy Policy',
                    style: AppStyles.textStyle12.copyWith(
                      color: AppColors.textColor,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
            verticalSpace(54),
            const FooterSignUpWidget(),
          ],
        ),
      ),
    );
  }
}
