// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileDetailsResponse _$$_ProfileDetailsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ProfileDetailsResponse(
      code: json['code'] as int,
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProfileDetailsResponseToJson(
        _$_ProfileDetailsResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      profilePicUrl: json['profilePicUrl'] as String?,
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
      companyName: json['companyName'] as String?,
      corporateEmail: json['corporateEmail'] as String?,
      premiumUser: json['premiumUser'] as bool?,
      trialUser: json['trialUser'] as bool?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'profilePicUrl': instance.profilePicUrl,
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
      'companyName': instance.companyName,
      'corporateEmail': instance.corporateEmail,
      'premiumUser': instance.premiumUser,
      'trialUser': instance.trialUser,
    };
