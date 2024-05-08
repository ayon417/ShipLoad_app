// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_shipping_address.freezed.dart';
part 'get_shipping_address.g.dart';

GetShippingAddressResponse getShippingAddressResponseFromJson(String str) =>
    GetShippingAddressResponse.fromJson(json.decode(str));

String getShippingAddressResponseToJson(GetShippingAddressResponse data) =>
    json.encode(data.toJson());

@freezed
class GetShippingAddressResponse with _$GetShippingAddressResponse {
  const factory GetShippingAddressResponse({
    int? code,
    String? message,
    bool? isSuccess,
    List<Datum>? data,
  }) = _GetShippingAddressResponse;

  factory GetShippingAddressResponse.fromJson(Map<String, dynamic> json) =>
      _$GetShippingAddressResponseFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    @JsonKey(name: "_id") String? id,
    String? companyFullName,
    String? address,
    String? city,
    String? state,
    String? zip,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
