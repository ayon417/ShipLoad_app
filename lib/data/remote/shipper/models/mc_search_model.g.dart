// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mc_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_McSearchRequest _$$_McSearchRequestFromJson(Map<String, dynamic> json) =>
    _$_McSearchRequest(
      mcNumber: json['mcNumber'] as String?,
    );

Map<String, dynamic> _$$_McSearchRequestToJson(_$_McSearchRequest instance) =>
    <String, dynamic>{
      'mcNumber': instance.mcNumber,
    };

_$_McSearchResponse _$$_McSearchResponseFromJson(Map<String, dynamic> json) =>
    _$_McSearchResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_McSearchResponseToJson(_$_McSearchResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      profilePicUrl: json['profilePicUrl'] as String?,
      role: json['role'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      passwordResetOtp: json['passwordResetOtp'],
      passwordResetTokenUrl: json['passwordResetTokenUrl'] as String?,
      savedLoad: json['savedLoad'] as List<dynamic>?,
      savedFilter: json['savedFilter'] as List<dynamic>?,
      isMcNumberVerified: json['isMcNumberVerified'] as bool?,
      safetyScore: json['safetyScore'] as String?,
      riskScore: json['riskScore'] as String?,
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      location: json['location'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      companyName: json['companyName'] as String?,
      mcNumber: json['mcNumber'] as String?,
      dotNumber: json['dotNumber'] as String?,
      stripeCustomerId: json['stripeCustomerId'] as String?,
      activeShippingAddress: json['activeShippingAddress'] as List<dynamic>?,
      bankAccount: json['bankAccount'] as List<dynamic>?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'profilePicUrl': instance.profilePicUrl,
      'role': instance.role,
      'isEmailVerified': instance.isEmailVerified,
      'passwordResetOtp': instance.passwordResetOtp,
      'passwordResetTokenUrl': instance.passwordResetTokenUrl,
      'savedLoad': instance.savedLoad,
      'savedFilter': instance.savedFilter,
      'isMcNumberVerified': instance.isMcNumberVerified,
      'safetyScore': instance.safetyScore,
      'riskScore': instance.riskScore,
      'fullName': instance.fullName,
      'email': instance.email,
      'location': instance.location,
      'phoneNumber': instance.phoneNumber,
      'companyName': instance.companyName,
      'mcNumber': instance.mcNumber,
      'dotNumber': instance.dotNumber,
      'stripeCustomerId': instance.stripeCustomerId,
      'activeShippingAddress': instance.activeShippingAddress,
      'bankAccount': instance.bankAccount,
      'id': instance.id,
    };
