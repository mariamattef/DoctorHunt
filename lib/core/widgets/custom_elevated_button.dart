import '../Helpers/experts_helper/general_helper.dart';

class CustomElevatedButton extends StatelessWidget {
  final void Function() onPressed;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final Widget? child;
  final String? text;
  final double? horizontal;
  final double? width;
  final double? height;
  final Color? color;
  final BorderRadius? borderRadius;

  const CustomElevatedButton(
      {required this.onPressed,
      this.backgroundColor,
      this.width,
      this.height,
      this.borderRadius,
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
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              elevation: 5,
              shadowColor: Colors.black.withOpacity(0.5),
              fixedSize: Size(width ?? double.infinity, height ?? 52.h),
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  style: BorderStyle.none,
                ),
                borderRadius: borderRadius ?? BorderRadius.circular(12.0.r),
              ),
              backgroundColor: color ?? AppColors.primaryColor,
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
