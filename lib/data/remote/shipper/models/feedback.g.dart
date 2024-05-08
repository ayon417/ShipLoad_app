// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeedbackRequest _$$_FeedbackRequestFromJson(Map<String, dynamic> json) =>
    _$_FeedbackRequest(
      feedback: json['feedback'] as String?,
    );

Map<String, dynamic> _$$_FeedbackRequestToJson(_$_FeedbackRequest instance) =>
    <String, dynamic>{
      'feedback': instance.feedback,
    };

_$_FeedbackResponse _$$_FeedbackResponseFromJson(Map<String, dynamic> json) =>
    _$_FeedbackResponse(
      code: json['code'] as int,
      message: json['message'] as String,
      isSuccess: json['isSuccess'] as bool,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FeedbackResponseToJson(_$_FeedbackResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'isSuccess': instance.isSuccess,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      userId: json['userId'] as String,
      feedback: json['feedback'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'userId': instance.userId,
      'feedback': instance.feedback,
      'id': instance.id,
    };
