import 'package:doctor_hunt/features/core/color_utility.dart';
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  void Function() onPressed;
  Color? backgroundColor;
  Color? foregroundColor;
  Widget? child;
  String? text;
  double? width;
  double? horizontal;
  CustomElevatedButton(
      {required this.onPressed,
      this.backgroundColor,
      this.width,
      this.foregroundColor,
      this.child,
      this.text,
      this.horizontal,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: horizontal ?? 20),
      child: SizedBox(
        width: width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              fixedSize: Size(double.infinity, 52),
              shape: RoundedRectangleBorder(
                side: const BorderSide(color: ColorUtility.grayLight),
                borderRadius: BorderRadius.circular(12.0),
              ),
              backgroundColor: ColorUtility.main,
              foregroundColor: foregroundColor ?? Colors.white,
              surfaceTintColor: Colors.white),
          onPressed: onPressed,
          child: text != null
              ? Text(
                  text!,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                )
              : child,
        ),
      ),
    );
  }
}
