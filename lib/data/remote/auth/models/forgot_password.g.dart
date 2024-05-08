// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ForgotPasswordRequest _$$_ForgotPasswordRequestFromJson(
        Map<String, dynamic> json) =>
    _$_ForgotPasswordRequest(
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$_ForgotPasswordRequestToJson(
        _$_ForgotPasswordRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

_$_ForgotPasswordResponse _$$_ForgotPasswordResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ForgotPasswordResponse(
      code: json['code'] as int,
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ForgotPasswordResponseToJson(
        _$_ForgotPasswordResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data();

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{};
