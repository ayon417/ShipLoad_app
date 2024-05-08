// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recent_loads.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CarrierRecentLoads _$$_CarrierRecentLoadsFromJson(
        Map<String, dynamic> json) =>
    _$_CarrierRecentLoads(
      code: json['code'] as int,
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CarrierRecentLoadsToJson(
        _$_CarrierRecentLoads instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Datum _$$_DatumFromJson(Map<String, dynamic> json) => _$_Datum(
      trailerType: (json['trailerType'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      isCovered: json['isCovered'] as bool,
      isSaved: json['isSaved'] as bool,
      createdBy:
          (json['createdBy'] as List<dynamic>).map((e) => e as String).toList(),
      id: json['_id'] as String?,
      pickupLocation: json['pickupLocation'] as String,
      dropLocation: json['dropLocation'] as String,
      packageType: json['packageType'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      amount: (json['amount'] as num).toDouble(),
      companyName: json['companyName'] as String,
      ratePerMile: (json['ratePerMile'] as num).toDouble(),
      pickupDate: DateTime.parse(json['pickupDate'] as String),
      dropDate: DateTime.parse(json['dropDate'] as String),
      activeShipmentStops: (json['activeShipmentStops'] as List<dynamic>)
          .map((e) => ActiveShipmentStop.fromJson(e as Map<String, dynamic>))
          .toList(),
      loadDocumentUrl: json['loadDocumentUrl'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      loadId: json['loadId'] as String,
    );

Map<String, dynamic> _$$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      'trailerType': instance.trailerType,
      'isCovered': instance.isCovered,
      'isSaved': instance.isSaved,
      'createdBy': instance.createdBy,
      '_id': instance.id,
      'pickupLocation': instance.pickupLocation,
      'dropLocation': instance.dropLocation,
      'packageType': instance.packageType,
      'quantity': instance.quantity,
      'amount': instance.amount,
      'companyName': instance.companyName,
      'ratePerMile': instance.ratePerMile,
      'pickupDate': instance.pickupDate.toIso8601String(),
      'dropDate': instance.dropDate.toIso8601String(),
      'activeShipmentStops': instance.activeShipmentStops,
      'loadDocumentUrl': instance.loadDocumentUrl,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'loadId': instance.loadId,
    };

_$_ActiveShipmentStop _$$_ActiveShipmentStopFromJson(
        Map<String, dynamic> json) =>
    _$_ActiveShipmentStop(
      id: json['_id'] as String?,
      pickupLocation: json['pickupLocation'] as String,
      emailAddress: json['emailAddress'] as String,
      estimatePickupDate: DateTime.parse(json['estimatePickupDate'] as String),
      notes: json['notes'] as String,
    );

Map<String, dynamic> _$$_ActiveShipmentStopToJson(
        _$_ActiveShipmentStop instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'pickupLocation': instance.pickupLocation,
      'emailAddress': instance.emailAddress,
      'estimatePickupDate': instance.estimatePickupDate.toIso8601String(),
      'notes': instance.notes,
    };
