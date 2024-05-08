import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'mc_search_model.freezed.dart';
part 'mc_search_model.g.dart';

McSearchRequest mcSearchRequestFromJson(String str) =>
    McSearchRequest.fromJson(json.decode(str));

String mcSearchRequestToJson(McSearchRequest data) =>
    json.encode(data.toJson());

@freezed
class McSearchRequest with _$McSearchRequest {
  const factory McSearchRequest({
    String? mcNumber,
  }) = _McSearchRequest;

  factory McSearchRequest.fromJson(Map<String, dynamic> json) =>
      _$McSearchRequestFromJson(json);
}

McSearchResponse mcSearchResponseFromJson(String str) =>
    McSearchResponse.fromJson(json.decode(str));

String mcSearchResponseToJson(McSearchResponse data) =>
    json.encode(data.toJson());

@freezed
class McSearchResponse with _$McSearchResponse {
  const factory McSearchResponse({
    int? code,
    String? message,
    bool? isSuccess,
    Data? data,
  }) = _McSearchResponse;

  factory McSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$McSearchResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    String? profilePicUrl,
    String? role,
    bool? isEmailVerified,
    dynamic passwordResetOtp,
    String? passwordResetTokenUrl,
    List<dynamic>? savedLoad,
    List<dynamic>? savedFilter,
    bool? isMcNumberVerified,
    String? safetyScore,
    String? riskScore,
    String? fullName,
    String? email,
    String? location,
    String? phoneNumber,
    String? companyName,
    String? mcNumber,
    String? dotNumber,
    String? stripeCustomerId,
    List<dynamic>? activeShippingAddress,
    List<dynamic>? bankAccount,
    String? id,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
