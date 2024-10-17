import '../../../../../core/Constants/app_colors.dart';
import '../../../../../core/Constants/app_syyles.dart';
import '../../../../../core/Constants/spacing.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class FooterSignUpWidget extends StatelessWidget {
  const FooterSignUpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomElevatedButton(
            backgroundColor: AppColors.primaryColor,
            width: double.infinity,
            onPressed: () {},
            text: 'Sign Up'),
        verticalSpace(17),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Have an account?',
              style: AppStyles.textStyle14.copyWith(
                color: AppColors.primaryColor,
              ),
            ),
            InkWell(
                onTap: () {},
                child: Text(
                  'Sign In',
                  style: AppStyles.textStyle14.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ))
          ],
        ),
      ],
    );
  }
}
