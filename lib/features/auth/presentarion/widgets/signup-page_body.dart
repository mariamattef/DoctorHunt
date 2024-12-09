import 'package:doctor_hunt/core/Routing/app_router.dart';
import 'package:doctor_hunt/features/auth/presentarion/widgets/form_signup_widget.dart';
import 'package:doctor_hunt/features/auth/presentarion/widgets/google_facebook_button.dart';
import 'package:doctor_hunt/features/auth/presentarion/widgets/signup_bloc_listener.dart';
import '../../../../core/Helpers/experts_helper/general_helper.dart';

class SignUpPageBody extends StatefulWidget {
  const SignUpPageBody({super.key});

  @override
  State<SignUpPageBody> createState() => _SignUpPageBodyState();
}

class _SignUpPageBodyState extends State<SignUpPageBody> {
  final bool isAgree = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20.0.r),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomIntroSignUp(
              title: 'Join us to start searching',
              description:
                  'you can search c course , apply course and find scholarship for abroad studies',
            ),
            const GoogleFacebookButton(),
            verticalSpace(28.h),
            const FormSignupWidget(),
            verticalSpace(15.h),
            Row(
              children: [
                Radio(
                    fillColor:
                        const WidgetStatePropertyAll(AppColors.textColor),
                    activeColor: AppColors.textColor,
                    focusColor: AppColors.textColor,
                    value: true,
                    groupValue: isAgree,
                    onChanged: (value) {
                      // setState(() {
                      //   isAgree = value;
                      // });
                    }),
                Expanded(
                  child: Text(
                    'I agree with the Terms of Service & Privacy Policy',
                    style: AppStyles.textStyle12.copyWith(
                      color: AppColors.textColor,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
            verticalSpace(54),
            SureLoginAndPassword(
              underSignUpButton1: 'Have an account?',
              underSignUpButton2: 'Log In',
              onTap: () {
                GoRouter.of(context).go(AppRouter.kLoginPage);
              },
            ),
            const SignupBlocListener(),
          ],
        ),
      ),
    );
  }
}
