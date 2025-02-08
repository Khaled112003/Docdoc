import 'package:daweny/feature/home/data/models/specialization_data_list.dart';
import 'package:json_annotation/json_annotation.dart';
part 'specilzations_model.g.dart';
@JsonSerializable()
class SpecilzationsModel {
  @JsonKey(name: 'data')
  final List<SpecializationDataList>? specializationDataList;

  SpecilzationsModel({ required this.specializationDataList});
  factory SpecilzationsModel.fromJson(Map<String, dynamic> json) =>_$SpecilzationsModelFromJson(json);
  

}