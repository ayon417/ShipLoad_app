// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_test_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentTestRequest _$$_PaymentTestRequestFromJson(
        Map<String, dynamic> json) =>
    _$_PaymentTestRequest(
      productId: json['productId'] as String,
      priceId: json['priceId'] as String,
    );

Map<String, dynamic> _$$_PaymentTestRequestToJson(
        _$_PaymentTestRequest instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'priceId': instance.priceId,
    };

_$_PaymentTestResponse _$$_PaymentTestResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PaymentTestResponse(
      success: json['success'] as bool,
      status: json['status'] as int,
      message: json['message'] as String,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PaymentTestResponseToJson(
        _$_PaymentTestResponse instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      session: json['session'] as String,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'session': instance.session,
    };
