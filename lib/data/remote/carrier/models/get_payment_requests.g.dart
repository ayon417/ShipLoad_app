// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_payment_requests.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentRequestsResponse _$$_PaymentRequestsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_PaymentRequestsResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PaymentRequestsResponseToJson(
        _$_PaymentRequestsResponse instance) =>
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
      requestedBy: json['requestedBy'] as String?,
      requestedTo: json['requestedTo'] == null
          ? null
          : RequestedTo.fromJson(json['requestedTo'] as Map<String, dynamic>),
      id: json['id'] as String?,
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
    };

_$_RequestedTo _$$_RequestedToFromJson(Map<String, dynamic> json) =>
    _$_RequestedTo(
      fullName: json['fullName'] as String?,
      profilePicUrl: json['profilePicUrl'] as String?,
      mcNumber: json['mcNumber'] as String?,
      role: json['role'] as String?,
      email: json['email'] as String?,
      location: json['location'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      companyName: json['companyName'] as String?,
      corporateEmail: json['corporateEmail'] as String?,
      companyWebsite: json['companyWebsite'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_RequestedToToJson(_$_RequestedTo instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'profilePicUrl': instance.profilePicUrl,
      'mcNumber': instance.mcNumber,
      'role': instance.role,
      'email': instance.email,
      'location': instance.location,
      'phoneNumber': instance.phoneNumber,
      'companyName': instance.companyName,
      'corporateEmail': instance.corporateEmail,
      'companyWebsite': instance.companyWebsite,
      'id': instance.id,
    };
