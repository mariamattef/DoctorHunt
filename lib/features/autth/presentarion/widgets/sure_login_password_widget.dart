import '../../../../../core/Constants/app_colors.dart';
import '../../../../../core/Constants/app_syyles.dart';
import 'package:flutter/material.dart';

class SureLoginAndPassword extends StatelessWidget {
  final String? underSignUpButton1;
  final String? underSignUpButton2;
  final void Function()? onTap;
  const SureLoginAndPassword(
      {this.underSignUpButton1,
      this.underSignUpButton2,
      this.onTap,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          underSignUpButton1!,
          style: AppStyles.textStyle14.copyWith(
            color: AppColors.primaryColor,
          ),
        ),
        InkWell(
            onTap: onTap,
            child: Text(
              underSignUpButton2 ?? '',
              style: AppStyles.textStyle14.copyWith(
                color: AppColors.primaryColor,
              ),
            ))
      ],
    );
  }
}
