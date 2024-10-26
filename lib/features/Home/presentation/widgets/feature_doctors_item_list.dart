import 'package:doctor_hunt/core/Constants/app_colors.dart';
import 'package:doctor_hunt/core/Constants/app_syyles.dart';
import 'package:doctor_hunt/core/Constants/spacing.dart';
import 'package:doctor_hunt/core/Helpers/experts_helper/general_helper.dart';
import 'package:doctor_hunt/core/Helpers/experts_helper/general_helper.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FeatureDoctorsItemList extends StatelessWidget {
  FeatureDoctorsItemList({super.key});
  final List<String>? images = [
    'assets/images/image_feat1.png',
    'assets/images/image_feat2.png',
    'assets/images/image_feat3.png',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: images!.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            width: MediaQuery.of(context).size.width * .35,
            height: MediaQuery.of(context).size.height * .23,
            decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: const BorderRadius.all(Radius.circular(6)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black
                        .withOpacity(0.1), // Shadow color with opacity
                    spreadRadius: 2, // How much the shadow should spread
                    blurRadius: 8, // How blurry the shadow should be
                    offset: const Offset(0, 5), // Offset for the shadow (x, y)
                  )
                ]),
            child: Column(
              children: [
                verticalSpace(10),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(
                        FontAwesomeIcons.heart,
                        color: AppColors.textColor,
                        size: 18,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: AppColors.colorYellow,
                            size: 18,
                          ),
                          horizontalSpace(6),
                          const Text(
                            '3.7',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ],
                      )
                    ]),
                verticalSpace(8),
                Image.asset(
                  images![index],
                  width: 70,
                  height: 70,
                ),
                verticalSpace(10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Dr. Crick',
                        style: AppStyles.textStyle12
                            .copyWith(fontWeight: FontWeight.w500),
                      ),
                      verticalSpace(3),
                      Text.rich(
                        const TextSpan(children: [
                          TextSpan(
                            text: '\$',
                            style: TextStyle(color: AppColors.primaryColor),
                          ),
                          TextSpan(
                            text: ' 25.00/ hours',
                            style: TextStyle(color: AppColors.textColor),
                          ),
                        ]),
                        style: TextStyle(
                          fontSize: 9.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      verticalSpace(6),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}