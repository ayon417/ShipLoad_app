import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_account.freezed.dart';
part 'delete_account.g.dart';

DeleteAccountResponse deleteAccountResponseFromJson(String str) =>
    DeleteAccountResponse.fromJson(json.decode(str));

String deleteAccountResponseToJson(DeleteAccountResponse data) =>
    json.encode(data.toJson());

@freezed
class DeleteAccountResponse with _$DeleteAccountResponse {
  const factory DeleteAccountResponse({
    int? code,
    String? message,
    bool? isSuccess,
    Data? data,
  }) = _DeleteAccountResponse;

  factory DeleteAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteAccountResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    String? fullName,
    String? profilePicUrl,
    String? mcNumber,
    String? role,
    bool? isEmailVerified,
    dynamic passwordResetOtp,
    String? passwordResetTokenUrl,
    List<dynamic>? savedLoad,
    List<dynamic>? savedFilter,
    bool? isMcNumberVerified,
    String? safetyScore,
    String? email,
    String? location,
    String? phoneNumber,
    String? companyName,
    String? corporateEmail,
    String? companyWebsite,
    String? stripeCustomerId,
    List<dynamic>? activeShippingAddress,
    List<dynamic>? bankAccount,
    List<dynamic>? recentSearchedLocations,
    String? otp,
    String? id,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
