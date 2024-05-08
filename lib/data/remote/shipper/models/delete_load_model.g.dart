// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_load_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeleteLoadResponse _$$_DeleteLoadResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DeleteLoadResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DeleteLoadResponseToJson(
        _$_DeleteLoadResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      trailerType: (json['trailerType'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isCovered: json['isCovered'] as bool?,
      createdBy: (json['createdBy'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      id: json['_id'] as String?,
      packageType: json['packageType'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
      amount: (json['amount'] as num?)?.toDouble(),
      companyName: json['companyName'] as String?,
      ratePerMile: (json['ratePerMile'] as num?)?.toDouble(),
      pickupDate: json['pickupDate'] == null
          ? null
          : DateTime.parse(json['pickupDate'] as String),
      dropDate: json['dropDate'] == null
          ? null
          : DateTime.parse(json['dropDate'] as String),
      activeShipmentStops: (json['activeShipmentStops'] as List<dynamic>?)
          ?.map((e) => ActiveShipmentStop.fromJson(e as Map<String, dynamic>))
          .toList(),
      loadDocumentUrl: json['loadDocumentUrl'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'trailerType': instance.trailerType,
      'isCovered': instance.isCovered,
      'createdBy': instance.createdBy,
      '_id': instance.id,
      'packageType': instance.packageType,
      'quantity': instance.quantity,
      'amount': instance.amount,
      'companyName': instance.companyName,
      'ratePerMile': instance.ratePerMile,
      'pickupDate': instance.pickupDate?.toIso8601String(),
      'dropDate': instance.dropDate?.toIso8601String(),
      'activeShipmentStops': instance.activeShipmentStops,
      'loadDocumentUrl': instance.loadDocumentUrl,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };

_$_ActiveShipmentStop _$$_ActiveShipmentStopFromJson(
        Map<String, dynamic> json) =>
    _$_ActiveShipmentStop(
      id: json['_id'] as String?,
      emailAddress: json['emailAddress'] as String?,
      estimatePickupDate: json['estimatePickupDate'] == null
          ? null
          : DateTime.parse(json['estimatePickupDate'] as String),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$_ActiveShipmentStopToJson(
        _$_ActiveShipmentStop instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'emailAddress': instance.emailAddress,
      'estimatePickupDate': instance.estimatePickupDate?.toIso8601String(),
      'notes': instance.notes,
    };
