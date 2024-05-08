import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout.freezed.dart';
part 'logout.g.dart';

LogoutRequest logoutRequestFromJson(String str) =>
    LogoutRequest.fromJson(json.decode(str));

String logoutRequestToJson(LogoutRequest data) => json.encode(data.toJson());

@freezed
class LogoutRequest with _$LogoutRequest {
  const factory LogoutRequest({
    required String refreshToken,
  }) = _LogoutRequest;

  factory LogoutRequest.fromJson(Map<String, dynamic> json) =>
      _$LogoutRequestFromJson(json);
}

LogoutResponse logoutResponseFromJson(String str) =>
    LogoutResponse.fromJson(json.decode(str));

String logoutResponseToJson(LogoutResponse data) => json.encode(data.toJson());

@freezed
class LogoutResponse with _$LogoutResponse {
  const factory LogoutResponse({
    required int code,
    required String message,
    required bool isSuccess,
    required Data data,
  }) = _LogoutResponse;

  factory LogoutResponse.fromJson(Map<String, dynamic> json) =>
      _$LogoutResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data() = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
