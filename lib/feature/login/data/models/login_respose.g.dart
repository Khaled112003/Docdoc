// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_respose.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRespose _$LoginResposeFromJson(Map<String, dynamic> json) => LoginRespose(
      message: json['message'] as String?,
      status: json['status'] as String?,
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LoginResposeToJson(LoginRespose instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'code': instance.code,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      token: json['token'] as String?,
      userName: json['username'] as String?,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'token': instance.token,
      'username': instance.userName,
    };
