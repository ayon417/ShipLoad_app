import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'delete_save_search.freezed.dart';
part 'delete_save_search.g.dart';

DeleteSaveSearchRequest deleteSaveSearchRequestFromJson(String str) =>
    DeleteSaveSearchRequest.fromJson(json.decode(str));

String deleteSaveSearchRequestToJson(DeleteSaveSearchRequest data) =>
    json.encode(data.toJson());

@freezed
class DeleteSaveSearchRequest with _$DeleteSaveSearchRequest {
  const factory DeleteSaveSearchRequest({
    List<String>? filterIds,
  }) = _DeleteSaveSearchRequest;

  factory DeleteSaveSearchRequest.fromJson(Map<String, dynamic> json) =>
      _$DeleteSaveSearchRequestFromJson(json);
}

DeleteSaveSearchResponse deleteSaveSearchResponseFromJson(String str) =>
    DeleteSaveSearchResponse.fromJson(json.decode(str));

String deleteSaveSearchResponseToJson(DeleteSaveSearchResponse data) =>
    json.encode(data.toJson());

@freezed
class DeleteSaveSearchResponse with _$DeleteSaveSearchResponse {
  const factory DeleteSaveSearchResponse({
    int? code,
    String? message,
  }) = _DeleteSaveSearchResponse;

  factory DeleteSaveSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteSaveSearchResponseFromJson(json);
}
