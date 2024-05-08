import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'edit_load_model.freezed.dart';
part 'edit_load_model.g.dart';

EditLoadRequest editLoadRequestFromJson(String str) =>
    EditLoadRequest.fromJson(json.decode(str));

String editLoadRequestToJson(EditLoadRequest data) =>
    json.encode(data.toJson());

@freezed
class EditLoadRequest with _$EditLoadRequest {
  const factory EditLoadRequest({
    PickupLocation? pickupLocation,
    DropLocation? dropLocation,
    List<String>? trailerType,
    List<String>? loadRequirement,
    bool? isCovered,
    bool? isSaved,
    bool? isPaid,
    List<String>? createdBy,
    // ignore: invalid_annotation_target
    @JsonKey(name: "_id") String? id,
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
    String? loadType,
    List<ActiveShipmentStop>? activeShipmentStops,
    String? loadDocumentUrl,
    String? loadId,
    double? loadDistance,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _EditLoadRequest;

  factory EditLoadRequest.fromJson(Map<String, dynamic> json) =>
      _$EditLoadRequestFromJson(json);
}

@freezed
class ActiveShipmentStop with _$ActiveShipmentStop {
  const factory ActiveShipmentStop({
    required PickupLocation pickupLocation,
    // @JsonKey(name: "_id")  String? id,
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

EditLoadResponse editLoadResponseFromJson(String str) =>
    EditLoadResponse.fromJson(json.decode(str));

String editLoadResponseToJson(EditLoadResponse data) =>
    json.encode(data.toJson());

@freezed
class EditLoadResponse with _$EditLoadResponse {
  const factory EditLoadResponse({
    required int code,
    required String message,
    required bool isSuccess,
    required Data data,
  }) = _EditLoadResponse;

  factory EditLoadResponse.fromJson(Map<String, dynamic> json) =>
      _$EditLoadResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    PickupLocation? pickupLocation,
    DropLocation? dropLocation,
    List<String>? trailerType,
    List<String>? loadRequirement,
    bool? isCovered,
    bool? isSaved,
    bool? isPaid,
    List<String>? createdBy,
    String? id,
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
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
