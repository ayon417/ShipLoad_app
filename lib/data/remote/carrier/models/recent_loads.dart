// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'recent_loads.freezed.dart';
part 'recent_loads.g.dart';

CarrierRecentLoads carrierRecentLoadsFromJson(String str) =>
    CarrierRecentLoads.fromJson(json.decode(str));

String carrierRecentLoadsToJson(CarrierRecentLoads data) =>
    json.encode(data.toJson());

@freezed
class CarrierRecentLoads with _$CarrierRecentLoads {
  const factory CarrierRecentLoads({
    required int code,
    required String message,
    required bool isSuccess,
    required List<Datum> data,
  }) = _CarrierRecentLoads;

  factory CarrierRecentLoads.fromJson(Map<String, dynamic> json) =>
      _$CarrierRecentLoadsFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    required List<String> trailerType,
    required bool isCovered,
    required bool isSaved,
    required List<String> createdBy,
    @JsonKey(name: "_id") String? id,
    required String pickupLocation,
    required String dropLocation,
    required String packageType,
    required double quantity,
    required double amount,
    required String companyName,
    required double ratePerMile,
    required DateTime pickupDate,
    required DateTime dropDate,
    required List<ActiveShipmentStop> activeShipmentStops,
    required String loadDocumentUrl,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String loadId,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class ActiveShipmentStop with _$ActiveShipmentStop {
  const factory ActiveShipmentStop({
    @JsonKey(name: "_id") String? id,
    required String pickupLocation,
    required String emailAddress,
    required DateTime estimatePickupDate,
    required String notes,
  }) = _ActiveShipmentStop;

  factory ActiveShipmentStop.fromJson(Map<String, dynamic> json) =>
      _$ActiveShipmentStopFromJson(json);
}
