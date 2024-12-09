import 'package:doctor_hunt/core/Helpers/experts_helper/general_helper.dart';
import 'package:doctor_hunt/features/auth/logic/cubits/login_cubit/login_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
  bool obscure = true;
  TextEditingController emailController = TextEditingController();
  late TextEditingController passwordController;

  @override
  void initState() {
    passwordController = context.read<LoginCubit>().passwordController;
    super.initState();
  }

  // @override
  // void dispose() {
  //   passwordController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formkey,
      child: Column(
        children: [
          AppTextFormField(
            controller: context.read<LoginCubit>().emailController,
            keyboardType: TextInputType.emailAddress,
            radius: 12,
            hintText: 'mariamattef2024@gmail.com',
            suffixIcon: Padding(
              padding: EdgeInsets.only(right: 15.w),
              child: const Icon(
                Icons.check,
                size: 25,
                color: AppColors.textColor,
              ),
            ),
            hintStyle: AppStyles.textStyle16.copyWith(
              color: AppColors.textColor,
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter Valid email';
              }
            },
          ),
          verticalSpace(10.h),
          AppTextFormField(
            controller: context.read<LoginCubit>().passwordController,
            radius: 12,
            hintText: '•••••••••', // Adjust the number of dots as needed
            hintStyle: AppStyles.textStyle16.copyWith(
              color: AppColors.textColor,
            ),
            keyboardType: TextInputType.visiblePassword,
            isObscureText: obscure,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your Password';
              }
            },

            suffixIcon: GestureDetector(
              onTap: () {
                if (mounted) {
                  setState(() {
                    obscure = !obscure;
                  });
                }
              },
              child: obscure == true
                  ? Padding(
                      padding: EdgeInsets.only(right: 15.w),
                      child: const Icon(Icons.visibility_off),
                    )
                  : const Icon(Icons.visibility),
            ),
          ),
          verticalSpace(20),
        ],
      ),
    );
  }
}
