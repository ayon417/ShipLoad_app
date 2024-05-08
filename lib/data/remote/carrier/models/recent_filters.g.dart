// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recent_filters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecentFiltersRequest _$$_RecentFiltersRequestFromJson(
        Map<String, dynamic> json) =>
    _$_RecentFiltersRequest(
      page: json['page'] as int?,
    );

Map<String, dynamic> _$$_RecentFiltersRequestToJson(
        _$_RecentFiltersRequest instance) =>
    <String, dynamic>{
      'page': instance.page,
    };

_$_RecentFiltersResponse _$$_RecentFiltersResponseFromJson(
        Map<String, dynamic> json) =>
    _$_RecentFiltersResponse(
      code: json['code'] as int,
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RecentFiltersResponseToJson(
        _$_RecentFiltersResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      trailerTypes: (json['trailerTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      companyNames: (json['companyNames'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isSaved: json['isSaved'] as bool?,
      id: json['_id'] as String?,
      filteredBy: json['filteredBy'] as String?,
      minWeight: (json['minWeight'] as num?)?.toDouble(),
      maxWeight: (json['maxWeight'] as num?)?.toDouble(),
      pickupLocation: (json['pickupLocation'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      dropLocation: (json['dropLocation'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      minPrice: (json['minPrice'] as num?)?.toDouble(),
      maxPrice: (json['maxPrice'] as num?)?.toDouble(),
      packageType: json['packageType'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      minRate: (json['minRate'] as num?)?.toDouble(),
      maxRate: (json['maxRate'] as num?)?.toDouble(),
      pickupLocationName: json['pickupLocationName'] as String?,
      dropLocationName: json['dropLocationName'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'trailerTypes': instance.trailerTypes,
      'companyNames': instance.companyNames,
      'isSaved': instance.isSaved,
      '_id': instance.id,
      'filteredBy': instance.filteredBy,
      'minWeight': instance.minWeight,
      'maxWeight': instance.maxWeight,
      'pickupLocation': instance.pickupLocation,
      'dropLocation': instance.dropLocation,
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'packageType': instance.packageType,
      'date': instance.date?.toIso8601String(),
      'minRate': instance.minRate,
      'maxRate': instance.maxRate,
      'pickupLocationName': instance.pickupLocationName,
      'dropLocationName': instance.dropLocationName,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
