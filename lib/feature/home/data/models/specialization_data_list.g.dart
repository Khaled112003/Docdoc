// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialization_data_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecializationDataList _$SpecializationDataListFromJson(
        Map<String, dynamic> json) =>
    SpecializationDataList(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      doctors: (json['doctors'] as List<dynamic>?)
          ?.map((e) => DoctorsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpecializationDataListToJson(
        SpecializationDataList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'doctors': instance.doctors,
    };
