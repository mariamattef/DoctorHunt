import 'package:doctor_hunt/core/Constants/app_colors.dart';
import 'package:doctor_hunt/core/Constants/app_syyles.dart';
import 'package:doctor_hunt/core/Constants/spacing.dart';
import 'package:doctor_hunt/core/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FormSignupWidget extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  const FormSignupWidget({required this.formKey, super.key});

  @override
  State<FormSignupWidget> createState() => _FormSignupWidgetState();
}

class _FormSignupWidgetState extends State<FormSignupWidget> {
  // final formKey = GlobalKey();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var obscure = true;
  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) {
    return Form(
        key: widget.formKey,
        child: Column(
          children: [
            AppTextFormField(
              radius: 12,
              hintText: 'Name',
              hintStyle: AppStyles.textStyle16.copyWith(
                color: AppColors.textColor,
              ),
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.text,
              controller: nameController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter Your Name';
                }
                return null;
              },
            ),
            verticalSpace(10.h),
            AppTextFormField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              radius: 12,
              hintText: 'Email',
              controller: emailController,
              hintStyle: AppStyles.textStyle16.copyWith(
                color: AppColors.textColor,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter Your Email';
                }
                return null;
              },
            ),
            verticalSpace(10.h),
            AppTextFormField(
              radius: 12,
              hintText: 'Password',
              hintStyle: AppStyles.textStyle16.copyWith(
                color: AppColors.textColor,
              ),
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.visiblePassword,
              isObscureText: obscure,
              controller: passwordController,
              suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      obscure = !obscure;
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: 15.w),
                    child: obscure == true
                        ? const Icon(
                            Icons.visibility_off,
                            size: 25,
                          )
                        : const Icon(
                            Icons.visibility,
                            size: 25,
                          ),
                  )),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter Your Password';
                }
                return null;
              },
            ),
          ],
        ));
  }
}
