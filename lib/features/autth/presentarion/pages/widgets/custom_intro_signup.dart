// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/Constants/app_colors.dart';
import '../../../../../core/Constants/app_syyles.dart';

class CustomIntroSignUp extends StatelessWidget {
  final String title;
  final String description;
  const CustomIntroSignUp({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50.h),
        Text(title, style: AppStyles.textStyle24.copyWith(color: Colors.black)),
        Padding(
          padding: EdgeInsets.all(20.0.r),
          child: Text(description,
              textAlign: TextAlign.center,
              style:
                  AppStyles.textStyle14.copyWith(color: AppColors.textColor)),
        ),
        SizedBox(height: 52.h),
      ],
    );
  }
}
