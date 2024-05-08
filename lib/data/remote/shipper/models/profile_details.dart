import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_details.freezed.dart';
part 'profile_details.g.dart';

ProfileDetailsResponse profileDetailsResponseFromJson(String str) =>
    ProfileDetailsResponse.fromJson(json.decode(str));

String profileDetailsResponseToJson(ProfileDetailsResponse data) =>
    json.encode(data.toJson());

@freezed
class ProfileDetailsResponse with _$ProfileDetailsResponse {
  const factory ProfileDetailsResponse({
    required int code,
    required String message,
    required bool isSuccess,
    required Data data,
  }) = _ProfileDetailsResponse;

  factory ProfileDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileDetailsResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    String? profilePicUrl,
    required String role,
    required bool isEmailVerified,
    required dynamic passwordResetOtp,
    required String passwordResetTokenUrl,
    required List<dynamic> savedLoad,
    required String fullName,
    required String email,
    required String location,
    required String phoneNumber,
    required String id,
    String? companyName,
    String? corporateEmail,
    bool? premiumUser,
    bool? trialUser,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
