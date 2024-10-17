import '../../../../../core/Constants/app_colors.dart';
import '../../../../../core/Constants/app_syyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIntroSignUp extends StatelessWidget {
  const CustomIntroSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50.h),
        Text('Join us to start searching', style: AppStyles.textStyle24),
        Padding(
          padding: EdgeInsets.all(20.0.r),
          child: Text(
              'you can search c course , apply course and find scholarship for abroad studies',
              textAlign: TextAlign.center,
              style:
                  AppStyles.textStyle14.copyWith(color: AppColors.textColor)),
        ),
        SizedBox(height: 52.h),
      ],
    );
  }
}
