// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'companies_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompaniesListResponse _$$_CompaniesListResponseFromJson(
        Map<String, dynamic> json) =>
    _$_CompaniesListResponse(
      code: json['code'] as int,
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CompaniesListResponseToJson(
        _$_CompaniesListResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Datum _$$_DatumFromJson(Map<String, dynamic> json) => _$_Datum(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_DatumToJson(_$_Datum instance) => <String, dynamic>{
      'name': instance.name,
    };
