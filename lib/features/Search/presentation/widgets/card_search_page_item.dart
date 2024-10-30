import 'package:doctor_hunt/core/Helpers/experts_helper/general_helper.dart';
import 'package:google_fonts/google_fonts.dart';

class CardSearchPagetItem extends StatelessWidget {
  const CardSearchPagetItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.whiteColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/image_feat2.png',
                  height: 92,
                  width: 87,
                ),
                horizontalSpace(14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dr. Shruti Kedia',
                            style: AppStyles.textStyle18,
                          ),
                          const Icon(
                            Icons.favorite_rounded,
                            // FontAwesomeIcons.heart,
                            color: Colors.red,
                            size: 20,
                          )
                        ],
                      ),
                      Text('Tooths Dentist',
                          style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                              fontFamily: GoogleFonts.ptSans().fontFamily)),
                      Text(
                        '7 Years experience ',
                        style: AppStyles.textStyle12.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.textColor),
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 10.w,
                                width: 10.w,
                                decoration: BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                              ),
                              horizontalSpace(4),
                              Text(
                                ('87%'),
                                style: TextStyle(
                                    fontSize: 11.sp,
                                    color: AppColors.textColor,
                                    fontWeight: FontWeight.w300),
                              )
                            ],
                          ),
                          horizontalSpace(17),
                          Row(
                            children: [
                              Container(
                                height: 10.w,
                                width: 10.w,
                                decoration: BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                              ),
                              horizontalSpace(4),
                              Text(
                                ('69 Patient Stories'),
                                style: TextStyle(
                                    fontSize: 11.sp,
                                    color: AppColors.textColor,
                                    fontWeight: FontWeight.w300),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            verticalSpace(17),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Next Available ',
                      style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.primaryColor),
                    ),
                    verticalSpace(5),
                    Text.rich(
                      const TextSpan(children: [
                        TextSpan(
                          text: '11:00',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: ' AM tomorrow',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ]),
                      style: TextStyle(
                          fontSize: 12.sp, color: AppColors.textColor),
                    ),
                  ],
                ),
                CustomElevatedButton(
                  horizontal: 0,
                  borderRadius: BorderRadius.circular(4.r),
                  height: 40.h,
                  onPressed: () {},
                  width: 120.w,
                  child: Text(
                    'Book Now',
                    style: AppStyles.textStyle12
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
