import 'package:freezed_annotation/freezed_annotation.dart';
part '../signup_state.freezed.dart';

@freezed
class SignupState<T> with _$SignupState<T> {
  const factory SignupState.initial() = _Initial;
  const factory SignupState.signuploading() = SignupLoading;
  const factory SignupState.signupsuccess(T data) = SignupSuccess<T>;
  const factory SignupState.signuperror(String error) = SignupError;
}
