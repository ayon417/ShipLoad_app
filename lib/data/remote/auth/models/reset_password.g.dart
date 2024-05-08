// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reset_password.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResetPasswordRequest _$$_ResetPasswordRequestFromJson(
        Map<String, dynamic> json) =>
    _$_ResetPasswordRequest(
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$_ResetPasswordRequestToJson(
        _$_ResetPasswordRequest instance) =>
    <String, dynamic>{
      'password': instance.password,
    };

_$_ResetPasswordResponse _$$_ResetPasswordResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ResetPasswordResponse(
      code: json['code'] as int,
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResetPasswordResponseToJson(
        _$_ResetPasswordResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      role: json['role'] as String,
      isEmailVerified: json['isEmailVerified'] as bool,
      passwordResetOtp: json['passwordResetOtp'] as String,
      passwordResetTokenUrl: json['passwordResetTokenUrl'] as String,
      savedLoad: json['savedLoad'] as List<dynamic>,
      fullName: json['fullName'] as String,
      email: json['email'] as String,
      location: json['location'] as String,
      phoneNumber: json['phoneNumber'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'role': instance.role,
      'isEmailVerified': instance.isEmailVerified,
      'passwordResetOtp': instance.passwordResetOtp,
      'passwordResetTokenUrl': instance.passwordResetTokenUrl,
      'savedLoad': instance.savedLoad,
      'fullName': instance.fullName,
      'email': instance.email,
      'location': instance.location,
      'phoneNumber': instance.phoneNumber,
      'id': instance.id,
    };
