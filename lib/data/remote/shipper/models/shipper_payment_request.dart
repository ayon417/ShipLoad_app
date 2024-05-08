import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'shipper_payment_request.freezed.dart';
part 'shipper_payment_request.g.dart';

ShipperPaymentRequestsResponse shipperPaymentRequestsResponseFromJson(
  String str,
) =>
    ShipperPaymentRequestsResponse.fromJson(json.decode(str));

String shipperPaymentRequestsResponseToJson(
  ShipperPaymentRequestsResponse data,
) =>
    json.encode(data.toJson());

@freezed
class ShipperPaymentRequestsResponse with _$ShipperPaymentRequestsResponse {
  const factory ShipperPaymentRequestsResponse({
    int? code,
    String? message,
    bool? isSuccess,
    List<Datum>? data,
  }) = _ShipperPaymentRequestsResponse;

  factory ShipperPaymentRequestsResponse.fromJson(Map<String, dynamic> json) =>
      _$ShipperPaymentRequestsResponseFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    bool? paymentStatus,
    String? paymentMode,
    String? loadId,
    String? shipperId,
    int? rate,
    String? docUrl,
    RequestedBy? requestedBy,
    String? requestedTo,
    String? id,
    String? loadID,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class RequestedBy with _$RequestedBy {
  const factory RequestedBy({
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
    // String? stripeCustomerId,
    // List<dynamic>? activeShippingAddress,
    // List<dynamic>? bankAccount,
    // List<dynamic>? recentSearchedLocations,
    String? id,
  }) = _RequestedBy;

  factory RequestedBy.fromJson(Map<String, dynamic> json) =>
      _$RequestedByFromJson(json);
}
