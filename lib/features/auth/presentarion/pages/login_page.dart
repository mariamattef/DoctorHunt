import 'package:doctor_hunt/core/Routing/app_router.dart';
import 'package:doctor_hunt/features/auth/logic/cubits/login_cubit/login_cubit.dart';
import 'package:doctor_hunt/features/auth/presentarion/widgets/email_and_password.dart';
import 'package:doctor_hunt/features/auth/presentarion/widgets/google_facebook_button.dart';
import 'package:doctor_hunt/features/auth/presentarion/widgets/login_bloc_listener.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/Helpers/experts_helper/general_helper.dart';

class LoginPage extends StatelessWidget {
  static const String id = "LoginPage";

  const LoginPage({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  AppAssets.bg,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20.0.r),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CustomIntroSignUp(
                    title: 'Welcome back',
                    description:
                        'You can search c ourse, apply course and find scholarship for abroad studies',
                  ),
                  const GoogleFacebookButton(),
                  verticalSpace(34.h),
                  Column(
                    children: [
                      const EmailAndPassword(),
                      verticalSpace(15.h),
                      CustomElevatedButton(
                          backgroundColor: AppColors.primaryColor,
                          width: double.infinity,
                          onPressed: () {
                            validateThenDoLogin(context);
                          },
                          text: 'Login')
                    ],
                  ),
                  verticalSpace(5.h),
                  InkWell(
                      onTap: () {
                        // GoRouter.of(context)
                        //     .go(AppRouter.kForgetPasswordScreen);
                        // show();
                      },
                      child: Text(
                        'Forgot your password',
                        style: AppStyles.textStyle14.copyWith(
                          color: AppColors.primaryColor,
                        ),
                      )),
                  verticalSpace(60.h),
                  SureLoginAndPassword(
                    underSignUpButton1: 'Don’t have an account?',
                    underSignUpButton2: ' Join us',
                    onTap: () {
                      GoRouter.of(context).go(AppRouter.kSignUpPage);
                    },
                  ),
                  const LoginBlocListener(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // void show() {
  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formkey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginState();
    }
  }
}
