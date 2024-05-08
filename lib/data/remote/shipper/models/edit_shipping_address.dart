import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_shipping_address.freezed.dart';
part 'edit_shipping_address.g.dart';

EditShippingAddressRequest editShippingAddressRequestFromJson(String str) =>
    EditShippingAddressRequest.fromJson(json.decode(str));

String editShippingAddressRequestToJson(EditShippingAddressRequest data) =>
    json.encode(data.toJson());

@freezed
class EditShippingAddressRequest with _$EditShippingAddressRequest {
  const factory EditShippingAddressRequest({
    String? companyFullName,
    String? address,
    String? city,
    String? state,
    String? zip,
  }) = _EditShippingAddressRequest;

  factory EditShippingAddressRequest.fromJson(Map<String, dynamic> json) =>
      _$EditShippingAddressRequestFromJson(json);
}

EditShippingAddressResponse editShippingAddressResponseFromJson(String str) =>
    EditShippingAddressResponse.fromJson(json.decode(str));

String editShippingAddressResponseToJson(EditShippingAddressResponse data) =>
    json.encode(data.toJson());

@freezed
class EditShippingAddressResponse with _$EditShippingAddressResponse {
  const factory EditShippingAddressResponse({
    required int code,
    required String message,
    required bool isSuccess,
    required Data data,
  }) = _EditShippingAddressResponse;

  factory EditShippingAddressResponse.fromJson(Map<String, dynamic> json) =>
      _$EditShippingAddressResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    // ignore: invalid_annotation_target
    @JsonKey(name: "_id") String? id,
    required String companyFullName,
    required String address,
    required String city,
    required String state,
    required String zip,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
