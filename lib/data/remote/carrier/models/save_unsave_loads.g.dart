// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_unsave_loads.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SaveUnsaveLoads _$$_SaveUnsaveLoadsFromJson(Map<String, dynamic> json) =>
    _$_SaveUnsaveLoads(
      code: json['code'] as int,
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SaveUnsaveLoadsToJson(_$_SaveUnsaveLoads instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      trailerType: (json['trailerType'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      isCovered: json['isCovered'] as bool,
      isSaved: json['isSaved'] as bool,
      id: json['_id'] as String?,
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
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'trailerType': instance.trailerType,
      'isCovered': instance.isCovered,
      'isSaved': instance.isSaved,
      '_id': instance.id,
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
    };

_$_ActiveShipmentStop _$$_ActiveShipmentStopFromJson(
        Map<String, dynamic> json) =>
    _$_ActiveShipmentStop(
      id: json['_id'] as String?,
      notes: json['notes'] as String,
    );

Map<String, dynamic> _$$_ActiveShipmentStopToJson(
        _$_ActiveShipmentStop instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'notes': instance.notes,
    };
