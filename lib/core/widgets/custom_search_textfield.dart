import 'package:doctor_hunt/core/Constants/app_colors.dart';
import 'package:doctor_hunt/core/Constants/app_syyles.dart';
import 'package:doctor_hunt/core/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextfield extends StatelessWidget {
  const CustomSearchTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      radius: 6,
      hintText: 'Search.....',
      hintStyle: AppStyles.textStyle15.copyWith(color: AppColors.textColor),
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
    );
  }
}
