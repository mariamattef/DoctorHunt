import '../../../../../core/Constants/app_colors.dart';
import '../../../../../core/Constants/app_syyles.dart';
import 'package:flutter/material.dart';

class CustomLabelHome extends StatelessWidget {
  final String text;
  const CustomLabelHome({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: AppStyles.textStyle18.copyWith(fontWeight: FontWeight.w500),
          ),
          Row(
            children: [
              Text('See all',
                  style: AppStyles.textStyle12.copyWith(
                      fontWeight: FontWeight.w300, color: AppColors.textColor)),
              Icon(
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
