// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EditProfileRequest _$$_EditProfileRequestFromJson(
        Map<String, dynamic> json) =>
    _$_EditProfileRequest(
      name: json['name'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      profilePicUrl: json['profilePicUrl'] as String?,
    );

Map<String, dynamic> _$$_EditProfileRequestToJson(
        _$_EditProfileRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'profilePicUrl': instance.profilePicUrl,
    };

_$_EditProfileResponse _$$_EditProfileResponseFromJson(
        Map<String, dynamic> json) =>
    _$_EditProfileResponse(
      code: json['code'] as int,
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EditProfileResponseToJson(
        _$_EditProfileResponse instance) =>
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
