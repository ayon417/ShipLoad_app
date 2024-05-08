import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_shipping_address.freezed.dart';
part 'delete_shipping_address.g.dart';

DeleteShippingAddressRequest deleteShippingAddressRequestFromJson(String str) =>
    DeleteShippingAddressRequest.fromJson(json.decode(str));

String deleteShippingAddressRequestToJson(DeleteShippingAddressRequest data) =>
    json.encode(data.toJson());

@freezed
class DeleteShippingAddressRequest with _$DeleteShippingAddressRequest {
  const factory DeleteShippingAddressRequest({
    List<String>? addressIds,
  }) = _DeleteShippingAddressRequest;

  factory DeleteShippingAddressRequest.fromJson(Map<String, dynamic> json) =>
      _$DeleteShippingAddressRequestFromJson(json);
}

DeleteShippingAddressResponse deleteShippingAddressResponseFromJson(
  String str,
) =>
    DeleteShippingAddressResponse.fromJson(json.decode(str));

String deleteShippingAddressResponseToJson(
  DeleteShippingAddressResponse data,
) =>
    json.encode(data.toJson());

@freezed
class DeleteShippingAddressResponse with _$DeleteShippingAddressResponse {
  const factory DeleteShippingAddressResponse({
    required int code,
    required String message,
    required bool isSuccess,
    required Data data,
  }) = _DeleteShippingAddressResponse;

  factory DeleteShippingAddressResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteShippingAddressResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    String? profilePicUrl,
    required String role,
    bool? isEmailVerified,
    dynamic passwordResetOtp,
    String? passwordResetTokenUrl,
    List<dynamic>? savedLoad,
    String? fullName,
    String? email,
    String? location,
    String? phoneNumber,
    String? companyName,
    String? corporateEmail,
    String? companyWebsite,
    List<ActiveShippingAddress>? activeShippingAddress,
    String? id,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class ActiveShippingAddress with _$ActiveShippingAddress {
  const factory ActiveShippingAddress({
    // ignore: invalid_annotation_target
    @JsonKey(name: "_id") String? id,
    required String companyFullName,
    required String address,
    required String city,
    required String state,
    required String zip,
  }) = _ActiveShippingAddress;

  factory ActiveShippingAddress.fromJson(Map<String, dynamic> json) =>
      _$ActiveShippingAddressFromJson(json);
}
