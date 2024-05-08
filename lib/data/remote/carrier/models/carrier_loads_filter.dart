// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'carrier_loads_filter.freezed.dart';
part 'carrier_loads_filter.g.dart';

FiltersRequest filtersRequestFromJson(String str) =>
    FiltersRequest.fromJson(json.decode(str));

String filtersRequestToJson(FiltersRequest data) => json.encode(data.toJson());

@freezed
class FiltersRequest with _$FiltersRequest {
  const factory FiltersRequest({
    List<dynamic>? trailerTypes,
    double? minWeight,
    double? maxWeight,
    double? minLoadDistance,
    double? maxLoadDistance,
    double? minPrice,
    double? maxPrice,
    String? packageType,
    String? date,
    double? minRate,
    double? maxRate,
    String? loadType,
    List<String>? loadRequirement,
    List<String>? companyNames,
    List<String>? sortBy,
    String? sortOrder,
    double? minLoadLength,
    double? maxLoadLength,
    List<double>? pickupLocation,
    double? pickupRadius,
    List<double>? dropLocation,
    double? dropRadius,
    String? pickupLocationName,
    String? dropLocationName,
  }) = _FiltersRequest;

  factory FiltersRequest.fromJson(Map<String, dynamic> json) =>
      _$FiltersRequestFromJson(json);
}

FiltersResponse filtersResponseFromJson(String str) =>
    FiltersResponse.fromJson(json.decode(str));

String filtersResponseToJson(FiltersResponse data) =>
    json.encode(data.toJson());

@freezed
class FiltersResponse with _$FiltersResponse {
  const factory FiltersResponse({
    required int code,
    required String message,
    required bool isSuccess,
    required List<Datum> data,
  }) = _FiltersResponse;

  factory FiltersResponse.fromJson(Map<String, dynamic> json) =>
      _$FiltersResponseFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    @JsonKey(name: "_id") String? id,
    PickupLocation? pickupLocation,
    DropLocation? dropLocation,
    List<String>? trailerType,
    List<String>? loadRequirement,
    bool? isCovered,
    bool? isSaved,
    bool? isPaid,
    List<CreatedBy>? createdBy,
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

DefaultFilterRequest defaultFilterRequestFromJson(String str) =>
    DefaultFilterRequest.fromJson(json.decode(str));

String defaultFilterRequestToJson(DefaultFilterRequest data) =>
    json.encode(data.toJson());

@freezed
class DefaultFilterRequest with _$DefaultFilterRequest {
  const factory DefaultFilterRequest({
    List<int>? pickupLocation,
    String? date,
  }) = _DefaultFilterRequest;

  factory DefaultFilterRequest.fromJson(Map<String, dynamic> json) =>
      _$DefaultFilterRequestFromJson(json);
}
