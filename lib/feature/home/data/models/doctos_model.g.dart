// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctos_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorsModel _$DoctorsModelFromJson(Map<String, dynamic> json) => DoctorsModel(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      photo: json['photo'] as String?,
      gender: json['gender'] as String?,
      price: (json['appoint_price'] as num?)?.toInt(),
      degree: json['degree'] as String,
    );

Map<String, dynamic> _$DoctorsModelToJson(DoctorsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'photo': instance.photo,
      'gender': instance.gender,
      'appoint_price': instance.price,
      'degree': instance.degree,
    };
