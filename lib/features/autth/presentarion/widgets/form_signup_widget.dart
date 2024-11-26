import 'package:doctor_hunt/core/Helpers/experts_helper/general_helper.dart';
import 'package:doctor_hunt/core/Routing/app_router.dart';
import 'package:doctor_hunt/features/autth/logic/cubits/signup_cubit/signup_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FormSignupWidget extends StatefulWidget {
  const FormSignupWidget({super.key});

  @override
  State<FormSignupWidget> createState() => _FormSignupWidgetState();
}

class _FormSignupWidgetState extends State<FormSignupWidget> {
  var obscure = true;
  var isobscure = true;

  late TextEditingController nameController;
  late TextEditingController emailController;
  late TextEditingController genderController;
  late TextEditingController phoneController;
  late TextEditingController passwordController;
  late TextEditingController passwordConfirmController;

  @override
  void initState() {
    nameController = context.read<SignupCubit>().nameController;
    emailController = context.read<SignupCubit>().emailController;
    phoneController = context.read<SignupCubit>().phoneController;
    genderController = context.read<SignupCubit>().genderController;
    passwordController = context.read<SignupCubit>().passwordController;
    passwordConfirmController =
        context.read<SignupCubit>().passwordConfirmController;
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    genderController.dispose();
    passwordController.dispose();
    passwordConfirmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: context.read<SignupCubit>().formkey,
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
              controller: context.read<SignupCubit>().nameController,
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
              controller: context.read<SignupCubit>().emailController,
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
              hintText: 'Phone',
              hintStyle: AppStyles.textStyle16.copyWith(
                color: AppColors.textColor,
              ),
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.number,
              controller: context.read<SignupCubit>().phoneController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter Your Phone';
                }
                return null;
              },
            ),
            verticalSpace(10.h),
            AppTextFormField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              radius: 12,
              hintText: 'Gender',
              controller: context.read<SignupCubit>().genderController,
              hintStyle: AppStyles.textStyle16.copyWith(
                color: AppColors.textColor,
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter Your gender';
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
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.visiblePassword,
              isObscureText: obscure,
              controller: context.read<SignupCubit>().passwordController,
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
                if (value.length < 6) {
                  return 'Password must be at least 6 characters';
                }
                return null;
              },
            ),
            verticalSpace(10.h),
            AppTextFormField(
              radius: 12,
              hintText: 'Confirm Password',
              hintStyle: AppStyles.textStyle16.copyWith(
                color: AppColors.textColor,
              ),
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.visiblePassword,
              isObscureText: isobscure,
              controller: context.read<SignupCubit>().passwordConfirmController,
              suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      isobscure = !isobscure;
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: 15.w),
                    child: isobscure == true
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
                  return 'Confirm Password is required';
                }
                if (value != passwordController.text) {
                  return 'Passwords do not match';
                }
                return null;
              },
            ),
            Builder(builder: (context) {
              return CustomElevatedButton(
                  backgroundColor: AppColors.primaryColor,
                  width: double.infinity,
                  onPressed: () {
                    if (context
                        .read<SignupCubit>()
                        .formkey
                        .currentState!
                        .validate()) {
                      validateThenDoSignup(context);
                      // GoRouter.of(context).go(AppRouter.kLoginPage);
                    }
                  },
                  text: 'Sign up');
            }),
          ],
        ));
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formkey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupState();
    }
  }
}
