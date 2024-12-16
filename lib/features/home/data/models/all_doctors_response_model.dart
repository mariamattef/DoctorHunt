// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
part 'all_doctors_response_model.g.dart';

@JsonSerializable()
class AllDoctorsResponseModel {
  String? message;
  @JsonKey(name: 'data')
  List<DoctorsModel>? doctorsList;
  bool? status;
  int? code;

  AllDoctorsResponseModel(
      {this.message, this.doctorsList, this.status, this.code});
  factory AllDoctorsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AllDoctorsResponseModelFromJson(json);
}

@JsonSerializable()
class DoctorsModel {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? photo;
  String? gender;
  String? address;
  String? description;
  String? degree;
  Specialization? specialization;
  City? city;
  @JsonKey(
    name: 'appoint_price',
  )
  int? appointPrice;
  @JsonKey(
    name: 'start_time',
  )
  String? startTime;
  @JsonKey(name: 'end_time')
  String? endTime;

  DoctorsModel(
      {this.id,
      this.name,
      this.email,
      this.phone,
      this.photo,
      this.gender,
      this.address,
      this.description,
      this.degree,
      this.specialization,
      this.city,
      this.appointPrice,
      this.startTime,
      this.endTime});

  factory DoctorsModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorsModelFromJson(json);
}

@JsonSerializable()
class Specialization {
  int? id;
  String? name;

  Specialization({this.id, this.name});
  factory Specialization.fromJson(Map<String, dynamic> json) =>
      _$SpecializationFromJson(json);
}

@JsonSerializable()
class City {
  int? id;
  String? name;
  Specialization? governrate;

  City({this.id, this.name, this.governrate});

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}
