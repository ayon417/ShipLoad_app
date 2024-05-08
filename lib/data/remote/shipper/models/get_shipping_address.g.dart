// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_shipping_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetShippingAddressResponse _$$_GetShippingAddressResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetShippingAddressResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetShippingAddressResponseToJson(
        _$_GetShippingAddressResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Datum _$$_DatumFromJson(Map<String, dynamic> json) => _$_Datum(
      id: json['_id'] as String?,
      companyFullName: json['companyFullName'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      zip: json['zip'] as String?,
    );

Map<String, dynamic> _$$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      '_id': instance.id,
      'companyFullName': instance.companyFullName,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'zip': instance.zip,
    };
