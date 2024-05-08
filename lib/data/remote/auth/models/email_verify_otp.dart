import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'email_verify_otp.freezed.dart';
part 'email_verify_otp.g.dart';

EmailVerifyOtpRequest emailVerifyOtpRequestFromJson(String str) =>
    EmailVerifyOtpRequest.fromJson(json.decode(str));

String emailVerifyOtpRequestToJson(EmailVerifyOtpRequest data) =>
    json.encode(data.toJson());

@freezed
class EmailVerifyOtpRequest with _$EmailVerifyOtpRequest {
  const factory EmailVerifyOtpRequest({
    String? otp,
  }) = _EmailVerifyOtpRequest;

  factory EmailVerifyOtpRequest.fromJson(Map<String, dynamic> json) =>
      _$EmailVerifyOtpRequestFromJson(json);
}

EmailVerifyOtpResponse emailVerifyOtpResponseFromJson(String str) =>
    EmailVerifyOtpResponse.fromJson(json.decode(str));

String emailVerifyOtpResponseToJson(EmailVerifyOtpResponse data) =>
    json.encode(data.toJson());

@freezed
class EmailVerifyOtpResponse with _$EmailVerifyOtpResponse {
  const factory EmailVerifyOtpResponse({
    required int code,
    required String message,
    required bool isSuccess,
    required Data data,
  }) = _EmailVerifyOtpResponse;

  factory EmailVerifyOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$EmailVerifyOtpResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data() = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
