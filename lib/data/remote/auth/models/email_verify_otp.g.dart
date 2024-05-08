// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'email_verify_otp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmailVerifyOtpRequest _$$_EmailVerifyOtpRequestFromJson(
        Map<String, dynamic> json) =>
    _$_EmailVerifyOtpRequest(
      otp: json['otp'] as String?,
    );

Map<String, dynamic> _$$_EmailVerifyOtpRequestToJson(
        _$_EmailVerifyOtpRequest instance) =>
    <String, dynamic>{
      'otp': instance.otp,
    };

_$_EmailVerifyOtpResponse _$$_EmailVerifyOtpResponseFromJson(
        Map<String, dynamic> json) =>
    _$_EmailVerifyOtpResponse(
      code: json['code'] as int,
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EmailVerifyOtpResponseToJson(
        _$_EmailVerifyOtpResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data();

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{};
