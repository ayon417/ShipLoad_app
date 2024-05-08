import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_payment_requests.freezed.dart';
part 'get_payment_requests.g.dart';

PaymentRequestsResponse paymentRequestsResponseFromJson(String str) =>
    PaymentRequestsResponse.fromJson(json.decode(str));

String paymentRequestsResponseToJson(PaymentRequestsResponse data) =>
    json.encode(data.toJson());

@freezed
class PaymentRequestsResponse with _$PaymentRequestsResponse {
  const factory PaymentRequestsResponse({
    int? code,
    String? message,
    bool? isSuccess,
    List<Datum>? data,
  }) = _PaymentRequestsResponse;

  factory PaymentRequestsResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentRequestsResponseFromJson(json);
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
    String? requestedBy,
    RequestedTo? requestedTo,
    String? id,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

@freezed
class RequestedTo with _$RequestedTo {
  const factory RequestedTo({
    String? fullName,
    String? profilePicUrl,
    String? mcNumber,
    String? role,
    // bool? isEmailVerified,
    // Subscription? subscription,
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
  }) = _RequestedTo;

  factory RequestedTo.fromJson(Map<String, dynamic> json) =>
      _$RequestedToFromJson(json);
}
