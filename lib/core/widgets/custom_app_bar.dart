import 'package:doctor_hunt/core/Helpers/experts_helper/general_helper.dart';

class CustomAppBAr extends StatelessWidget {
  final String title;
  const CustomAppBAr({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(30),
        Row(children: [
          Container(
            alignment: Alignment.centerRight,
            decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.all(Radius.circular(10.r))),
            height: 30.h,
            width: 30.w,
            child: const Icon(
              Icons.arrow_back_ios,
              size: 22,
              color: AppColors.textColor,
            ),
          ),
          horizontalSpace(19),
          Text(title,
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w500)),
        ]),
      ],
    );
  }
}
