import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'saved_filters_list.freezed.dart';
part 'saved_filters_list.g.dart';

SavedFiltersListResponse savedFiltersListResponseFromJson(String str) =>
    SavedFiltersListResponse.fromJson(json.decode(str));

String savedFiltersListResponseToJson(SavedFiltersListResponse data) =>
    json.encode(data.toJson());

@freezed
class SavedFiltersListResponse with _$SavedFiltersListResponse {
  const factory SavedFiltersListResponse({
    int? code,
    String? message,
    bool? isSuccess,
    List<Datum>? data,
  }) = _SavedFiltersListResponse;

  factory SavedFiltersListResponse.fromJson(Map<String, dynamic> json) =>
      _$SavedFiltersListResponseFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    List<String>? trailerTypes,
    List<String>? loadRequirement,
    List<double>? pickupLocation,
    List<double>? dropLocation,
    List<String>? companyNames,
    bool? isSaved,
    // ignore: invalid_annotation_target
    @JsonKey(name: '_id') String? id,
    String? filteredBy,
    String? pickupLocationName,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? date,
    String? dropLocationName,
    int? minWeight,
    int? maxWeight,
    int? minLoadDistance,
    int? maxLoadDistance,
    int? minPrice,
    int? maxPrice,
    dynamic packageType,
    int? minRate,
    int? maxRate,
    String? loadType,
    int? minLoadLength,
    int? maxLoadLength,
    double? pickupRadius,
    double? dropRadius,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
