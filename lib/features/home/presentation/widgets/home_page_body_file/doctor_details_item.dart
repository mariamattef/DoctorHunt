import 'package:doctor_hunt/core/Helpers/experts_helper/general_helper.dart';
import 'package:doctor_hunt/features/home/data/models/all_doctors_response_model.dart';
import 'package:doctor_hunt/features/home/data/models/specialization_response_model.dart';

class DoctorDetailsItem extends StatelessWidget {
  final DoctorsModel? doctorsModelList;
  @override
  const DoctorDetailsItem({
    super.key,
    required this.doctorsModelList,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w),
      child: Container(
        height: MediaQuery.of(context).size.height * .20,
        width: MediaQuery.of(context).size.width * .5,
        decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.all(Radius.circular(12.r)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 8,
                offset: const Offset(0, 5),
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
                      // 'assets/images/Rectangle1.png',
                      doctorsModelList?.photo ?? 'images',
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
                    doctorsModelList?.name ?? 'Name',
                    style: AppStyles.textStyle18,
                  ),
                  Text(
                    '${doctorsModelList?.degree ?? 'degree'} Specialist',
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
  }
}
