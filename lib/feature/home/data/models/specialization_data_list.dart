import 'package:daweny/feature/home/data/models/doctos_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'specialization_data_list.g.dart';
@JsonSerializable()
class SpecializationDataList {
  int? id;
  String? name;
  @JsonKey(name: 'doctors')
  List<DoctorsModel>? doctors;
  SpecializationDataList({this.id, this.name, this.doctors});
  factory SpecializationDataList.fromJson(Map<String, dynamic> json) => _$SpecializationDataListFromJson(json);
}