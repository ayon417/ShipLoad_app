// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carrier_loads_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FiltersRequest _$$_FiltersRequestFromJson(Map<String, dynamic> json) =>
    _$_FiltersRequest(
      trailerTypes: json['trailerTypes'] as List<dynamic>?,
      minWeight: (json['minWeight'] as num?)?.toDouble(),
      maxWeight: (json['maxWeight'] as num?)?.toDouble(),
      minLoadDistance: (json['minLoadDistance'] as num?)?.toDouble(),
      maxLoadDistance: (json['maxLoadDistance'] as num?)?.toDouble(),
      minPrice: (json['minPrice'] as num?)?.toDouble(),
      maxPrice: (json['maxPrice'] as num?)?.toDouble(),
      packageType: json['packageType'] as String?,
      date: json['date'] as String?,
      minRate: (json['minRate'] as num?)?.toDouble(),
      maxRate: (json['maxRate'] as num?)?.toDouble(),
      loadType: json['loadType'] as String?,
      loadRequirement: (json['loadRequirement'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      companyNames: (json['companyNames'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      sortBy:
          (json['sortBy'] as List<dynamic>?)?.map((e) => e as String).toList(),
      sortOrder: json['sortOrder'] as String?,
      minLoadLength: (json['minLoadLength'] as num?)?.toDouble(),
      maxLoadLength: (json['maxLoadLength'] as num?)?.toDouble(),
      pickupLocation: (json['pickupLocation'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      pickupRadius: (json['pickupRadius'] as num?)?.toDouble(),
      dropLocation: (json['dropLocation'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      dropRadius: (json['dropRadius'] as num?)?.toDouble(),
      pickupLocationName: json['pickupLocationName'] as String?,
      dropLocationName: json['dropLocationName'] as String?,
    );

Map<String, dynamic> _$$_FiltersRequestToJson(_$_FiltersRequest instance) =>
    <String, dynamic>{
      'trailerTypes': instance.trailerTypes,
      'minWeight': instance.minWeight,
      'maxWeight': instance.maxWeight,
      'minLoadDistance': instance.minLoadDistance,
      'maxLoadDistance': instance.maxLoadDistance,
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'packageType': instance.packageType,
      'date': instance.date,
      'minRate': instance.minRate,
      'maxRate': instance.maxRate,
      'loadType': instance.loadType,
      'loadRequirement': instance.loadRequirement,
      'companyNames': instance.companyNames,
      'sortBy': instance.sortBy,
      'sortOrder': instance.sortOrder,
      'minLoadLength': instance.minLoadLength,
      'maxLoadLength': instance.maxLoadLength,
      'pickupLocation': instance.pickupLocation,
      'pickupRadius': instance.pickupRadius,
      'dropLocation': instance.dropLocation,
      'dropRadius': instance.dropRadius,
      'pickupLocationName': instance.pickupLocationName,
      'dropLocationName': instance.dropLocationName,
    };

_$_FiltersResponse _$$_FiltersResponseFromJson(Map<String, dynamic> json) =>
    _$_FiltersResponse(
      code: json['code'] as int,
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_FiltersResponseToJson(_$_FiltersResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Datum _$$_DatumFromJson(Map<String, dynamic> json) => _$_Datum(
      id: json['_id'] as String?,
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
          ?.map((e) => CreatedBy.fromJson(e as Map<String, dynamic>))
          .toList(),
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
      '_id': instance.id,
      'pickupLocation': instance.pickupLocation,
      'dropLocation': instance.dropLocation,
      'trailerType': instance.trailerType,
      'loadRequirement': instance.loadRequirement,
      'isCovered': instance.isCovered,
      'isSaved': instance.isSaved,
      'isPaid': instance.isPaid,
      'createdBy': instance.createdBy,
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

_$_CreatedBy _$$_CreatedByFromJson(Map<String, dynamic> json) => _$_CreatedBy(
      id: json['id'] as String?,
      fullName: json['fullName'] as String?,
      profilePicUrl: json['profilePicUrl'] as String?,
      mcNumber: json['mcNumber'],
      role: json['role'] as String?,
    );

Map<String, dynamic> _$$_CreatedByToJson(_$_CreatedBy instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'profilePicUrl': instance.profilePicUrl,
      'mcNumber': instance.mcNumber,
      'role': instance.role,
    };

_$_ActiveShipmentStop _$$_ActiveShipmentStopFromJson(
        Map<String, dynamic> json) =>
    _$_ActiveShipmentStop(
      pickupLocation: PickupLocation.fromJson(
          json['pickupLocation'] as Map<String, dynamic>),
      id: json['_id'] as String?,
      notes: json['notes'] as String,
    );

Map<String, dynamic> _$$_ActiveShipmentStopToJson(
        _$_ActiveShipmentStop instance) =>
    <String, dynamic>{
      'pickupLocation': instance.pickupLocation,
      '_id': instance.id,
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

_$_DefaultFilterRequest _$$_DefaultFilterRequestFromJson(
        Map<String, dynamic> json) =>
    _$_DefaultFilterRequest(
      pickupLocation: (json['pickupLocation'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$_DefaultFilterRequestToJson(
        _$_DefaultFilterRequest instance) =>
    <String, dynamic>{
      'pickupLocation': instance.pickupLocation,
      'date': instance.date,
    };
