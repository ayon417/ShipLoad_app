import 'package:dartz/dartz.dart';
import 'package:shipload_app/core/api_client.dart';
import 'package:shipload_app/core/constants.dart';
import 'package:shipload_app/core/exceptions.dart';
import 'package:shipload_app/data/remote/carrier/carrier_repo.dart';
import 'package:shipload_app/data/remote/carrier/models/carrier_loads_filter.dart';
import 'package:shipload_app/data/remote/carrier/models/carrier_saved_loads.dart';
import 'package:shipload_app/data/remote/carrier/models/companies_list.dart';
import 'package:shipload_app/data/remote/carrier/models/create_payment_request.dart';
import 'package:shipload_app/data/remote/carrier/models/delete_save_search.dart';
import 'package:shipload_app/data/remote/carrier/models/get_loads_by_id.dart';
import 'package:shipload_app/data/remote/carrier/models/get_payment_requests.dart';
import 'package:shipload_app/data/remote/carrier/models/last_search_response.dart';
import 'package:shipload_app/data/remote/carrier/models/recent_filters.dart';
import 'package:shipload_app/data/remote/carrier/models/recent_loads.dart';
import 'package:shipload_app/data/remote/carrier/models/save_filter_model.dart';
import 'package:shipload_app/data/remote/carrier/models/save_unsave_loads.dart';
import 'package:shipload_app/data/remote/carrier/models/saved_filters_list.dart';
import 'package:shipload_app/services/shared_preference_service.dart';
import 'package:shipload_app/utils/logger.dart';

class CarrierRepoImpl implements CarrierRepo {
  final ApiClient _apiClient;

  CarrierRepoImpl(this._apiClient);

  @override
  Future<Either<ApiException, CarrierRecentLoads>> carrierRecentLoads(
    String token,
  ) async {
    try {
      final response = await _apiClient.getWithToken(
        "${AppConstants.baseUrl}/carrier/loads/recent-loads",
        token,
      );
      Logger.write(response.toString());
      return Right(CarrierRecentLoads.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, CarrierSavedLoads>> carrierSavedLoads(
    String token,
  ) async {
    try {
      final response = await _apiClient.getWithToken(
        "${AppConstants.baseUrl}/carrier/loads/saved-loads/${SharedPreferenceService.getString(SharedPreferenceService.USER_ID)}",
        token,
      );
      Logger.write(response.toString());
      return Right(CarrierSavedLoads.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, SaveUnsaveLoads>> saveUnsaveLoads(
    String token,
    String loadId,
  ) async {
    try {
      final response = await _apiClient.postWithToken(
        "${AppConstants.baseUrl}/carrier/loads/$loadId",
        {},
        token,
      );
      Logger.write(response.toString());
      return Right(SaveUnsaveLoads.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, FiltersResponse>> carrierLoadsFilter(
    String token,
    FiltersRequest filtersRequest,
  ) async {
    try {
      final response = await _apiClient.postWithToken(
        "${AppConstants.baseUrl}/carrier/loads/search-filter/${SharedPreferenceService.getString(SharedPreferenceService.USER_ID)}",
        filtersRequest.toJson(),
        token,
      );
      Logger.write(response.toString());
      return Right(FiltersResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, FiltersResponse>> carrierDefaultFilter(
    String token,
    DefaultFilterRequest filtersRequest,
  ) async {
    try {
      final response = await _apiClient.postWithToken(
        "${AppConstants.baseUrl}/carrier/loads/filter/default",
        filtersRequest.toJson(),
        token,
      );
      Logger.write(response.toString());
      return Right(FiltersResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, CompaniesListResponse>> getCompanies(
    String token,
  ) async {
    try {
      final response = await _apiClient.getWithToken(
        "${AppConstants.baseUrl}/carrier/get-company-names/${SharedPreferenceService.getString(SharedPreferenceService.USER_ID)}",
        token,
      );
      Logger.write(response.toString());
      return Right(CompaniesListResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, RecentFiltersResponse>> getRecentFilters(
    String token,
    // RecentFiltersRequest recentFiltersRequest,
  ) async {
    try {
      final response = await _apiClient.getWithToken(
        "${AppConstants.baseUrl}/carrier/loads/recent-filter/${SharedPreferenceService.getString(SharedPreferenceService.USER_ID)}",
        token,
      );
      Logger.write(response.toString());
      return Right(RecentFiltersResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, SaveFilterResponse>> saveFilter(
    String token,
    String filterID,
  ) async {
    try {
      final response = await _apiClient.postWithToken(
        "${AppConstants.baseUrl}/carrier/loads/save-recent-filter/$filterID",
        {},
        token,
      );
      Logger.write(response.toString());
      return Right(SaveFilterResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, SavedFiltersListResponse>> getSavedFiltersList(
    String token,
  ) async {
    try {
      final response = await _apiClient.getWithToken(
        "${AppConstants.baseUrl}/carrier/loads/saved-recent-filters/${SharedPreferenceService.getString(SharedPreferenceService.USER_ID)}",
        token,
      );
      Logger.write(response.toString());
      return Right(SavedFiltersListResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, SaveFilterResponse>> saveFilterFromSearch(
    String token,
    FiltersRequest filtersRequest,
  ) async {
    try {
      final response = await _apiClient.postWithToken(
        "${AppConstants.baseUrl}/carrier/loads/save-filter/${SharedPreferenceService.getString(SharedPreferenceService.USER_ID)}",
        filtersRequest.toJson(),
        token,
      );
      Logger.write(response.toString());
      return Right(SaveFilterResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, LastSearchResponse>> getRecentSearches(
    String token,
  ) async {
    try {
      final response = await _apiClient.getWithToken(
        "${AppConstants.baseUrl}/carrier/loads/recent-locations",
        token,
      );
      Logger.write(response.toString());
      return Right(LastSearchResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());

      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, CreatePaymentRequestResponse>>
      createPaymentRequest(
    String token,
    CreatePaymentRequest createPaymentRequest,
  ) async {
    try {
      final response = await _apiClient.postWithToken(
        "${AppConstants.baseUrl}/carrier/payments/create-payment-request",
        createPaymentRequest.toJson(),
        token,
      );
      Logger.write(response.toString());
      return Right(CreatePaymentRequestResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, GetLoadById>> getLoadById(
    GetLoadByIdRequest getLoadByIdRequest,
  ) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}/shipper/get-load-by-unique-id",
        getLoadByIdRequest.toJson(),
      );
      Logger.write(response.toString());
      return Right(GetLoadById.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, PaymentRequestsResponse>>
      getPaymentRequests() async {
    try {
      final response = await _apiClient.getWithToken(
        "${AppConstants.baseUrl}/carrier/payments/fetch-payment-request",
        SharedPreferenceService.getString(
              SharedPreferenceService.AUTH_TOKEN,
            ) ??
            "",
      );
      Logger.write(response.toString());
      return Right(PaymentRequestsResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, DeleteSaveSearchResponse>> deleteSavedSearch(
      DeleteSaveSearchRequest request) async {
    try {
      final response = await _apiClient.deleteWithToken(
        "${AppConstants.baseUrl}/carrier/loads/delete/recent-filter/${SharedPreferenceService.getString(
              SharedPreferenceService.USER_ID,
            ) ?? ""}",
        request.toJson(),
        SharedPreferenceService.getString(
              SharedPreferenceService.AUTH_TOKEN,
            ) ??
            "",
      );
      Logger.write(response.toString());
      return Right(DeleteSaveSearchResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}
