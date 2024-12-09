import 'package:doctor_hunt/core/Helpers/experts_helper/general_helper.dart';
import '../../../../app_router.dart';
import 'package:doctor_hunt/features/auth/logic/cubits/login_cubit/login_cubit.dart';
import 'package:doctor_hunt/features/auth/logic/cubits/login_cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
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
          success: (loginResponse) {
            context.pop();
            GoRouter.of(context).go(AppRouter.kHomePage);
          },
          error: (error) {
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
