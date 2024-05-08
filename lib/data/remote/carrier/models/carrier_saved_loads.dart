// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'carrier_saved_loads.freezed.dart';
part 'carrier_saved_loads.g.dart';

CarrierSavedLoads carrierSavedLoadsFromJson(String str) =>
    CarrierSavedLoads.fromJson(json.decode(str));

String carrierSavedLoadsToJson(CarrierSavedLoads data) =>
    json.encode(data.toJson());

@freezed
class CarrierSavedLoads with _$CarrierSavedLoads {
  const factory CarrierSavedLoads({
    required int code,
    required String message,
    required bool isSuccess,
    required List<Datum> data,
  }) = _CarrierSavedLoads;

  factory CarrierSavedLoads.fromJson(Map<String, dynamic> json) =>
      _$CarrierSavedLoadsFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    @JsonKey(name: "_id") String? id,
    required PickupLocation pickupLocation,
    required DropLocation dropLocation,
    required List<String> trailerType,
    required List<String> loadRequirement,
    required bool isCovered,
    required bool isSaved,
    required bool isPaid,
    List<CreatedBy>? createdBy,
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
    double? deadHead,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class CreatedBy with _$CreatedBy {
  const factory CreatedBy({
    String? id,
    String? fullName,
    String? profilePicUrl,
    dynamic mcNumber,
    String? role,
  }) = _CreatedBy;

  factory CreatedBy.fromJson(Map<String, dynamic> json) =>
      _$CreatedByFromJson(json);
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
