import 'package:doctor_hunt/core/Constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomTextButton extends StatelessWidget {
  final String label;
  final Color? color;
  void Function()? onPressed;
  CustomTextButton(
      {required this.label,
      this.color = AppColors.primaryColor,
      required this.onPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: InkWell(
          onTap: onPressed,
          child: Text(
            textAlign: TextAlign.center,
            label,
            style: TextStyle(
                color: AppColors.grayLight,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400),
          )),
    );
  }
}
