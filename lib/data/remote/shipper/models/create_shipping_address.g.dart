// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_shipping_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateShippingAddress _$$_CreateShippingAddressFromJson(
        Map<String, dynamic> json) =>
    _$_CreateShippingAddress(
      companyFullName: json['companyFullName'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zip: json['zip'] as String?,
    );

Map<String, dynamic> _$$_CreateShippingAddressToJson(
        _$_CreateShippingAddress instance) =>
    <String, dynamic>{
      'companyFullName': instance.companyFullName,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'zip': instance.zip,
    };

_$_CreateShippingAddressResponse _$$_CreateShippingAddressResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CreateShippingAddressResponse(
      code: json['code'] as int,
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CreateShippingAddressResponseToJson(
        _$_CreateShippingAddressResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      companyFullName: json['companyFullName'] as String,
      address: json['address'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      zip: json['zip'] as String,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'companyFullName': instance.companyFullName,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'zip': instance.zip,
    };
