import 'package:flutter_svg/svg.dart';
import 'package:doctor_hunt/core/Helpers/experts_helper/general_helper.dart';

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
              foregroundColor: AppColors.grayLight,
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
              foregroundColor: AppColors.grayLight,
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
