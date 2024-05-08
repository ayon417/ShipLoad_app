// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_verification_mail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SendVerificationMailRequest _$$_SendVerificationMailRequestFromJson(
        Map<String, dynamic> json) =>
    _$_SendVerificationMailRequest(
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$_SendVerificationMailRequestToJson(
        _$_SendVerificationMailRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

_$_SendVerificationMailResponse _$$_SendVerificationMailResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SendVerificationMailResponse(
      code: json['code'] as int,
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SendVerificationMailResponseToJson(
        _$_SendVerificationMailResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data();

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{};
