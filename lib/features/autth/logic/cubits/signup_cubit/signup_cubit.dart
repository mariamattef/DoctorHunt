import 'package:doctor_hunt/core/Helpers/experts_helper/general_helper.dart';
import 'package:doctor_hunt/features/autth/data/models/signup_request_body.dart';
import 'package:doctor_hunt/features/autth/data/repos/siunup_repo.dart';
import 'package:doctor_hunt/features/autth/logic/cubits/signup_cubit/signup_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _signupRepo;
  SignupCubit(
    this._signupRepo,
  ) : super(const SignupState.initial());
  GlobalKey<FormState> formkey = GlobalKey();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();

  void emitSignupState() async {
    emit(const SignupState.signuploading());
    final response = await _signupRepo.signup(SignUpRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        gender: genderController.text,
        password: passwordController.text,
        passwordConfirmation: passwordConfirmController.text));
    response.when(success: (signupRequestBody) {
      emit(SignupState.signupsuccess(signupRequestBody));
    }, failure: (error) {
      emit(SignupState.signuperror(error.apiErrorModel.message ?? ''));
    });
  }
}
// class SignupCubit extends Cubit<SignupState> {
//   final SignupRepo _signupRepo;
//   SignupCubit(
//     this._signupRepo,
//   ) : super(const SignupState.initial());
//   GlobalKey<FormState> formkey = GlobalKey();
//   TextEditingController nameController = TextEditingController();
//   TextEditingController emailController = TextEditingController();
//   TextEditingController phoneController = TextEditingController();
//   TextEditingController genderController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   TextEditingController passwordConfirmController = TextEditingController();

//   void emitSignupState() async {
//     emit(const SignupState.signuploading());
//     final response = await _signupRepo.signup(SignUpRequestBody(
//         name: nameController.text,
//         email: emailController.text,
//         phone: phoneController.text,
//         gender: genderController.text,
//         password: passwordController.text,
//         passwordConfirmation: passwordConfirmController.text));
//     response.when(success: (signupRequestBody) {
//       emit(SignupState.signupsuccess(signupRequestBody));
//     }, failure: (error) {
//       emit(SignupState.signuperror(error.apiErrorModel.message ?? ''));
//     });
//   }
// }
