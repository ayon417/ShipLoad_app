// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'save_unsave_loads.freezed.dart';
part 'save_unsave_loads.g.dart';

SaveUnsaveLoads saveUnsaveLoadsFromJson(String str) =>
    SaveUnsaveLoads.fromJson(json.decode(str));

String saveUnsaveLoadsToJson(SaveUnsaveLoads data) =>
    json.encode(data.toJson());

@freezed
class SaveUnsaveLoads with _$SaveUnsaveLoads {
  const factory SaveUnsaveLoads({
    required int code,
    required String message,
    required bool isSuccess,
    required Data data,
  }) = _SaveUnsaveLoads;

  factory SaveUnsaveLoads.fromJson(Map<String, dynamic> json) =>
      _$SaveUnsaveLoadsFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required List<String> trailerType,
    required bool isCovered,
    required bool isSaved,
    // required List<String> createdBy,
    @JsonKey(name: "_id") String? id,
    // required String pickupLocation,
    // required String dropLocation,
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
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class ActiveShipmentStop with _$ActiveShipmentStop {
  const factory ActiveShipmentStop({
    @JsonKey(name: "_id") String? id,
    // required String pickupLocation,
    // required String emailAddress,
    // required DateTime estimatePickupDate,
    required String notes,
  }) = _ActiveShipmentStop;

  factory ActiveShipmentStop.fromJson(Map<String, dynamic> json) =>
      _$ActiveShipmentStopFromJson(json);
}
