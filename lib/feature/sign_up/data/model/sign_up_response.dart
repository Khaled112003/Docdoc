import 'package:json_annotation/json_annotation.dart';
part 'sign_up_response.g.dart';

@JsonSerializable()
class SignUpResponse {
  final String? message;
  final bool? status;
  final int? code;
  final UserData? userData;

  SignUpResponse({ this.message,  this.status,  this.code,this.userData});

  factory SignUpResponse.fromJson(Map<String,dynamic>json)=>_$SignUpResponseFromJson(json);
}
@JsonSerializable() 
class UserData{
  String? token;
  @JsonKey(name: 'username')
  String? userName;
  
 UserData({this.token, this.userName});
 factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
