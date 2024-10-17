import 'package:doctor_hunt/core/Constants/app_colors.dart';
import 'package:doctor_hunt/core/Constants/app_syyles.dart';
import 'package:doctor_hunt/core/Constants/spacing.dart';
import 'package:doctor_hunt/core/widgets/text_form_field.dart';
import 'package:doctor_hunt/features/autth/presentarion/pages/widgets/google_facebook_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormSignupWidget extends StatelessWidget {
  const FormSignupWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        const GoogleFacebookButton(),
        verticalSpace(34.h),
        AppTextFormField(
          radius: 12,
          hintText: 'Name',
          hintStyle: AppStyles.textStyle16.copyWith(
            color: AppColors.textColor,
          ),
          keyboardType: TextInputType.text,
        ),
        verticalSpace(10.h),
        AppTextFormField(
          keyboardType: TextInputType.emailAddress,
          radius: 12,
          hintText: 'Email',
          hintStyle: AppStyles.textStyle16.copyWith(
            color: AppColors.textColor,
          ),
        ),
        verticalSpace(10.h),
        AppTextFormField(
          radius: 12,
          hintText: 'Password',
          hintStyle: AppStyles.textStyle16.copyWith(
            color: AppColors.textColor,
          ),
          keyboardType: TextInputType.visiblePassword,
          isObscureText: true,
          suffixIcon: const Icon(
            Icons.visibility_off,
            size: 25,
          ),
        ),
      ],
    ));
  }
}
