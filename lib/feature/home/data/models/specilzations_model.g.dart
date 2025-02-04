// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specilzations_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecilzationsModel _$SpecilzationsModelFromJson(Map<String, dynamic> json) =>
    SpecilzationsModel(
      name: json['name'] as String,
      specializationDataList: (json['data'] as List<dynamic>)
          .map(
              (e) => SpecializationDataList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpecilzationsModelToJson(SpecilzationsModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'data': instance.specializationDataList,
    };
