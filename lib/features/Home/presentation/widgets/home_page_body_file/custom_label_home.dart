import '../../../../../core/Helpers/experts_helper/general_helper.dart';

class CustomLabelHome extends StatelessWidget {
  final String text;
  const CustomLabelHome({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            //! TODO: Use App Strings And Style files
            text,
            style: AppStyles.textStyle18.copyWith(fontWeight: FontWeight.w500),
          ),
          Row(
            children: [
              Text('See all',
                  style: AppStyles.textStyle12.copyWith(
                      fontWeight: FontWeight.w300, color: AppColors.textColor)),
              const Icon(
                Icons.arrow_forward_ios,
                color: AppColors.textColor,
                size: 15,
              )
            ],
          )
        ],
      ),
    );
  }
}
