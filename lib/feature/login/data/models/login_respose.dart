import 'package:json_annotation/json_annotation.dart';
part 'login_respose.g.dart';

@JsonSerializable()
class LoginRespose {
  final String? message;
  final bool? status;
  @JsonKey(name: 'data')
  UserData? userData;
  final int? code;

  LoginRespose({ this.message,  this.status,this.userData,  this.code});

  factory LoginRespose.fromJson(Map<String,dynamic>json)=>_$LoginResposeFromJson(json);
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
