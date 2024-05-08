// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'is_covered.freezed.dart';
part 'is_covered.g.dart';

IsCoveredRequest isCoveredRequestFromJson(String str) =>
    IsCoveredRequest.fromJson(json.decode(str));

String isCoveredRequestToJson(IsCoveredRequest data) =>
    json.encode(data.toJson());

@freezed
class IsCoveredRequest with _$IsCoveredRequest {
  const factory IsCoveredRequest({
    bool? isCovered,
  }) = _IsCoveredRequest;

  factory IsCoveredRequest.fromJson(Map<String, dynamic> json) =>
      _$IsCoveredRequestFromJson(json);
}

IsCoveredResponse isCoveredResponseFromJson(String str) =>
    IsCoveredResponse.fromJson(json.decode(str));

String isCoveredResponseToJson(IsCoveredResponse data) =>
    json.encode(data.toJson());

@freezed
class IsCoveredResponse with _$IsCoveredResponse {
  const factory IsCoveredResponse({
    required int code,
    required String message,
    required bool isSuccess,
    required Data data,
  }) = _IsCoveredResponse;

  factory IsCoveredResponse.fromJson(Map<String, dynamic> json) =>
      _$IsCoveredResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required PickupLocation pickupLocation,
    required DropLocation dropLocation,
    required List<String> trailerType,
    required List<dynamic> loadRequirement,
    required bool isCovered,
    required bool isSaved,
    required bool isPaid,
    required List<String> createdBy,
    @JsonKey(name: "_id") String? id,
    required String packageType,
    required String phoneNumber,
    required double quantity,
    required double amount,
    required String companyName,
    required double ratePerMile,
    required double loadLength,
    required DateTime pickupDate,
    required DateTime dropDate,
    required String corporateEmail,
    required String loadType,
    required List<ActiveShipmentStop> activeShipmentStops,
    required String loadDocumentUrl,
    required String loadId,
    required double loadDistance,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
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
