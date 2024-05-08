// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipper_payment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShipperPaymentRequestsResponse _$$_ShipperPaymentRequestsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ShipperPaymentRequestsResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ShipperPaymentRequestsResponseToJson(
        _$_ShipperPaymentRequestsResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Datum _$$_DatumFromJson(Map<String, dynamic> json) => _$_Datum(
      paymentStatus: json['paymentStatus'] as bool?,
      paymentMode: json['paymentMode'] as String?,
      loadId: json['loadId'] as String?,
      shipperId: json['shipperId'] as String?,
      rate: json['rate'] as int?,
      docUrl: json['docUrl'] as String?,
      requestedBy: json['requestedBy'] == null
          ? null
          : RequestedBy.fromJson(json['requestedBy'] as Map<String, dynamic>),
      requestedTo: json['requestedTo'] as String?,
      id: json['id'] as String?,
      loadID: json['loadID'] as String?,
    );

Map<String, dynamic> _$$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      'paymentStatus': instance.paymentStatus,
      'paymentMode': instance.paymentMode,
      'loadId': instance.loadId,
      'shipperId': instance.shipperId,
      'rate': instance.rate,
      'docUrl': instance.docUrl,
      'requestedBy': instance.requestedBy,
      'requestedTo': instance.requestedTo,
      'id': instance.id,
      'loadID': instance.loadID,
    };

_$_RequestedBy _$$_RequestedByFromJson(Map<String, dynamic> json) =>
    _$_RequestedBy(
      fullName: json['fullName'] as String?,
      profilePicUrl: json['profilePicUrl'] as String?,
      mcNumber: json['mcNumber'] as String?,
      role: json['role'] as String?,
      email: json['email'] as String?,
      location: json['location'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      companyName: json['companyName'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_RequestedByToJson(_$_RequestedBy instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'profilePicUrl': instance.profilePicUrl,
      'mcNumber': instance.mcNumber,
      'role': instance.role,
      'email': instance.email,
      'location': instance.location,
      'phoneNumber': instance.phoneNumber,
      'companyName': instance.companyName,
      'id': instance.id,
    };
