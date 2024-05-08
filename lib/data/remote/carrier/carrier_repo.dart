import 'package:dartz/dartz.dart';
import 'package:shipload_app/core/exceptions.dart';
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

abstract class CarrierRepo {
  Future<Either<ApiException, CarrierRecentLoads>> carrierRecentLoads(
    String token,
  );

  Future<Either<ApiException, CarrierSavedLoads>> carrierSavedLoads(
    String token,
  );

  Future<Either<ApiException, SaveUnsaveLoads>> saveUnsaveLoads(
    String token,
    String loadId,
  );

  Future<Either<ApiException, FiltersResponse>> carrierLoadsFilter(
    String token,
    FiltersRequest filtersRequest,
  );

  Future<Either<ApiException, FiltersResponse>> carrierDefaultFilter(
    String token,
    DefaultFilterRequest filtersRequest,
  );

  Future<Either<ApiException, CompaniesListResponse>> getCompanies(
    String token,
  );

  Future<Either<ApiException, RecentFiltersResponse>> getRecentFilters(
    String token,
    // RecentFiltersRequest recentFiltersRequest,
  );
  Future<Either<ApiException, SaveFilterResponse>> saveFilter(
    String token,
    String filterID,
  );

  Future<Either<ApiException, SavedFiltersListResponse>> getSavedFiltersList(
    String token,
  );

  Future<Either<ApiException, SaveFilterResponse>> saveFilterFromSearch(
    String token,
    FiltersRequest filtersRequest,
  );

  Future<Either<ApiException, LastSearchResponse>> getRecentSearches(
    String token,
  );

  Future<Either<ApiException, CreatePaymentRequestResponse>>
      createPaymentRequest(
    String token,
    CreatePaymentRequest createPaymentRequest,
  );

  Future<Either<ApiException, GetLoadById>> getLoadById(
    GetLoadByIdRequest getLoadByIdRequest,
  );

  Future<Either<ApiException, PaymentRequestsResponse>> getPaymentRequests();

  Future<Either<ApiException, DeleteSaveSearchResponse>> deleteSavedSearch(
      DeleteSaveSearchRequest request);
}
