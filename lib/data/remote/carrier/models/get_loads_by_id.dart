import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_loads_by_id.freezed.dart';
part 'get_loads_by_id.g.dart';

GetLoadById getLoadByIdFromJson(String str) =>
    GetLoadById.fromJson(json.decode(str));

String getLoadByIdToJson(GetLoadById data) => json.encode(data.toJson());

@freezed
class GetLoadById with _$GetLoadById {
  const factory GetLoadById({
    int? code,
    String? message,
    bool? isSuccess,
    Data? data,
  }) = _GetLoadById;

  factory GetLoadById.fromJson(Map<String, dynamic> json) =>
      _$GetLoadByIdFromJson(json);
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
    List<ShipperDetails>? createdBy,
    // ignore: invalid_annotation_target
    @JsonKey(name: '_id') String? id,
    String? packageType,
    String? phoneNumber,
    int? quantity,
    int? amount,
    String? companyName,
    int? ratePerMile,
    int? loadLength,
    DateTime? pickupDate,
    DateTime? dropDate,
    String? corporateEmail,
    String? loadType,
    List<dynamic>? activeShipmentStops,
    String? loadDocumentUrl,
    String? loadId,
    double? loadDistance,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class DropLocation with _$DropLocation {
  const factory DropLocation({
    String? type,
    List<double>? coordinates,
    String? dropLocationName,
  }) = _DropLocation;

  factory DropLocation.fromJson(Map<String, dynamic> json) =>
      _$DropLocationFromJson(json);
}

@freezed
class PickupLocation with _$PickupLocation {
  const factory PickupLocation({
    String? type,
    List<double>? coordinates,
    String? pickupLocationName,
  }) = _PickupLocation;

  factory PickupLocation.fromJson(Map<String, dynamic> json) =>
      _$PickupLocationFromJson(json);
}

@freezed
class ShipperDetails with _$ShipperDetails {
  const factory ShipperDetails({
    String? fullName,
    String? profilePicUrl,
    String? mcNumber,
    String? role,
    // bool? isEmailVerified,
    // dynamic passwordResetOtp,
    // String? passwordResetTokenUrl,
    // List<dynamic>? savedLoad,
    // List<dynamic>? savedFilter,
    // bool? isMcNumberVerified,
    // String? safetyScore,
    // bool? isAdminVerified,
    // bool? trialUser,
    // bool? premiumUser,
    String? email,
    String? location,
    String? phoneNumber,
    String? companyName,
    String? corporateEmail,
    String? companyWebsite,
    // String? stripeCustomerId,
    // List<dynamic>? activeShippingAddress,
    // List<dynamic>? bankAccount,
    // List<dynamic>? recentSearchedLocations,
    // String? otp,
    String? id,
  }) = _ShipperDetails;

  factory ShipperDetails.fromJson(Map<String, dynamic> json) =>
      _$ShipperDetailsFromJson(json);
}

GetLoadByIdRequest getLoadByIdRequestFromJson(String str) =>
    GetLoadByIdRequest.fromJson(json.decode(str));

String getLoadByIdRequestToJson(GetLoadByIdRequest data) =>
    json.encode(data.toJson());

@freezed
class GetLoadByIdRequest with _$GetLoadByIdRequest {
  const factory GetLoadByIdRequest({
    String? loadId,
  }) = _GetLoadByIdRequest;

  factory GetLoadByIdRequest.fromJson(Map<String, dynamic> json) =>
      _$GetLoadByIdRequestFromJson(json);
}
