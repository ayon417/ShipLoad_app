// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'shipper_get_all_loads.freezed.dart';
part 'shipper_get_all_loads.g.dart';

ShipperGetAllLoadsResponse shipperGetAllLoadsResponseFromJson(String str) =>
    ShipperGetAllLoadsResponse.fromJson(json.decode(str));

String shipperGetAllLoadsResponseToJson(ShipperGetAllLoadsResponse data) =>
    json.encode(data.toJson());

@freezed
class ShipperGetAllLoadsResponse with _$ShipperGetAllLoadsResponse {
  const factory ShipperGetAllLoadsResponse({
    required int code,
    required String message,
    required bool isSuccess,
    required List<Datum> data,
  }) = _ShipperGetAllLoadsResponse;

  factory ShipperGetAllLoadsResponse.fromJson(Map<String, dynamic> json) =>
      _$ShipperGetAllLoadsResponseFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
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
    double? loadDistance,
    DateTime? createdAt,
    DateTime? updatedAt,
    double? deadHead,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class ActiveShipmentStop with _$ActiveShipmentStop {
  const factory ActiveShipmentStop({
    @JsonKey(name: "_id") String? id,
    required PickupLocation pickupLocation,
    required String notes,
  }) = _ActiveShipmentStop;

  factory ActiveShipmentStop.fromJson(Map<String, dynamic> json) =>
      _$ActiveShipmentStopFromJson(json);
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

ShipperLoadsRequest shipperLoadsRequestFromJson(String str) =>
    ShipperLoadsRequest.fromJson(json.decode(str));

String shipperLoadsRequestToJson(ShipperLoadsRequest data) =>
    json.encode(data.toJson());

@freezed
class ShipperLoadsRequest with _$ShipperLoadsRequest {
  const factory ShipperLoadsRequest({
    bool? locationFilter,
    List<double>? pickupLocation,
  }) = _ShipperLoadsRequest;

  factory ShipperLoadsRequest.fromJson(Map<String, dynamic> json) =>
      _$ShipperLoadsRequestFromJson(json);
}
