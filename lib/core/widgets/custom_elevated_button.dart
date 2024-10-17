import '../Constants/color_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  void Function() onPressed;
  Color? backgroundColor;
  Color? foregroundColor;
  Widget? child;
  String? text;
  double? horizontal;
  double? width;
  double? height;
  Color? color;

  CustomElevatedButton(
      {required this.onPressed,
      this.backgroundColor,
      this.width,
      this.foregroundColor,
      this.child,
      this.text,
      this.horizontal,
      this.color,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: 10.h, horizontal: horizontal ?? 20.w),
      child: SizedBox(
        width: width,
        height: 54.h,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 5,
              shadowColor: Colors.black.withOpacity(0.5),
              fixedSize: Size(width ?? double.infinity, height ?? 52.h),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  style: BorderStyle.none,
                ),
                borderRadius: BorderRadius.circular(12.0.r),
              ),
              backgroundColor: color ?? ColorUtility.main,
              foregroundColor: foregroundColor ?? Colors.white,
              surfaceTintColor: Colors.white),
          onPressed: onPressed,
          child: text != null
              ? Text(
                  text!,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                  ),
                )
              : child,
        ),
      ),
    );
  }
}
