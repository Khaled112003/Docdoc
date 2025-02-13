import 'package:json_annotation/json_annotation.dart';

part 'api_errors_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String? message;
  final int? code;
  @JsonKey(name: 'data')
  final Map<String, dynamic>? errors;

  ApiErrorModel({
    this.message,
    this.code,
    this.errors,
  });

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);

  /// Returns a String containing all error messages.
  String getAllErrorMessages() {
    if (errors != null && errors!.isNotEmpty) {
      return errors!.entries.map((entry) {
        final value = entry.value;
        if (value is List) {
          return value.join('\n');
        }
        return value.toString();
      }).join('\n');
    }
    return message ?? "Unknown error occurred";
  }
}
