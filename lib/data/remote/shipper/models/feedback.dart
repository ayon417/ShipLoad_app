import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'feedback.freezed.dart';
part 'feedback.g.dart';

FeedbackRequest feedbackRequestFromJson(String str) =>
    FeedbackRequest.fromJson(json.decode(str));

String feedbackRequestToJson(FeedbackRequest data) =>
    json.encode(data.toJson());

@freezed
class FeedbackRequest with _$FeedbackRequest {
  const factory FeedbackRequest({
    String? feedback,
  }) = _FeedbackRequest;

  factory FeedbackRequest.fromJson(Map<String, dynamic> json) =>
      _$FeedbackRequestFromJson(json);
}

FeedbackResponse feedbackResponseFromJson(String str) =>
    FeedbackResponse.fromJson(json.decode(str));

String feedbackResponseToJson(FeedbackResponse data) =>
    json.encode(data.toJson());

@freezed
class FeedbackResponse with _$FeedbackResponse {
  const factory FeedbackResponse({
    required int code,
    required String message,
    required bool isSuccess,
    required Data data,
  }) = _FeedbackResponse;

  factory FeedbackResponse.fromJson(Map<String, dynamic> json) =>
      _$FeedbackResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required String userId,
    required String feedback,
    required String id,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
