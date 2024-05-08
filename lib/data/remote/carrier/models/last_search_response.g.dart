// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'last_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LastSearchResponse _$$_LastSearchResponseFromJson(
        Map<String, dynamic> json) =>
    _$_LastSearchResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
      isSuccess: json['isSuccess'] as bool?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_LastSearchResponseToJson(
        _$_LastSearchResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Datum _$$_DatumFromJson(Map<String, dynamic> json) => _$_Datum(
      type: json['type'] as String?,
      coordinates: (json['coordinates'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      id: json['_id'] as String?,
      locationName: json['locationName'] as String?,
    );

Map<String, dynamic> _$$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
      '_id': instance.id,
      'locationName': instance.locationName,
    };
