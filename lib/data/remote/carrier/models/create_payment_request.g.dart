// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_payment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreatePaymentRequest _$$_CreatePaymentRequestFromJson(
        Map<String, dynamic> json) =>
    _$_CreatePaymentRequest(
      loadId: json['loadId'] as String?,
      shipperId: json['shipperId'] as String?,
      rate: json['rate'] as int?,
      docUrl: json['docUrl'] as String?,
    );

Map<String, dynamic> _$$_CreatePaymentRequestToJson(
        _$_CreatePaymentRequest instance) =>
    <String, dynamic>{
      'loadId': instance.loadId,
      'shipperId': instance.shipperId,
      'rate': instance.rate,
      'docUrl': instance.docUrl,
    };

_$_CreatePaymentRequestResponse _$$_CreatePaymentRequestResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CreatePaymentRequestResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CreatePaymentRequestResponseToJson(
        _$_CreatePaymentRequestResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      paymentStatus: json['paymentStatus'] as bool?,
      paymentMode: json['paymentMode'] as String?,
      loadId: json['loadId'] as String?,
      shipperId: json['shipperId'] as String?,
      rate: json['rate'] as int?,
      docUrl: json['docUrl'] as String?,
      requestedBy: json['requestedBy'] as String?,
      requestedTo: json['requestedTo'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'paymentStatus': instance.paymentStatus,
      'paymentMode': instance.paymentMode,
      'loadId': instance.loadId,
      'shipperId': instance.shipperId,
      'rate': instance.rate,
      'docUrl': instance.docUrl,
      'requestedBy': instance.requestedBy,
      'requestedTo': instance.requestedTo,
      'id': instance.id,
    };
