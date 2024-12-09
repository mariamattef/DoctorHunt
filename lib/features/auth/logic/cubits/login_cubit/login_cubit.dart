// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:doctor_hunt/core/Helpers/experts_helper/general_helper.dart';
import 'package:doctor_hunt/features/auth/data/models/login_request_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:doctor_hunt/features/auth/data/repos/login_repo.dart';
import 'package:doctor_hunt/features/auth/logic/cubits/login_cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(
    this._loginRepo,
  ) : super(const LoginState.initial());
  GlobalKey<FormState> formkey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void emitLoginState() async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(success: (loginRequestBody) {
      emit(LoginState.success(loginRequestBody));
    }, failure: (error) {
      emit(LoginState.error(error.apiErrorModel.message ?? ''));
    });
  }
}
