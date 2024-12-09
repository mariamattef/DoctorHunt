import 'package:doctor_hunt/core/Helpers/experts_helper/general_helper.dart';
import 'package:doctor_hunt/core/Routing/app_router.dart';
import 'package:doctor_hunt/features/auth/logic/cubits/signup_cubit/signup_cubit.dart';
import 'package:doctor_hunt/features/auth/logic/cubits/signup_cubit/signup_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listenWhen: (previous, current) =>
          current is SignupLoading ||
          current is SignupSuccess ||
          current is SignupError,
      listener: (context, state) {
        state.whenOrNull(
          signuploading: () {
            showDialog(
                context: context,
                builder: (context) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: AppColors.primaryColor,
                    ),
                  );
                });
          },
          signupsuccess: (signupResponse) {
            // context.pop();
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('SignUp Success '),
                    icon: const Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: 32,
                    ),
                    content: Text(
                      'Congratulations, you have successfully signed up',
                      style: AppStyles.textStyle16,
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          GoRouter.of(context).go(AppRouter.kLoginPage);
                        },
                        child: Text(
                          'Contenue',
                          style: AppStyles.textStyle16,
                        ),
                      )
                    ],
                  );
                });
          },
          signuperror: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Error'),
            icon: const Icon(
              Icons.error,
              color: Colors.red,
              size: 32,
            ),
            content: Text(
              error,
              style: AppStyles.textStyle16,
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Ok',
                  style: AppStyles.textStyle16,
                ),
              )
            ],
          );
        });
  }
}
