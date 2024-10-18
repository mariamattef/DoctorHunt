import '../../../../../core/Constants/app_syyles.dart';
import '../../../../../core/Constants/color_utility.dart';
import '../../../../../core/Constants/app_assets.dart';
import '../../../../../core/Constants/spacing.dart';
import '../../../../../core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class GoogleFacebookButton extends StatelessWidget {
  const GoogleFacebookButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: CustomElevatedButton(
              color: Colors.white,
              onPressed: () {},
              horizontal: 0.w,
              foregroundColor: ColorUtility.grayText,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SvgPicture.asset(
                    AppAssets.assetgoogle,
                    height: 20.h,
                    width: 20.w,
                  ),
                  // horizontalSpace(10.w),
                  Text(
                    'Google',
                    style: AppStyles.textStyle16,
                  ),
                ],
              )

              // width: 160,
              ),
        ),
        horizontalSpace(10.w),
        Expanded(
          child: CustomElevatedButton(
              color: Colors.white,
              horizontal: 0.w,
              onPressed: () {},
              foregroundColor: ColorUtility.grayText,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SvgPicture.asset(
                    AppAssets.assetfacebook,
                    height: 20.h, // Adjust as needed
                    width: 20.w,
                  ),
                  // horizontalSpace(10.w),
                  Text(
                    'Facebook',
                    style: AppStyles.textStyle16,
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
