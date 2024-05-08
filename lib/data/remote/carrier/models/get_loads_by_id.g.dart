// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_loads_by_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetLoadById _$$_GetLoadByIdFromJson(Map<String, dynamic> json) =>
    _$_GetLoadById(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GetLoadByIdToJson(_$_GetLoadById instance) =>
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
          ?.map((e) => ShipperDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['_id'] as String?,
      packageType: json['packageType'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      quantity: json['quantity'] as int?,
      amount: json['amount'] as int?,
      companyName: json['companyName'] as String?,
      ratePerMile: json['ratePerMile'] as int?,
      loadLength: json['loadLength'] as int?,
      pickupDate: json['pickupDate'] == null
          ? null
          : DateTime.parse(json['pickupDate'] as String),
      dropDate: json['dropDate'] == null
          ? null
          : DateTime.parse(json['dropDate'] as String),
      corporateEmail: json['corporateEmail'] as String?,
      loadType: json['loadType'] as String?,
      activeShipmentStops: json['activeShipmentStops'] as List<dynamic>?,
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
    };

_$_DropLocation _$$_DropLocationFromJson(Map<String, dynamic> json) =>
    _$_DropLocation(
      type: json['type'] as String?,
      coordinates: (json['coordinates'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      dropLocationName: json['dropLocationName'] as String?,
    );

Map<String, dynamic> _$$_DropLocationToJson(_$_DropLocation instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
      'dropLocationName': instance.dropLocationName,
    };

_$_PickupLocation _$$_PickupLocationFromJson(Map<String, dynamic> json) =>
    _$_PickupLocation(
      type: json['type'] as String?,
      coordinates: (json['coordinates'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      pickupLocationName: json['pickupLocationName'] as String?,
    );

Map<String, dynamic> _$$_PickupLocationToJson(_$_PickupLocation instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
      'pickupLocationName': instance.pickupLocationName,
    };

_$_ShipperDetails _$$_ShipperDetailsFromJson(Map<String, dynamic> json) =>
    _$_ShipperDetails(
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

Map<String, dynamic> _$$_ShipperDetailsToJson(_$_ShipperDetails instance) =>
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

_$_GetLoadByIdRequest _$$_GetLoadByIdRequestFromJson(
        Map<String, dynamic> json) =>
    _$_GetLoadByIdRequest(
      loadId: json['loadId'] as String?,
    );

Map<String, dynamic> _$$_GetLoadByIdRequestToJson(
        _$_GetLoadByIdRequest instance) =>
    <String, dynamic>{
      'loadId': instance.loadId,
    };
