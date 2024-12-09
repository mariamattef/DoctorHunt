import 'package:json_annotation/json_annotation.dart';
part 'signup_response.g.dart';

@JsonSerializable()
class SignupResponse {
  final String? message;
  @JsonKey(name: 'data')
  final UserData? userData;
  final bool? status;
  final int? code;

  SignupResponse({
    this.message,
    this.status,
    this.code,
    this.userData,
  });

  factory SignupResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  @JsonKey(name: 'username')
  final String? userName;
  final String? token;

  UserData({this.userName, this.token});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
