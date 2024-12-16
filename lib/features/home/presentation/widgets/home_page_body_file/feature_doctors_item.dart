import 'package:doctor_hunt/core/Helpers/experts_helper/general_helper.dart';

class FeaturedDoctorItem extends StatelessWidget {
  List<String>? images = [
    'assets/images/image_feat1.png',
    'assets/images/image_feat2.png',
    'assets/images/image_feat3.png',
  ];
  FeaturedDoctorItem({
    super.key,
    this.images,
  });
  final int index = 0;

  @override
  Widget build(BuildContext context) {
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
                color:
                    Colors.black.withOpacity(0.1), // Shadow color with opacity
                spreadRadius: 2, // How much the shadow should spread
                blurRadius: 8, // How blurry the shadow should be
                offset: const Offset(0, 5), // Offset for the shadow (x, y)
              )
            ]),
        child: Column(
          children: [
            verticalSpace(10),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              const Icon(
                Icons.favorite_rounded,
                color: AppColors.textColor,
                size: 18,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: AppColors.colorYellow,
                    size: 18.r,
                  ),
                  horizontalSpace(6),
                  const Text(
                    '3.7',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
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
  }
}
