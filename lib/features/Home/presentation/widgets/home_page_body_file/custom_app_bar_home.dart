import '../../../../../core/Helpers/experts_helper/general_helper.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBarHome extends StatelessWidget {
  const CustomAppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.r),
                  bottomRight: Radius.circular(20.r))),
          child: Padding(
            padding: EdgeInsets.only(
                left: 19.w, right: 10.w, top: 47.h, bottom: 57.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi Handwerker!',
                          style: AppStyles.textStyle20
                              .copyWith(color: AppColors.whiteColor),
                        ),
                        verticalSpace(6),
                        Text(
                          'Find Your Doctor',
                          style: AppStyles.textStyle25
                              .copyWith(color: AppColors.whiteColor),
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                        'assets/images/personal.png',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: -32,
          right: 20,
          width: MediaQuery.of(context).size.width * 0.9,
          child: SizedBox(
            height: 65,
            child: AppTextFormField(
              radius: 6,
              hintText: 'Search.....',
              hintStyle:
                  AppStyles.textStyle15.copyWith(color: AppColors.textColor),
              prefixIcon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 18,
                color: AppColors.textColor,
              ),
              suffixIcon: const Icon(
                FontAwesomeIcons.xmark,
                size: 18,
                color: AppColors.textColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
