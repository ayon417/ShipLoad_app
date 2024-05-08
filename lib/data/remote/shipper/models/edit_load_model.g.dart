// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_load_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EditLoadRequest _$$_EditLoadRequestFromJson(Map<String, dynamic> json) =>
    _$_EditLoadRequest(
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
      pickupDate: json['pickupDate'] as String?,
      dropDate: json['dropDate'] as String?,
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
    );

Map<String, dynamic> _$$_EditLoadRequestToJson(_$_EditLoadRequest instance) =>
    <String, dynamic>{
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
      'pickupDate': instance.pickupDate,
      'dropDate': instance.dropDate,
      'corporateEmail': instance.corporateEmail,
      'loadType': instance.loadType,
      'activeShipmentStops': instance.activeShipmentStops,
      'loadDocumentUrl': instance.loadDocumentUrl,
      'loadId': instance.loadId,
      'loadDistance': instance.loadDistance,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
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

_$_EditLoadResponse _$$_EditLoadResponseFromJson(Map<String, dynamic> json) =>
    _$_EditLoadResponse(
      code: json['code'] as int,
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EditLoadResponseToJson(_$_EditLoadResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
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
      id: json['id'] as String?,
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
      'id': instance.id,
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
    };
