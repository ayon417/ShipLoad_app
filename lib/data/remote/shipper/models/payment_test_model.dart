import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_test_model.freezed.dart';
part 'payment_test_model.g.dart';

PaymentTestRequest paymentTestRequestFromJson(String str) =>
    PaymentTestRequest.fromJson(json.decode(str));

String paymentTestRequestToJson(PaymentTestRequest data) =>
    json.encode(data.toJson());

@freezed
class PaymentTestRequest with _$PaymentTestRequest {
  const factory PaymentTestRequest({
    required String productId,
    required String priceId,
  }) = _PaymentTestRequest;

  factory PaymentTestRequest.fromJson(Map<String, dynamic> json) =>
      _$PaymentTestRequestFromJson(json);
}

PaymentTestResponse paymentTestResponseFromJson(String str) =>
    PaymentTestResponse.fromJson(json.decode(str));

String paymentTestResponseToJson(PaymentTestResponse data) =>
    json.encode(data.toJson());

@freezed
class PaymentTestResponse with _$PaymentTestResponse {
  const factory PaymentTestResponse({
    required bool success,
    required int status,
    required String message,
    required Data data,
  }) = _PaymentTestResponse;

  factory PaymentTestResponse.fromJson(Map<String, dynamic> json) =>
      _$PaymentTestResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    required String session,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
