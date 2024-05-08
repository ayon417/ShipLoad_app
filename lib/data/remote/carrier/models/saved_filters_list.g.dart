// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_filters_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SavedFiltersListResponse _$$_SavedFiltersListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SavedFiltersListResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SavedFiltersListResponseToJson(
        _$_SavedFiltersListResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Datum _$$_DatumFromJson(Map<String, dynamic> json) => _$_Datum(
      trailerTypes: (json['trailerTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      loadRequirement: (json['loadRequirement'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      pickupLocation: (json['pickupLocation'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      dropLocation: (json['dropLocation'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      companyNames: (json['companyNames'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isSaved: json['isSaved'] as bool?,
      id: json['_id'] as String?,
      filteredBy: json['filteredBy'] as String?,
      pickupLocationName: json['pickupLocationName'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      dropLocationName: json['dropLocationName'] as String?,
      minWeight: json['minWeight'] as int?,
      maxWeight: json['maxWeight'] as int?,
      minLoadDistance: json['minLoadDistance'] as int?,
      maxLoadDistance: json['maxLoadDistance'] as int?,
      minPrice: json['minPrice'] as int?,
      maxPrice: json['maxPrice'] as int?,
      packageType: json['packageType'],
      minRate: json['minRate'] as int?,
      maxRate: json['maxRate'] as int?,
      loadType: json['loadType'] as String?,
      minLoadLength: json['minLoadLength'] as int?,
      maxLoadLength: json['maxLoadLength'] as int?,
      pickupRadius: (json['pickupRadius'] as num?)?.toDouble(),
      dropRadius: (json['dropRadius'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      'trailerTypes': instance.trailerTypes,
      'loadRequirement': instance.loadRequirement,
      'pickupLocation': instance.pickupLocation,
      'dropLocation': instance.dropLocation,
      'companyNames': instance.companyNames,
      'isSaved': instance.isSaved,
      '_id': instance.id,
      'filteredBy': instance.filteredBy,
      'pickupLocationName': instance.pickupLocationName,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'date': instance.date?.toIso8601String(),
      'dropLocationName': instance.dropLocationName,
      'minWeight': instance.minWeight,
      'maxWeight': instance.maxWeight,
      'minLoadDistance': instance.minLoadDistance,
      'maxLoadDistance': instance.maxLoadDistance,
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'packageType': instance.packageType,
      'minRate': instance.minRate,
      'maxRate': instance.maxRate,
      'loadType': instance.loadType,
      'minLoadLength': instance.minLoadLength,
      'maxLoadLength': instance.maxLoadLength,
      'pickupRadius': instance.pickupRadius,
      'dropRadius': instance.dropRadius,
    };
