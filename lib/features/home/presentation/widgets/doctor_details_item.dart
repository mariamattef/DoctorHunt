import '../../../../core/Helpers/experts_helper/general_helper.dart';

class DoctorDetailsItemList extends StatelessWidget {
  //! TODO: Refactor this more

  DoctorDetailsItemList({super.key});
  //! TODO: Make this list in a file alone
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
            padding:  EdgeInsets.only(left: 20.w),
            child: Container(
              height: MediaQuery.of(context).size.height * .20,
              width: MediaQuery.of(context).size.width * .5,
              decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius:  BorderRadius.all(Radius.circular(12.r)),
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
