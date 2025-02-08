import 'package:json_annotation/json_annotation.dart';
part 'doctos_model.g.dart';

@JsonSerializable()
class DoctorsModel {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? photo;
  String? gender;
  @JsonKey(name: 'appoint_price')
  int? price;
  String degree;
  DoctorsModel({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.photo,
    this.gender,
    this.price,
    required this.degree,
  });
  factory DoctorsModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorsModelFromJson(json);
}
