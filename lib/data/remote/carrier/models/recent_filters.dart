// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'recent_filters.freezed.dart';
part 'recent_filters.g.dart';

RecentFiltersRequest recentFiltersRequestFromJson(String str) =>
    RecentFiltersRequest.fromJson(json.decode(str));

String recentFiltersRequestToJson(RecentFiltersRequest data) =>
    json.encode(data.toJson());

@freezed
class RecentFiltersRequest with _$RecentFiltersRequest {
  const factory RecentFiltersRequest({
    int? page,
  }) = _RecentFiltersRequest;

  factory RecentFiltersRequest.fromJson(Map<String, dynamic> json) =>
      _$RecentFiltersRequestFromJson(json);
}

RecentFiltersResponse recentFiltersResponseFromJson(String str) =>
    RecentFiltersResponse.fromJson(json.decode(str));

String recentFiltersResponseToJson(RecentFiltersResponse data) =>
    json.encode(data.toJson());

@freezed
class RecentFiltersResponse with _$RecentFiltersResponse {
  const factory RecentFiltersResponse({
    required int code,
    required String message,
    required bool isSuccess,
    required List<Result> data,
  }) = _RecentFiltersResponse;

  factory RecentFiltersResponse.fromJson(Map<String, dynamic> json) =>
      _$RecentFiltersResponseFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    List<String>? trailerTypes,
    List<String>? companyNames,
    bool? isSaved,
    @JsonKey(name: "_id") String? id,
    String? filteredBy,
    double? minWeight,
    double? maxWeight,
    required List<double> pickupLocation,
    required List<double> dropLocation,
    double? minPrice,
    double? maxPrice,
    String? packageType,
    DateTime? date,
    double? minRate,
    double? maxRate,
    String? pickupLocationName,
    String? dropLocationName,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}
