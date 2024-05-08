import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_profile.freezed.dart';
part 'edit_profile.g.dart';

EditProfileRequest editProfileRequestFromJson(String str) =>
    EditProfileRequest.fromJson(json.decode(str));

String editProfileRequestToJson(EditProfileRequest data) =>
    json.encode(data.toJson());

@freezed
class EditProfileRequest with _$EditProfileRequest {
  const factory EditProfileRequest({
    String? name,
    String? email,
    String? phoneNumber,
    String? profilePicUrl,
  }) = _EditProfileRequest;

  factory EditProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$EditProfileRequestFromJson(json);
}

EditProfileResponse editProfileResponseFromJson(String str) =>
    EditProfileResponse.fromJson(json.decode(str));

String editProfileResponseToJson(EditProfileResponse data) =>
    json.encode(data.toJson());

@freezed
class EditProfileResponse with _$EditProfileResponse {
  const factory EditProfileResponse({
    required int code,
    required String message,
    required bool isSuccess,
    required Data data,
  }) = _EditProfileResponse;

  factory EditProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$EditProfileResponseFromJson(json);
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
    required String phoneNumber,
    required String id,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
