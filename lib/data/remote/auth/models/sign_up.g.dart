// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignUpRequest _$$_SignUpRequestFromJson(Map<String, dynamic> json) =>
    _$_SignUpRequest(
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      location: json['location'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      role: json['role'] as String?,
      companyName: json['companyName'] as String?,
      mcNumber: json['mcNumber'] as String?,
      corporateEmail: json['corporateEmail'] as String?,
      companyWebsite: json['companyWebsite'] as String?,
    );

Map<String, dynamic> _$$_SignUpRequestToJson(_$_SignUpRequest instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'email': instance.email,
      'password': instance.password,
      'location': instance.location,
      'phoneNumber': instance.phoneNumber,
      'role': instance.role,
      'companyName': instance.companyName,
      'mcNumber': instance.mcNumber,
      'corporateEmail': instance.corporateEmail,
      'companyWebsite': instance.companyWebsite,
    };

_$_SignUpResponse _$$_SignUpResponseFromJson(Map<String, dynamic> json) =>
    _$_SignUpResponse(
      code: json['code'] as int,
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SignUpResponseToJson(_$_SignUpResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
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
      companyName: json['companyName'] as String?,
      mcNumber: json['mcNumber'] as String?,
      corporateEmail: json['corporateEmail'] as String?,
      companyWebsite: json['companyWebsite'] as String?,
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
      'companyName': instance.companyName,
      'mcNumber': instance.mcNumber,
      'corporateEmail': instance.corporateEmail,
      'companyWebsite': instance.companyWebsite,
    };
