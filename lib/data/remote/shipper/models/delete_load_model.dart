// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_load_model.freezed.dart';
part 'delete_load_model.g.dart';

DeleteLoadResponse deleteLoadResponseFromJson(String str) =>
    DeleteLoadResponse.fromJson(json.decode(str));

String deleteLoadResponseToJson(DeleteLoadResponse data) =>
    json.encode(data.toJson());

@freezed
class DeleteLoadResponse with _$DeleteLoadResponse {
  const factory DeleteLoadResponse({
    int? code,
    String? message,
    bool? isSuccess,
    Data? data,
  }) = _DeleteLoadResponse;

  factory DeleteLoadResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteLoadResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    List<String>? trailerType,
    bool? isCovered,
    List<String>? createdBy,
    @JsonKey(name: '_id') String? id,
    //  String pickupLocation,
    //  String dropLocation,
    String? packageType,
    double? quantity,
    double? amount,
    String? companyName,
    double? ratePerMile,
    DateTime? pickupDate,
    DateTime? dropDate,
    List<ActiveShipmentStop>? activeShipmentStops,
    String? loadDocumentUrl,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class ActiveShipmentStop with _$ActiveShipmentStop {
  const factory ActiveShipmentStop({
    @JsonKey(name: '_id') String? id,
    // String? pickupLocation,
    String? emailAddress,
    DateTime? estimatePickupDate,
    String? notes,
  }) = _ActiveShipmentStop;

  factory ActiveShipmentStop.fromJson(Map<String, dynamic> json) =>
      _$ActiveShipmentStopFromJson(json);
}
