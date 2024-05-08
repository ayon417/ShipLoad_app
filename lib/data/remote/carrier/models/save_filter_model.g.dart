// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'save_filter_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SaveFilterResponse _$$_SaveFilterResponseFromJson(
        Map<String, dynamic> json) =>
    _$_SaveFilterResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SaveFilterResponseToJson(
        _$_SaveFilterResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      trailerTypes: (json['trailerTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      loadRequirement: json['loadRequirement'] as List<dynamic>?,
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
      id: json['id'] as String?,
      filteredBy: json['filteredBy'] as String?,
      minWeight: json['minWeight'] as int?,
      maxWeight: (json['maxWeight'] as num?)?.toDouble(),
      minLoadDistance: json['minLoadDistance'] as int?,
      maxLoadDistance: json['maxLoadDistance'] as int?,
      minPrice: json['minPrice'] as int?,
      maxPrice: (json['maxPrice'] as num?)?.toDouble(),
      packageType: json['packageType'],
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      minRate: json['minRate'] as int?,
      maxRate: (json['maxRate'] as num?)?.toDouble(),
      loadType: json['loadType'] as String?,
      minLoadLength: json['minLoadLength'] as int?,
      maxLoadLength: (json['maxLoadLength'] as num?)?.toDouble(),
      pickupRadius: (json['pickupRadius'] as num?)?.toDouble(),
      dropRadius: (json['dropRadius'] as num?)?.toDouble(),
      pickupLocationName: json['pickupLocationName'] as String?,
      dropLocationName: json['dropLocationName'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'trailerTypes': instance.trailerTypes,
      'loadRequirement': instance.loadRequirement,
      'pickupLocation': instance.pickupLocation,
      'dropLocation': instance.dropLocation,
      'companyNames': instance.companyNames,
      'isSaved': instance.isSaved,
      'id': instance.id,
      'filteredBy': instance.filteredBy,
      'minWeight': instance.minWeight,
      'maxWeight': instance.maxWeight,
      'minLoadDistance': instance.minLoadDistance,
      'maxLoadDistance': instance.maxLoadDistance,
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'packageType': instance.packageType,
      'date': instance.date?.toIso8601String(),
      'minRate': instance.minRate,
      'maxRate': instance.maxRate,
      'loadType': instance.loadType,
      'minLoadLength': instance.minLoadLength,
      'maxLoadLength': instance.maxLoadLength,
      'pickupRadius': instance.pickupRadius,
      'dropRadius': instance.dropRadius,
      'pickupLocationName': instance.pickupLocationName,
      'dropLocationName': instance.dropLocationName,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
