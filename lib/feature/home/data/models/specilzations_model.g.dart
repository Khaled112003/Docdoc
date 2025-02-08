// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specilzations_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecilzationsModel _$SpecilzationsModelFromJson(Map<String, dynamic> json) =>
    SpecilzationsModel(
      specializationDataList: (json['data'] as List<dynamic>?)
          ?.map(
              (e) => SpecializationDataList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpecilzationsModelToJson(SpecilzationsModel instance) =>
    <String, dynamic>{
      'data': instance.specializationDataList,
    };
