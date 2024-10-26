import 'package:doctor_hunt/core/Routing/app_router.dart';
import 'package:doctor_hunt/features/autth/presentarion/widgets/google_facebook_button.dart';

import '../../../../core/Helpers/experts_helper/general_helper.dart';

class LoginPage extends StatefulWidget {
  static const String id = "LoginPage";

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obscure = true;
  GlobalKey<FormState> formkey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                  Form(
                      key: formkey,
                      child: Column(
                        children: [
                          AppTextFormField(
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
                                return 'Please enter your email';
                              }
                            },
                          ),
                          verticalSpace(10.h),
                          AppTextFormField(
                            radius: 12,
                            hintText:
                                '•••••••••', // Adjust the number of dots as needed
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
                                setState(() {
                                  obscure = !obscure;
                                });
                              },
                              child: obscure == true
                                  ? Padding(
                                      padding: EdgeInsets.only(right: 15.w),
                                      child: const Icon(Icons.visibility_off),
                                    )
                                  : const Icon(Icons.visibility),
                            ),
                          ),
                          verticalSpace(15.h),
                          CustomElevatedButton(
                              backgroundColor: AppColors.primaryColor,
                              width: double.infinity,
                              onPressed: () {
                                if (formkey.currentState!.validate()) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text('Processing Data')),
                                  );
                                  GoRouter.of(context).go(AppRouter.kHomePage);
                                }
                              },
                              text: 'Login')
                        ],
                      )),
                  verticalSpace(5.h),
                  InkWell(
                      onTap: () {
                        // GoRouter.of(context)
                        //     .go(AppRouter.kForgetPasswordScreen);
                        show();
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
                      GoRouter.of(context).go(AppRouter.kAppBarBottom);
                    },
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void show() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.r),
                topRight: Radius.circular(30.r),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(60.h),
                  Text(
                    'Forgot password',
                    style: AppStyles.textStyle24,
                  ),
                  verticalSpace(12.h),
                  Text(
                    'Enter your email for the verification proccesss,we will send 4 digits code to your email.',
                    style: AppStyles.textStyle14,
                  ),
                  verticalSpace(30.h),
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
                  verticalSpace(25.h),
                  CustomElevatedButton(
                      backgroundColor: AppColors.primaryColor,
                      width: double.infinity,
                      onPressed: () {
                        showOtp();
                      },
                      text: 'Continue'),
                  verticalSpace(40.h),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void showOtp() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                    topRight: Radius.circular(30.r))),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(60.h),
                  Text(
                    'Enter 4 Digits Code',
                    style: AppStyles.textStyle24,
                  ),
                  verticalSpace(12.h),
                  Text(
                    'Enter the 4 digits code that you received on your email.',
                    style: AppStyles.textStyle14,
                  ),
                  verticalSpace(30.h),
                  OtpTextField(
                    numberOfFields: 4,
                    fieldWidth: 54.w,
                    fieldHeight: 54.h,
                    borderRadius: BorderRadius.circular(12),
                    borderColor: AppColors.primaryColorWithOpacity,
                    focusedBorderColor: AppColors.primaryColorWithOpacity,
                    cursorColor: AppColors.primaryColor,
                    textStyle: const TextStyle(
                        fontSize: 26,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w700),

                    //set to true to show as box or false to show as dash
                    showFieldAsBox: true,
                    //runs when a code is typed in
                    onCodeChanged: (String code) {
                      //handle validation or checks here
                    },
                    //runs when every textfield is filled
                    onSubmit: (String verificationCode) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text("Verification Code"),
                              content:
                                  Text('Code entered is $verificationCode'),
                            );
                          });
                    }, // end onSubmit
                  ),
                  verticalSpace(25.h),
                  CustomElevatedButton(
                      backgroundColor: AppColors.primaryColor,
                      width: double.infinity,
                      onPressed: () {
                        showResetPassword();
                      },
                      text: 'Continue'),
                  verticalSpace(40.h),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

//! TODO: We will not use OTP
  void showResetPassword() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 900.h,
          //  MediaQuery.of(context).size.height * 0.9,
          decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.r),
                  topRight: Radius.circular(30.r))),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  verticalSpace(40.h),
                  Text(
                    'Reset Password',
                    style: AppStyles.textStyle24,
                  ),
                  verticalSpace(12.h),
                  Text(
                    'Set the new password for your account so you can login and access all the features.',
                    style: AppStyles.textStyle14,
                  ),
                  verticalSpace(30.h),
                  AppTextFormField(
                    radius: 12,
                    hintText: 'New Password',
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
                                  size: 17,
                                )
                              : const Icon(
                                  Icons.visibility,
                                  size: 17,
                                ),
                        )),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Your Password';
                      }
                      return null;
                    },
                  ),
                  verticalSpace(15),
                  AppTextFormField(
                    radius: 12,
                    hintText: 'Re-enter Password',
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
                                  size: 17,
                                )
                              : const Icon(
                                  Icons.visibility,
                                  size: 17,
                                ),
                        )),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Your Password';
                      }
                      return null;
                    },
                  ),
                  verticalSpace(25.h),
                  CustomElevatedButton(
                      backgroundColor: AppColors.primaryColor,
                      width: double.infinity,
                      onPressed: () {
                        showOtp();
                      },
                      text: 'Update Password'),
                  verticalSpace(50.h),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
