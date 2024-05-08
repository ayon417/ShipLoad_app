// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_load.freezed.dart';
part 'create_load.g.dart';

CreateLoadRequest createLoadRequestFromJson(String str) =>
    CreateLoadRequest.fromJson(json.decode(str));

String createLoadRequestToJson(CreateLoadRequest data) =>
    json.encode(data.toJson());

@freezed
class CreateLoadRequest with _$CreateLoadRequest {
  const factory CreateLoadRequest({
    PickupLocation? pickupLocation,
    DropLocation? dropLocation,
    String? packageType,
    String? phoneNumber,
    double? quantity,
    double? amount,
    String? companyName,
    double? ratePerMile,
    double? loadLength,
    String? pickupDate,
    String? dropDate,
    String? corporateEmail,
    List<String>? loadRequirement,
    List<String>? trailerType,
    String? loadType,
    List<ActiveShipmentStop>? activeShipmentStops,
    String? loadDocumentUrl,
  }) = _CreateLoadRequest;

  factory CreateLoadRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateLoadRequestFromJson(json);
}

@freezed
class ActiveShipmentStop with _$ActiveShipmentStop {
  const factory ActiveShipmentStop({
    required PickupLocation pickupLocation,
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

CreateLoadResponse createLoadResponseFromJson(String str) =>
    CreateLoadResponse.fromJson(json.decode(str));

String createLoadResponseToJson(CreateLoadResponse data) =>
    json.encode(data.toJson());

@freezed
class CreateLoadResponse with _$CreateLoadResponse {
  const factory CreateLoadResponse({
    required int code,
    required String message,
    required bool isSuccess,
    required Data data,
  }) = _CreateLoadResponse;

  factory CreateLoadResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateLoadResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required PickupLocation pickupLocation,
    required DropLocation dropLocation,
    required List<String> trailerType,
    required List<String> loadRequirement,
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
    required List<ActiveShipmentStops> activeShipmentStops,
    required String loadDocumentUrl,
    required String loadId,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class ActiveShipmentStops with _$ActiveShipmentStops {
  const factory ActiveShipmentStops({
    required PickupLocation pickupLocation,
    @JsonKey(name: "_id") String? id,
    required String notes,
  }) = _ActiveShipmentStops;

  factory ActiveShipmentStops.fromJson(Map<String, dynamic> json) =>
      _$ActiveShipmentStopsFromJson(json);
}

// @freezed
// class PickupLocation with _$PickupLocation {
//   const factory PickupLocation({
//     required String type,
//     required List<double> coordinates,
//     required String pickupLocationName,
//   }) = _PickupLocation;

//   factory PickupLocation.fromJson(Map<String, dynamic> json) =>
//       _$PickupLocationFromJson(json);
// }

// @freezed
// class DropLocation with _$DropLocation {
//   const factory DropLocation({
//     required String type,
//     required List<double> coordinates,
//     required String dropLocationName,
//   }) = _DropLocation;

//   factory DropLocation.fromJson(Map<String, dynamic> json) =>
//       _$DropLocationFromJson(json);
// }
