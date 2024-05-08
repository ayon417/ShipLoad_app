// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VerifyOtpRequest _$$_VerifyOtpRequestFromJson(Map<String, dynamic> json) =>
    _$_VerifyOtpRequest(
      passwordResetOtp: json['passwordResetOtp'] as String?,
    );

Map<String, dynamic> _$$_VerifyOtpRequestToJson(_$_VerifyOtpRequest instance) =>
    <String, dynamic>{
      'passwordResetOtp': instance.passwordResetOtp,
    };

_$_VerifyOtpResponse _$$_VerifyOtpResponseFromJson(Map<String, dynamic> json) =>
    _$_VerifyOtpResponse(
      code: json['code'] as int,
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$_VerifyOtpResponseToJson(
        _$_VerifyOtpResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      role: json['role'] as String,
      isEmailVerified: json['isEmailVerified'] as bool,
      passwordResetOtp: json['passwordResetOtp'] as String,
      passwordResetTokenUrl: json['passwordResetTokenUrl'] as String,
      fullName: json['fullName'] as String,
      email: json['email'] as String,
      location: json['location'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'role': instance.role,
      'isEmailVerified': instance.isEmailVerified,
      'passwordResetOtp': instance.passwordResetOtp,
      'passwordResetTokenUrl': instance.passwordResetTokenUrl,
      'fullName': instance.fullName,
      'email': instance.email,
      'location': instance.location,
      'id': instance.id,
    };
