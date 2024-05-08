// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_shipping_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeleteShippingAddressRequest _$$_DeleteShippingAddressRequestFromJson(
        Map<String, dynamic> json) =>
    _$_DeleteShippingAddressRequest(
      addressIds: (json['addressIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_DeleteShippingAddressRequestToJson(
        _$_DeleteShippingAddressRequest instance) =>
    <String, dynamic>{
      'addressIds': instance.addressIds,
    };

_$_DeleteShippingAddressResponse _$$_DeleteShippingAddressResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DeleteShippingAddressResponse(
      code: json['code'] as int,
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DeleteShippingAddressResponseToJson(
        _$_DeleteShippingAddressResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      profilePicUrl: json['profilePicUrl'] as String?,
      role: json['role'] as String,
      isEmailVerified: json['isEmailVerified'] as bool?,
      passwordResetOtp: json['passwordResetOtp'],
      passwordResetTokenUrl: json['passwordResetTokenUrl'] as String?,
      savedLoad: json['savedLoad'] as List<dynamic>?,
      fullName: json['fullName'] as String?,
      email: json['email'] as String?,
      location: json['location'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      companyName: json['companyName'] as String?,
      corporateEmail: json['corporateEmail'] as String?,
      companyWebsite: json['companyWebsite'] as String?,
      activeShippingAddress: (json['activeShippingAddress'] as List<dynamic>?)
          ?.map(
              (e) => ActiveShippingAddress.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String?,
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
      'companyName': instance.companyName,
      'corporateEmail': instance.corporateEmail,
      'companyWebsite': instance.companyWebsite,
      'activeShippingAddress': instance.activeShippingAddress,
      'id': instance.id,
    };

_$_ActiveShippingAddress _$$_ActiveShippingAddressFromJson(
        Map<String, dynamic> json) =>
    _$_ActiveShippingAddress(
      id: json['_id'] as String?,
      companyFullName: json['companyFullName'] as String,
      address: json['address'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      zip: json['zip'] as String,
    );

Map<String, dynamic> _$$_ActiveShippingAddressToJson(
        _$_ActiveShippingAddress instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'companyFullName': instance.companyFullName,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'zip': instance.zip,
    };
