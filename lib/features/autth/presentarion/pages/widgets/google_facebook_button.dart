import 'package:doctor_hunt/core/Constants/color_utility.dart';
import 'package:doctor_hunt/core/Constants/app_assets.dart';
import 'package:doctor_hunt/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GoogleFacebookButton extends StatelessWidget {
  const GoogleFacebookButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomElevatedButton(
          color: Colors.white,
          onPressed: () {},
          text: 'Google',
          horizontal: 5,
          foregroundColor: ColorUtility.grayText,
          child: SvgPicture.asset(
            AppAssets.assetgoogle,
            height: 24, // Adjust as needed
            width: 24,
          ),
          // width: 160,
        ),
        CustomElevatedButton(
            color: Colors.white,
            horizontal: 5,
            onPressed: () {},
            text: 'Facebook',
            foregroundColor: ColorUtility.grayText,
            child: SvgPicture.asset(
              AppAssets.assetfacebook,
              height: 24, // Adjust as needed
              width: 24,
              // colorFilter: ColorFilter.mode(Colors.red, BlendMode.srcIn),
            )),
      ],
    );
  }
}
