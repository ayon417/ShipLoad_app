import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'last_search_response.freezed.dart';
part 'last_search_response.g.dart';

LastSearchResponse lastSearchResponseFromJson(String str) =>
    LastSearchResponse.fromJson(json.decode(str));

String lastSearchResponseToJson(LastSearchResponse data) =>
    json.encode(data.toJson());

@freezed
class LastSearchResponse with _$LastSearchResponse {
  const factory LastSearchResponse({
    int? code,
    String? message,
    bool? isSuccess,
    List<Datum>? data,
  }) = _LastSearchResponse;

  factory LastSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$LastSearchResponseFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    String? type,
    List<double>? coordinates,
    // ignore: invalid_annotation_target
    @JsonKey(name: "_id") String? id,
    String? locationName,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
