import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_payment_request.freezed.dart';
part 'create_payment_request.g.dart';

CreatePaymentRequest createPaymentRequestFromJson(String str) =>
    CreatePaymentRequest.fromJson(json.decode(str));

String createPaymentRequestToJson(CreatePaymentRequest data) =>
    json.encode(data.toJson());

@freezed
class CreatePaymentRequest with _$CreatePaymentRequest {
  const factory CreatePaymentRequest({
    String? loadId,
    String? shipperId,
    int? rate,
    String? docUrl,
  }) = _CreatePaymentRequest;

  factory CreatePaymentRequest.fromJson(Map<String, dynamic> json) =>
      _$CreatePaymentRequestFromJson(json);
}

CreatePaymentRequestResponse createPaymentRequestResponseFromJson(String str) =>
    CreatePaymentRequestResponse.fromJson(json.decode(str));

String createPaymentRequestResponseToJson(CreatePaymentRequestResponse data) =>
    json.encode(data.toJson());

@freezed
class CreatePaymentRequestResponse with _$CreatePaymentRequestResponse {
  const factory CreatePaymentRequestResponse({
    int? code,
    String? message,
    bool? isSuccess,
    Data? data,
  }) = _CreatePaymentRequestResponse;

  factory CreatePaymentRequestResponse.fromJson(Map<String, dynamic> json) =>
      _$CreatePaymentRequestResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    bool? paymentStatus,
    String? paymentMode,
    String? loadId,
    String? shipperId,
    int? rate,
    String? docUrl,
    String? requestedBy,
    String? requestedTo,
    String? id,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
