// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginRequest _$$_LoginRequestFromJson(Map<String, dynamic> json) =>
    _$_LoginRequest(
      email: json['email'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$$_LoginRequestToJson(_$_LoginRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

_$_LoginResponse _$$_LoginResponseFromJson(Map<String, dynamic> json) =>
    _$_LoginResponse(
      code: json['code'] as int,
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$_LoginResponseToJson(_$_LoginResponse instance) =>
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
      passwordResetOtp: json['passwordResetOtp'],
      passwordResetTokenUrl: json['passwordResetTokenUrl'] as String,
      savedLoad: json['savedLoad'] as List<dynamic>,
      fullName: json['fullName'] as String,
      email: json['email'] as String,
      location: json['location'] as String,
      id: json['id'] as String,
      premiumUser: json['premiumUser'] as bool?,
      trialUser: json['trialUser'] as bool?,
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
      'id': instance.id,
      'premiumUser': instance.premiumUser,
      'trialUser': instance.trialUser,
    };
