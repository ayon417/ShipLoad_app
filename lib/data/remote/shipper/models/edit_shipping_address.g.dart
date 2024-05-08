// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_shipping_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EditShippingAddressRequest _$$_EditShippingAddressRequestFromJson(
        Map<String, dynamic> json) =>
    _$_EditShippingAddressRequest(
      companyFullName: json['companyFullName'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zip: json['zip'] as String?,
    );

Map<String, dynamic> _$$_EditShippingAddressRequestToJson(
        _$_EditShippingAddressRequest instance) =>
    <String, dynamic>{
      'companyFullName': instance.companyFullName,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'zip': instance.zip,
    };

_$_EditShippingAddressResponse _$$_EditShippingAddressResponseFromJson(
        Map<String, dynamic> json) =>
    _$_EditShippingAddressResponse(
      code: json['code'] as int,
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EditShippingAddressResponseToJson(
        _$_EditShippingAddressResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      id: json['_id'] as String?,
      companyFullName: json['companyFullName'] as String,
      address: json['address'] as String,
      city: json['city'] as String,
      state: json['state'] as String,
      zip: json['zip'] as String,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      '_id': instance.id,
      'companyFullName': instance.companyFullName,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'zip': instance.zip,
    };
