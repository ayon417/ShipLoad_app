import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'companies_list.freezed.dart';
part 'companies_list.g.dart';

CompaniesListResponse companiesListResponseFromJson(String str) =>
    CompaniesListResponse.fromJson(json.decode(str));

String companiesListResponseToJson(CompaniesListResponse data) =>
    json.encode(data.toJson());

@freezed
class CompaniesListResponse with _$CompaniesListResponse {
  const factory CompaniesListResponse({
    required int code,
    required String message,
    required bool isSuccess,
    required List<Datum> data,
  }) = _CompaniesListResponse;

  factory CompaniesListResponse.fromJson(Map<String, dynamic> json) =>
      _$CompaniesListResponseFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    required String name,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}
