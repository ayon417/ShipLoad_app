// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_load.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateLoadRequest _$$_CreateLoadRequestFromJson(Map<String, dynamic> json) =>
    _$_CreateLoadRequest(
      pickupLocation: json['pickupLocation'] == null
          ? null
          : PickupLocation.fromJson(
              json['pickupLocation'] as Map<String, dynamic>),
      dropLocation: json['dropLocation'] == null
          ? null
          : DropLocation.fromJson(json['dropLocation'] as Map<String, dynamic>),
      packageType: json['packageType'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
      amount: (json['amount'] as num?)?.toDouble(),
      companyName: json['companyName'] as String?,
      ratePerMile: (json['ratePerMile'] as num?)?.toDouble(),
      loadLength: (json['loadLength'] as num?)?.toDouble(),
      pickupDate: json['pickupDate'] as String?,
      dropDate: json['dropDate'] as String?,
      corporateEmail: json['corporateEmail'] as String?,
      loadRequirement: (json['loadRequirement'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      trailerType: (json['trailerType'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      loadType: json['loadType'] as String?,
      activeShipmentStops: (json['activeShipmentStops'] as List<dynamic>?)
          ?.map((e) => ActiveShipmentStop.fromJson(e as Map<String, dynamic>))
          .toList(),
      loadDocumentUrl: json['loadDocumentUrl'] as String?,
    );

Map<String, dynamic> _$$_CreateLoadRequestToJson(
        _$_CreateLoadRequest instance) =>
    <String, dynamic>{
      'pickupLocation': instance.pickupLocation,
      'dropLocation': instance.dropLocation,
      'packageType': instance.packageType,
      'phoneNumber': instance.phoneNumber,
      'quantity': instance.quantity,
      'amount': instance.amount,
      'companyName': instance.companyName,
      'ratePerMile': instance.ratePerMile,
      'loadLength': instance.loadLength,
      'pickupDate': instance.pickupDate,
      'dropDate': instance.dropDate,
      'corporateEmail': instance.corporateEmail,
      'loadRequirement': instance.loadRequirement,
      'trailerType': instance.trailerType,
      'loadType': instance.loadType,
      'activeShipmentStops': instance.activeShipmentStops,
      'loadDocumentUrl': instance.loadDocumentUrl,
    };

_$_ActiveShipmentStop _$$_ActiveShipmentStopFromJson(
        Map<String, dynamic> json) =>
    _$_ActiveShipmentStop(
      pickupLocation: PickupLocation.fromJson(
          json['pickupLocation'] as Map<String, dynamic>),
      notes: json['notes'] as String,
    );

Map<String, dynamic> _$$_ActiveShipmentStopToJson(
        _$_ActiveShipmentStop instance) =>
    <String, dynamic>{
      'pickupLocation': instance.pickupLocation,
      'notes': instance.notes,
    };

_$_PickupLocation _$$_PickupLocationFromJson(Map<String, dynamic> json) =>
    _$_PickupLocation(
      type: json['type'] as String,
      coordinates: (json['coordinates'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      pickupLocationName: json['pickupLocationName'] as String,
    );

Map<String, dynamic> _$$_PickupLocationToJson(_$_PickupLocation instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
      'pickupLocationName': instance.pickupLocationName,
    };

_$_DropLocation _$$_DropLocationFromJson(Map<String, dynamic> json) =>
    _$_DropLocation(
      type: json['type'] as String,
      coordinates: (json['coordinates'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      dropLocationName: json['dropLocationName'] as String,
    );

Map<String, dynamic> _$$_DropLocationToJson(_$_DropLocation instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
      'dropLocationName': instance.dropLocationName,
    };

_$_CreateLoadResponse _$$_CreateLoadResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CreateLoadResponse(
      code: json['code'] as int,
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CreateLoadResponseToJson(
        _$_CreateLoadResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      pickupLocation: PickupLocation.fromJson(
          json['pickupLocation'] as Map<String, dynamic>),
      dropLocation:
          DropLocation.fromJson(json['dropLocation'] as Map<String, dynamic>),
      trailerType: (json['trailerType'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      loadRequirement: (json['loadRequirement'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      isCovered: json['isCovered'] as bool,
      isSaved: json['isSaved'] as bool,
      isPaid: json['isPaid'] as bool,
      createdBy:
          (json['createdBy'] as List<dynamic>).map((e) => e as String).toList(),
      id: json['_id'] as String?,
      packageType: json['packageType'] as String,
      phoneNumber: json['phoneNumber'] as String,
      quantity: (json['quantity'] as num).toDouble(),
      amount: (json['amount'] as num).toDouble(),
      companyName: json['companyName'] as String,
      ratePerMile: (json['ratePerMile'] as num).toDouble(),
      loadLength: (json['loadLength'] as num).toDouble(),
      pickupDate: DateTime.parse(json['pickupDate'] as String),
      dropDate: DateTime.parse(json['dropDate'] as String),
      corporateEmail: json['corporateEmail'] as String,
      loadType: json['loadType'] as String,
      activeShipmentStops: (json['activeShipmentStops'] as List<dynamic>)
          .map((e) => ActiveShipmentStops.fromJson(e as Map<String, dynamic>))
          .toList(),
      loadDocumentUrl: json['loadDocumentUrl'] as String,
      loadId: json['loadId'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'pickupLocation': instance.pickupLocation,
      'dropLocation': instance.dropLocation,
      'trailerType': instance.trailerType,
      'loadRequirement': instance.loadRequirement,
      'isCovered': instance.isCovered,
      'isSaved': instance.isSaved,
      'isPaid': instance.isPaid,
      'createdBy': instance.createdBy,
      '_id': instance.id,
      'packageType': instance.packageType,
      'phoneNumber': instance.phoneNumber,
      'quantity': instance.quantity,
      'amount': instance.amount,
      'companyName': instance.companyName,
      'ratePerMile': instance.ratePerMile,
      'loadLength': instance.loadLength,
      'pickupDate': instance.pickupDate.toIso8601String(),
      'dropDate': instance.dropDate.toIso8601String(),
      'corporateEmail': instance.corporateEmail,
      'loadType': instance.loadType,
      'activeShipmentStops': instance.activeShipmentStops,
      'loadDocumentUrl': instance.loadDocumentUrl,
      'loadId': instance.loadId,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$_ActiveShipmentStops _$$_ActiveShipmentStopsFromJson(
        Map<String, dynamic> json) =>
    _$_ActiveShipmentStops(
      pickupLocation: PickupLocation.fromJson(
          json['pickupLocation'] as Map<String, dynamic>),
      id: json['_id'] as String?,
      notes: json['notes'] as String,
    );

Map<String, dynamic> _$$_ActiveShipmentStopsToJson(
        _$_ActiveShipmentStops instance) =>
    <String, dynamic>{
      'pickupLocation': instance.pickupLocation,
      '_id': instance.id,
      'notes': instance.notes,
    };
