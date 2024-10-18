import 'package:doctor_hunt/core/Constants/spacing.dart';
import 'package:doctor_hunt/core/Routing/app_router.dart';
import 'package:doctor_hunt/core/widgets/custom_elevated_button.dart';
import 'package:doctor_hunt/features/autth/presentarion/pages/widgets/form_signup_widget.dart';
import 'package:doctor_hunt/features/autth/presentarion/pages/widgets/google_facebook_button.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/Constants/app_colors.dart';
import '../../../../../core/Constants/app_syyles.dart';
import 'custom_intro_signup.dart';
import 'sure_login_password_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpPageBody extends StatefulWidget {
  const SignUpPageBody({super.key});

  @override
  State<SignUpPageBody> createState() => _SignUpPageBodyState();
}

class _SignUpPageBodyState extends State<SignUpPageBody> {
  GlobalKey<FormState> formKey = GlobalKey();

  final bool isAgree = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20.0.r),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomIntroSignUp(
              title: 'Join us to start searching',
              description:
                  'you can search c course , apply course and find scholarship for abroad studies',
            ),
            const GoogleFacebookButton(),
            verticalSpace(28.h),
            FormSignupWidget(
              formKey: formKey,
            ),
            verticalSpace(15.h),
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
            CustomElevatedButton(
                backgroundColor: AppColors.primaryColor,
                width: double.infinity,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                    GoRouter.of(context).go(AppRouter.kLoginPage);
                  }
                },
                text: 'Sign up'),
            SureLoginAndPassword(
              underSignUpButton1: 'Have an account?',
              underSignUpButton2: 'Log In',
              onTap: () {
                GoRouter.of(context).go(AppRouter.kLoginPage);
              },
            ),
          ],
        ),
      ),
    );
  }
}
