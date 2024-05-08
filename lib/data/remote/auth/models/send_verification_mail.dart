import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'send_verification_mail.freezed.dart';
part 'send_verification_mail.g.dart';

SendVerificationMailRequest sendVerificationMailRequestFromJson(String str) =>
    SendVerificationMailRequest.fromJson(json.decode(str));

String sendVerificationMailRequestToJson(SendVerificationMailRequest data) =>
    json.encode(data.toJson());

@freezed
class SendVerificationMailRequest with _$SendVerificationMailRequest {
  const factory SendVerificationMailRequest({
    String? email,
  }) = _SendVerificationMailRequest;

  factory SendVerificationMailRequest.fromJson(Map<String, dynamic> json) =>
      _$SendVerificationMailRequestFromJson(json);
}

SendVerificationMailResponse sendVerificationMailResponseFromJson(String str) =>
    SendVerificationMailResponse.fromJson(json.decode(str));

String sendVerificationMailResponseToJson(SendVerificationMailResponse data) =>
    json.encode(data.toJson());

@freezed
class SendVerificationMailResponse with _$SendVerificationMailResponse {
  const factory SendVerificationMailResponse({
    required int code,
    required String message,
    required bool isSuccess,
    required Data data,
  }) = _SendVerificationMailResponse;

  factory SendVerificationMailResponse.fromJson(Map<String, dynamic> json) =>
      _$SendVerificationMailResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data() = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
