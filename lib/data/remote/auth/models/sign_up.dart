import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'sign_up.freezed.dart';
part 'sign_up.g.dart';

SignUpRequest signUpRequestFromJson(String str) =>
    SignUpRequest.fromJson(json.decode(str));

String signUpRequestToJson(SignUpRequest data) => json.encode(data.toJson());

@freezed
class SignUpRequest with _$SignUpRequest {
  const factory SignUpRequest({
    String? fullName,
    String? email,
    String? password,
    String? location,
    String? phoneNumber,
    String? role,
    String? companyName,
    String? mcNumber,
    String? corporateEmail,
    String? companyWebsite,
  }) = _SignUpRequest;

  factory SignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestFromJson(json);
}

SignUpResponse signUpResponseFromJson(String str) =>
    SignUpResponse.fromJson(json.decode(str));

String signUpResponseToJson(SignUpResponse data) => json.encode(data.toJson());

@freezed
class SignUpResponse with _$SignUpResponse {
  const factory SignUpResponse({
    required int code,
    required String message,
    required bool isSuccess,
    required Data data,
  }) = _SignUpResponse;

  factory SignUpResponse.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required String role,
    required bool isEmailVerified,
    required dynamic passwordResetOtp,
    required String passwordResetTokenUrl,
    required List<dynamic> savedLoad,
    required String fullName,
    required String email,
    required String location,
    required String id,
    String? companyName,
    String? mcNumber,
    String? corporateEmail,
    String? companyWebsite,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
