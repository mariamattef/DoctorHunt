import '../Constants/color_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextButton extends StatelessWidget {
  final String label;
  final Color? color;
  void Function()? onPressed;
  CustomTextButton(
      {required this.label,
      this.color = ColorUtility.main,
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
                color: ColorUtility.grayText,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400),
          )),
    );
  }
}
