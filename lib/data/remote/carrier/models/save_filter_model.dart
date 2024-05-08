import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'save_filter_model.freezed.dart';
part 'save_filter_model.g.dart';

SaveFilterResponse saveFilterResponseFromJson(String str) =>
    SaveFilterResponse.fromJson(json.decode(str));

String saveFilterResponseToJson(SaveFilterResponse data) =>
    json.encode(data.toJson());

@freezed
class SaveFilterResponse with _$SaveFilterResponse {
  const factory SaveFilterResponse({
    int? code,
    String? message,
    bool? isSuccess,
    Data? data,
  }) = _SaveFilterResponse;

  factory SaveFilterResponse.fromJson(Map<String, dynamic> json) =>
      _$SaveFilterResponseFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    List<String>? trailerTypes,
    List<dynamic>? loadRequirement,
    List<double>? pickupLocation,
    List<double>? dropLocation,
    List<String>? companyNames,
    bool? isSaved,
    String? id,
    String? filteredBy,
    int? minWeight,
    double? maxWeight,
    int? minLoadDistance,
    int? maxLoadDistance,
    int? minPrice,
    double? maxPrice,
    dynamic packageType,
    DateTime? date,
    int? minRate,
    double? maxRate,
    String? loadType,
    int? minLoadLength,
    double? maxLoadLength,
    double? pickupRadius,
    double? dropRadius,
    String? pickupLocationName,
    String? dropLocationName,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
