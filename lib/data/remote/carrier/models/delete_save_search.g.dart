// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_save_search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DeleteSaveSearchRequest _$$_DeleteSaveSearchRequestFromJson(
        Map<String, dynamic> json) =>
    _$_DeleteSaveSearchRequest(
      filterIds: (json['filterIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_DeleteSaveSearchRequestToJson(
        _$_DeleteSaveSearchRequest instance) =>
    <String, dynamic>{
      'filterIds': instance.filterIds,
    };

_$_DeleteSaveSearchResponse _$$_DeleteSaveSearchResponseFromJson(
        Map<String, dynamic> json) =>
    _$_DeleteSaveSearchResponse(
      code: json['code'] as int?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$_DeleteSaveSearchResponseToJson(
        _$_DeleteSaveSearchResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };
