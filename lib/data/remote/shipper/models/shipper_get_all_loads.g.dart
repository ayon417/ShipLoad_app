// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipper_get_all_loads.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShipperGetAllLoadsResponse _$$_ShipperGetAllLoadsResponseFromJson(
        Map<String, dynamic> json) =>
    _$_ShipperGetAllLoadsResponse(
      code: json['code'] as int,
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ShipperGetAllLoadsResponseToJson(
        _$_ShipperGetAllLoadsResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Datum _$$_DatumFromJson(Map<String, dynamic> json) => _$_Datum(
      pickupLocation: json['pickupLocation'] == null
          ? null
          : PickupLocation.fromJson(
              json['pickupLocation'] as Map<String, dynamic>),
      dropLocation: json['dropLocation'] == null
          ? null
          : DropLocation.fromJson(json['dropLocation'] as Map<String, dynamic>),
      trailerType: (json['trailerType'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      loadRequirement: (json['loadRequirement'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isCovered: json['isCovered'] as bool?,
      isSaved: json['isSaved'] as bool?,
      isPaid: json['isPaid'] as bool?,
      createdBy: (json['createdBy'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      id: json['_id'] as String?,
      packageType: json['packageType'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      quantity: (json['quantity'] as num?)?.toDouble(),
      amount: (json['amount'] as num?)?.toDouble(),
      companyName: json['companyName'] as String?,
      ratePerMile: (json['ratePerMile'] as num?)?.toDouble(),
      loadLength: (json['loadLength'] as num?)?.toDouble(),
      pickupDate: json['pickupDate'] == null
          ? null
          : DateTime.parse(json['pickupDate'] as String),
      dropDate: json['dropDate'] == null
          ? null
          : DateTime.parse(json['dropDate'] as String),
      corporateEmail: json['corporateEmail'] as String?,
      loadType: json['loadType'] as String?,
      activeShipmentStops: (json['activeShipmentStops'] as List<dynamic>?)
          ?.map((e) => ActiveShipmentStop.fromJson(e as Map<String, dynamic>))
          .toList(),
      loadDocumentUrl: json['loadDocumentUrl'] as String?,
      loadId: json['loadId'] as String?,
      loadDistance: (json['loadDistance'] as num?)?.toDouble(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      deadHead: (json['deadHead'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_DatumToJson(_$_Datum instance) => <String, dynamic>{
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
      'pickupDate': instance.pickupDate?.toIso8601String(),
      'dropDate': instance.dropDate?.toIso8601String(),
      'corporateEmail': instance.corporateEmail,
      'loadType': instance.loadType,
      'activeShipmentStops': instance.activeShipmentStops,
      'loadDocumentUrl': instance.loadDocumentUrl,
      'loadId': instance.loadId,
      'loadDistance': instance.loadDistance,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deadHead': instance.deadHead,
    };

_$_ActiveShipmentStop _$$_ActiveShipmentStopFromJson(
        Map<String, dynamic> json) =>
    _$_ActiveShipmentStop(
      id: json['_id'] as String?,
      pickupLocation: PickupLocation.fromJson(
          json['pickupLocation'] as Map<String, dynamic>),
      notes: json['notes'] as String,
    );

Map<String, dynamic> _$$_ActiveShipmentStopToJson(
        _$_ActiveShipmentStop instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'pickupLocation': instance.pickupLocation,
      'notes': instance.notes,
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

_$_ShipperLoadsRequest _$$_ShipperLoadsRequestFromJson(
        Map<String, dynamic> json) =>
    _$_ShipperLoadsRequest(
      locationFilter: json['locationFilter'] as bool?,
      pickupLocation: (json['pickupLocation'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$_ShipperLoadsRequestToJson(
        _$_ShipperLoadsRequest instance) =>
    <String, dynamic>{
      'locationFilter': instance.locationFilter,
      'pickupLocation': instance.pickupLocation,
    };
