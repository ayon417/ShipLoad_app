// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeleteAccountResponse _$$_DeleteAccountResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DeleteAccountResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DeleteAccountResponseToJson(
        _$_DeleteAccountResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      fullName: json['fullName'] as String?,
      profilePicUrl: json['profilePicUrl'] as String?,
      mcNumber: json['mcNumber'] as String?,
      role: json['role'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      passwordResetOtp: json['passwordResetOtp'],
      passwordResetTokenUrl: json['passwordResetTokenUrl'] as String?,
      savedLoad: json['savedLoad'] as List<dynamic>?,
      savedFilter: json['savedFilter'] as List<dynamic>?,
      isMcNumberVerified: json['isMcNumberVerified'] as bool?,
      safetyScore: json['safetyScore'] as String?,
      email: json['email'] as String?,
      location: json['location'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      companyName: json['companyName'] as String?,
      corporateEmail: json['corporateEmail'] as String?,
      companyWebsite: json['companyWebsite'] as String?,
      stripeCustomerId: json['stripeCustomerId'] as String?,
      activeShippingAddress: json['activeShippingAddress'] as List<dynamic>?,
      bankAccount: json['bankAccount'] as List<dynamic>?,
      recentSearchedLocations:
          json['recentSearchedLocations'] as List<dynamic>?,
      otp: json['otp'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'fullName': instance.fullName,
      'profilePicUrl': instance.profilePicUrl,
      'mcNumber': instance.mcNumber,
      'role': instance.role,
      'isEmailVerified': instance.isEmailVerified,
      'passwordResetOtp': instance.passwordResetOtp,
      'passwordResetTokenUrl': instance.passwordResetTokenUrl,
      'savedLoad': instance.savedLoad,
      'savedFilter': instance.savedFilter,
      'isMcNumberVerified': instance.isMcNumberVerified,
      'safetyScore': instance.safetyScore,
      'email': instance.email,
      'location': instance.location,
      'phoneNumber': instance.phoneNumber,
      'companyName': instance.companyName,
      'corporateEmail': instance.corporateEmail,
      'companyWebsite': instance.companyWebsite,
      'stripeCustomerId': instance.stripeCustomerId,
      'activeShippingAddress': instance.activeShippingAddress,
      'bankAccount': instance.bankAccount,
      'recentSearchedLocations': instance.recentSearchedLocations,
      'otp': instance.otp,
      'id': instance.id,
    };
