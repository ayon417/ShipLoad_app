import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_shipping_address.freezed.dart';
part 'create_shipping_address.g.dart';

CreateShippingAddress createShippingAddressFromJson(String str) =>
    CreateShippingAddress.fromJson(json.decode(str));

String createShippingAddressToJson(CreateShippingAddress data) =>
    json.encode(data.toJson());

@freezed
class CreateShippingAddress with _$CreateShippingAddress {
  const factory CreateShippingAddress({
    String? companyFullName,
    String? address,
    String? city,
    String? state,
    String? zip,
  }) = _CreateShippingAddress;

  factory CreateShippingAddress.fromJson(Map<String, dynamic> json) =>
      _$CreateShippingAddressFromJson(json);
}

CreateShippingAddressResponse createShippingAddressResponseFromJson(
  String str,
) =>
    CreateShippingAddressResponse.fromJson(json.decode(str));

String createShippingAddressResponseToJson(
  CreateShippingAddressResponse data,
) =>
    json.encode(data.toJson());

@freezed
class CreateShippingAddressResponse with _$CreateShippingAddressResponse {
  const factory CreateShippingAddressResponse({
    required int code,
    required String message,
    required bool isSuccess,
    required Data data,
  }) = _CreateShippingAddressResponse;

  factory CreateShippingAddressResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateShippingAddressResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required String companyFullName,
    required String address,
    required String city,
    required String state,
    required String zip,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
