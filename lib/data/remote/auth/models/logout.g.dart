// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LogoutRequest _$$_LogoutRequestFromJson(Map<String, dynamic> json) =>
    _$_LogoutRequest(
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$_LogoutRequestToJson(_$_LogoutRequest instance) =>
    <String, dynamic>{
      'refreshToken': instance.refreshToken,
    };

_$_LogoutResponse _$$_LogoutResponseFromJson(Map<String, dynamic> json) =>
    _$_LogoutResponse(
      code: json['code'] as int,
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LogoutResponseToJson(_$_LogoutResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data();

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{};
