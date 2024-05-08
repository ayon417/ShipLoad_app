// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'shipper_history.freezed.dart';
part 'shipper_history.g.dart';

ShipperHistoryResponse shipperHistoryResponseFromJson(String str) =>
    ShipperHistoryResponse.fromJson(json.decode(str));

String shipperHistoryResponseToJson(ShipperHistoryResponse data) =>
    json.encode(data.toJson());

@freezed
class ShipperHistoryResponse with _$ShipperHistoryResponse {
  const factory ShipperHistoryResponse({
    required int code,
    required String message,
    required bool isSuccess,
    required Data data,
  }) = _ShipperHistoryResponse;

  factory ShipperHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$ShipperHistoryResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required List<Result> results,
    required int page,
    required int limit,
    required int totalPages,
    required int totalResults,
    required int currentPage,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    PickupLocation? pickupLocation,
    DropLocation? dropLocation,
    List<String>? trailerType,
    List<String>? loadRequirement,
    bool? isCovered,
    bool? isSaved,
    bool? isPaid,
    List<String>? createdBy,
    @JsonKey(name: "_id") String? id,
    String? packageType,
    String? phoneNumber,
    double? quantity,
    double? amount,
    String? companyName,
    double? ratePerMile,
    double? loadLength,
    DateTime? pickupDate,
    DateTime? dropDate,
    String? corporateEmail,
    String? loadType,
    List<ActiveShipmentStop>? activeShipmentStops,
    String? loadDocumentUrl,
    String? loadId,
    DateTime? createdAt,
    DateTime? updatedAt,
    double? loadDistance,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class ActiveShipmentStop with _$ActiveShipmentStop {
  const factory ActiveShipmentStop({
    required PickupLocation pickupLocation,
    @JsonKey(name: "_id") String? id,
    required String notes,
  }) = _ActiveShipmentStop;

  factory ActiveShipmentStop.fromJson(Map<String, dynamic> json) =>
      _$ActiveShipmentStopFromJson(json);
}

@freezed
class PickupLocation with _$PickupLocation {
  const factory PickupLocation({
    required String type,
    required List<double> coordinates,
    required String pickupLocationName,
  }) = _PickupLocation;

  factory PickupLocation.fromJson(Map<String, dynamic> json) =>
      _$PickupLocationFromJson(json);
}

@freezed
class DropLocation with _$DropLocation {
  const factory DropLocation({
    required String type,
    required List<double> coordinates,
    required String dropLocationName,
  }) = _DropLocation;

  factory DropLocation.fromJson(Map<String, dynamic> json) =>
      _$DropLocationFromJson(json);
}
