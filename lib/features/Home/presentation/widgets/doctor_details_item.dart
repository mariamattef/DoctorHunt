import 'package:doctor_hunt/core/Constants/app_colors.dart';
import 'package:doctor_hunt/core/Constants/app_syyles.dart';
import 'package:doctor_hunt/core/Constants/spacing.dart';
import 'package:doctor_hunt/core/Helpers/experts_helper/general_helper.dart';
import 'package:flutter/material.dart';

class DoctorDetailsItemList extends StatelessWidget {
  DoctorDetailsItemList({super.key});
  final List<String>? images = [
    'assets/images/Rectangle1.png',
    'assets/images/Rectangle2.png',
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
              height: MediaQuery.of(context).size.height * .20,
              width: MediaQuery.of(context).size.width * .5,
              decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black
                          .withOpacity(0.1), // Shadow color with opacity
                      spreadRadius: 2, // How much the shadow should spread
                      blurRadius: 8, // How blurry the shadow should be
                      offset:
                          const Offset(0, 5), // Offset for the shadow (x, y)
                    )
                  ]),
              child: Column(
                children: [
                  SizedBox(
                      height: 183.h,
                      width: double.infinity,
                      child: Column(
                        children: [
                          verticalSpace(3),
                          Image.asset(
                            images![index],
                            height: 180.h,
                            width: double.infinity,
                            // fit: BoxFit.cover,
                          ),
                        ],
                      )),
                  // verticalSpace(14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Dr. Fillerup Grab',
                          style: AppStyles.textStyle18,
                        ),
                        Text(
                          'Medicine Specialist',
                          style: AppStyles.textStyle12
                              .copyWith(color: AppColors.textColor),
                        ),
                        verticalSpace(6),
                        Row(
                          mainAxisAlignment: MainAxisAlignment
                              .center, // Centers the stars in the row
                          children: List.generate(
                              6,
                              (index) => Icon(
                                    Icons.star, // The star icon
                                    color: index == 5
                                        ? AppColors.grayExtraLightColor
                                        : AppColors
                                            .colorYellow, // Different color for the last star
                                    size: 24.0, // Set the size of the stars
                                  )),
                        ),
                        verticalSpace(6),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}