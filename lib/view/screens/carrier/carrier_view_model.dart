import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
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
import 'package:shipload_app/data/remote/carrier/models/save_unsave_loads.dart';
import 'package:shipload_app/data/remote/carrier/models/saved_filters_list.dart';
import 'package:shipload_app/domain/providers/repository_provider.dart';
import 'package:shipload_app/helpers/base_screen_view.dart';
import 'package:shipload_app/helpers/base_view_model.dart';
import 'package:shipload_app/services/shared_preference_service.dart';

final carrierViewModel = ChangeNotifierProvider(
  (ref) => CarrierViewModel(
    ref.read(carrierRepositoryProvider),
  ),
);

class CarrierViewModel extends BaseViewModel<BaseScreenView> {
  void showSnackbar(String message) {
    view?.showSnackbar(message, color: Colors.black);
  }

  final CarrierRepo _carrierRepository;
  CarrierViewModel(this._carrierRepository);
  // final UserDetailService _userDetailService = getIt<UserDetailService>();

  // LoginRequest loginRequest = const LoginRequest();
  CarrierRecentLoads? _carrierRecentLoads;
  CarrierRecentLoads? get carrierRecentLoads => _carrierRecentLoads;

  CarrierSavedLoads? _carrierSavedLoads;
  CarrierSavedLoads? get carrierSavedLoads => _carrierSavedLoads;

  SaveUnsaveLoads? _saveUnsaveLoads;
  SaveUnsaveLoads? get saveUnsaveLoads => _saveUnsaveLoads;

  FiltersResponse? _filtersResponse;
  FiltersResponse? get filtersResponse => _filtersResponse;

  CompaniesListResponse? _companiesListResponse;
  CompaniesListResponse? get companiesListResponse => _companiesListResponse;

  RecentFiltersResponse? _recentFiltersResponse;
  RecentFiltersResponse? get recentFiltersResponse => _recentFiltersResponse;

  SavedFiltersListResponse? _savedFiltersListResponse;
  SavedFiltersListResponse? get savedFiltersListResponse =>
      _savedFiltersListResponse;

  LastSearchResponse? _lastSearchResponse;
  LastSearchResponse? get lastSearchResponse => _lastSearchResponse;

  GetLoadById? _getLoadById;
  GetLoadById? get getLoadById => _getLoadById;

  PaymentRequestsResponse? _paymentRequestsResponse;
  PaymentRequestsResponse? get paymentRequestsResponse =>
      _paymentRequestsResponse;

  bool _isVerified = false;
  bool get isVerified => _isVerified;
  set isVerified(bool value) {
    _isVerified = value;
    notifyListeners();
  }

  double _minWeight = 0;
  double get minWeight => _minWeight;
  set minWeight(double value) {
    _minWeight = value;
    notifyListeners();
  }

  double _maxWeight = 80000;
  double get maxWeight => _maxWeight;
  set maxWeight(double value) {
    _maxWeight = value;
    notifyListeners();
  }

  double _minPrice = 20;
  double get minPrice => _minPrice;
  set minPrice(double value) {
    _minPrice = value;
    notifyListeners();
  }

  double _maxPrice = 18000;
  double get maxPrice => _maxPrice;
  set maxPrice(double value) {
    _maxPrice = value;
    notifyListeners();
  }

  double _minRate = 0;
  double get minRate => _minRate;
  set minRate(double value) {
    _minRate = value;
    notifyListeners();
  }

  double _maxRate = 500;
  double get maxRate => _maxRate;
  set maxRate(double value) {
    _maxRate = value;
  }

  double _minLoadDistance = 0;
  double get minLoadDistance => _minLoadDistance;
  set minLoadDistance(double value) {
    _minLoadDistance = value;
    notifyListeners();
  }

  double _maxLoadDistance = 4000;
  double get maxLoadDistance => _maxLoadDistance;
  set maxLoadDistance(double value) {
    _maxLoadDistance = value;
    notifyListeners();
  }

  double? _pickupRadius = 0.0;
  double? get pickupRadius => _pickupRadius;
  set pickupRadius(double? value) {
    _pickupRadius = value;
    notifyListeners();
  }

  double _minLoadLength = 0.0;
  double get minLoadLength => _minLoadLength;
  set minLoadLength(double value) {
    _minLoadLength = value;
    notifyListeners();
  }

  double _maxLoadLength = 100.0;
  double get maxLoadLength => _maxLoadLength;
  set maxLoadLength(double value) {
    _maxLoadLength = value;
    notifyListeners();
  }

  double _dropRadius = 0.0;
  double get dropRadius => _dropRadius;
  set dropRadius(double value) {
    _dropRadius = value;
    notifyListeners();
  }

  List<double> _pickupLocation = [];
  List<double> get pickupLocation => _pickupLocation;
  set pickupLocation(List<double> value) {
    _pickupLocation = value;
    notifyListeners();
  }

  List<double> _dropLocation = [];
  List<double> get dropLocation => _dropLocation;
  set dropLocation(List<double> value) {
    _dropLocation = value;
    notifyListeners();
  }

  String _pickupLocationName = "";
  String get pickupLocationName => _pickupLocationName;
  set pickupLocationName(String value) {
    _pickupLocationName = value;
    notifyListeners();
  }

  String _dropLocationName = "";
  String get dropLocationName => _dropLocationName;
  set dropLocationName(String value) {
    _dropLocationName = value;
    notifyListeners();
  }

  int requests = 0;
  int get approvedCount => approved;
  int approved = 0;
  int get requestsCount => requests;

  int loadType = -1;
  List<bool> _trailerValues = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  changeTrailerValue(int index) {
    _trailerValues[index] = !_trailerValues[index];
    notifyListeners();
  }

  List<bool> get trailerValues => _trailerValues;

  List<String> trailerSelected = [];
  List<String> loadRequirementsSelected = [];

  void addLoadRequirement(String value) {
    loadRequirementsSelected.add(value);
    notifyListeners();
  }

  void removeLoadRequirement(String value) {
    loadRequirementsSelected.remove(value);
    notifyListeners();
  }

  void clearLoadRequirements() {
    loadRequirementsSelected.clear();
    notifyListeners();
  }

  addTrailer(String value) {
    trailerSelected.add(value);
    notifyListeners();
  }

  removeTrailer(String value) {
    trailerSelected.remove(value);
    notifyListeners();
  }

  List<bool> loadRequirementsValues = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  void changeLoadRequirementValue(int index) {
    loadRequirementsValues[index] = !loadRequirementsValues[index];
    notifyListeners();
  }

  List<String> _companiesSelected = [];

  List<String> get companiesSelected => _companiesSelected;
  void addCompany(String value) {
    _companiesSelected.add(value);
    notifyListeners();
  }

  void removeCompany(String value) {
    _companiesSelected.remove(value);
    notifyListeners();
  }

  void resetFilters() {
    _minWeight = 0;
    _maxWeight = 80000;
    _minPrice = 20;
    _maxPrice = 18000;
    _minRate = 0;
    _maxRate = 500;
    _minLoadDistance = 0;
    _maxLoadDistance = 4000;
    _maxLoadLength = 100;
    _minLoadLength = 0;
    loadType = -1;
    pickupLocationName = "";
    dropLocationName = "";
    pickupLocation = [];
    dropLocation = [];
    pickupRadius = 0;
    dropRadius = 0;
    loadRequirementsValues = [
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
      false,
    ];
    _trailerValues = [false, false, false, false, false, false, false, false];
    trailerSelected.clear();
    loadRequirementsSelected.clear();
    _companiesSelected.clear();
    notifyListeners();
  }

  bool isdefault = true;
  bool get isDefault => isdefault;
  set isDefault(bool value) {
    isdefault = value;
    notifyListeners();
  }

  // String sourceLocation = "";
  // String destinationLocation = "";
  // String get sourceLocationController => sourceLocation;
  // set sourceLocationController(String value) {
  //   sourceLocation = value;
  //   notifyListeners();
  // }

  // String get destinationLocationController => destinationLocation;
  // set destinationLocationController(String value) {
  //   destinationLocation = value;
  //   notifyListeners();
  // }

  DateTime selectedDate = DateTime.now();
  DateTime get selectedDateController => selectedDate;
  set selectedDateController(DateTime value) {
    selectedDate = value;
    notifyListeners();
  }

  Future<void> getCarrierLoads(String token) async {
    toggleLoading();
    await _carrierRepository.carrierRecentLoads(token).then(
          (value) => value.fold(
            (l) {
              showSnackbar(l.message);
            },
            (r) {
              _carrierRecentLoads = r;

              notifyListeners();
            },
          ),
        );
  }

  Future<void> getCarrierSavedLoads(String token) async {
    toggleLoading();
    await _carrierRepository.carrierSavedLoads(token).then(
          (value) => value.fold(
            (l) {
              showSnackbar(l.message);
            },
            (r) {
              _carrierSavedLoads = r;
              toggleLoading();
              notifyListeners();
            },
          ),
        );
  }

  Future<void> saveUnsaveLoad(String token, String loadId) async {
    toggleLoading();
    await _carrierRepository.saveUnsaveLoads(token, loadId).then(
          (value) => value.fold(
            (l) {
              showSnackbar(l.message);
            },
            (r) async {
              _saveUnsaveLoads = r;

              isDefault
                  ? await defaultFilter(
                      SharedPreferenceService.getString(
                            SharedPreferenceService.AUTH_TOKEN,
                          ) ??
                          "",
                      DefaultFilterRequest(
                        date: DateFormat('yyyy-MM-dd').format(selectedDate),
                        pickupLocation: [0, 0],
                      ),
                    )
                  : await getCarrierFilter(
                      SharedPreferenceService.getString(
                            SharedPreferenceService.AUTH_TOKEN,
                          ) ??
                          "",
                      FiltersRequest(
                        minLoadDistance: minLoadDistance,
                        maxLoadDistance: maxLoadDistance,
                        minLoadLength: minLoadLength,
                        maxLoadLength: maxLoadLength,
                        pickupLocation: pickupLocation,
                        dropLocation: dropLocation,
                        pickupRadius: pickupRadius,
                        dropRadius: dropRadius,
                        minWeight: minWeight,
                        maxWeight: maxWeight,
                        minPrice: minPrice,
                        maxPrice: maxPrice,
                        minRate: minRate,
                        maxRate: maxRate,
                        date: DateFormat('yyyy-MM-dd').format(selectedDate),
                        // date: "2023-11-07",
                        trailerTypes: trailerSelected,
                        loadRequirement: loadRequirementsSelected,
                        loadType: loadType == 0
                            ? "Full Load"
                            : loadType == 1
                                ? "Partial Load"
                                : null,
                        companyNames: companiesSelected,
                      ),
                    );

              await getCarrierSavedLoads(
                SharedPreferenceService.getString(
                      SharedPreferenceService.AUTH_TOKEN,
                    ) ??
                    "",
              );

              toggleLoading();
              notifyListeners();
            },
          ),
        );
  }

  Future<void> getCarrierFilter(
    String token,
    FiltersRequest filtersRequest,
  ) async {
    toggleLoading();
    await _carrierRepository.carrierLoadsFilter(token, filtersRequest).then(
          (value) => value.fold(
            (l) {
              showSnackbar(l.message);
            },
            (r) {
              _filtersResponse = r;
              toggleLoading();
              getRecentSearches(
                SharedPreferenceService.getString(
                      SharedPreferenceService.AUTH_TOKEN,
                    ) ??
                    "",
              );
              notifyListeners();
            },
          ),
        );
  }

  Future<void> defaultFilter(
    String token,
    DefaultFilterRequest filtersRequest,
  ) async {
    toggleLoading();
    await _carrierRepository.carrierDefaultFilter(token, filtersRequest).then(
          (value) => value.fold(
            (l) {
              showSnackbar(l.message);
            },
            (r) {
              _filtersResponse = r;
              getRecentSearches(
                SharedPreferenceService.getString(
                      SharedPreferenceService.AUTH_TOKEN,
                    ) ??
                    "",
              );
              toggleLoading();
              notifyListeners();
            },
          ),
        );
  }

  Future<void> getCompanies(String token) async {
    toggleLoading();
    await _carrierRepository.getCompanies(token).then(
          (value) => value.fold(
            (l) {
              showSnackbar(l.message);
            },
            (r) {
              _companiesListResponse = r;
              toggleLoading();
              notifyListeners();
            },
          ),
        );
  }

  Future<void> getRecentFilters(
    String token,
  ) async {
    toggleLoading();
    await _carrierRepository
        .getRecentFilters(
          token,
        )
        .then(
          (value) => value.fold(
            (l) {
              showSnackbar(l.message);
            },
            (r) {
              _recentFiltersResponse = r;
              toggleLoading();
              notifyListeners();
            },
          ),
        );
  }

  Future<void> saveFilter(String token, String filterId) async {
    toggleLoading();
    await _carrierRepository.saveFilter(token, filterId).then(
          (value) => value.fold((l) {
            showSnackbar(l.message);
          }, (r) {
            showSnackbar(r.message ?? "Filter saved successfully");
            // getSavedFilters(token);
            toggleLoading();
            notifyListeners();
          }),
        );
  }

  Future<void> getSavedFilters(
    String token,
  ) async {
    toggleLoading();
    await _carrierRepository.getSavedFiltersList(token).then(
          (value) => value.fold(
            (l) {
              showSnackbar(l.message);
            },
            (r) {
              _savedFiltersListResponse = r;
              toggleLoading();
              notifyListeners();
            },
          ),
        );
  }

  Future<void> saveFilterFromSearch(
    String token,
    FiltersRequest filtersRequest,
  ) async {
    toggleLoading();
    await _carrierRepository.saveFilterFromSearch(token, filtersRequest).then(
          (value) => value.fold((l) {
            showSnackbar(l.message);
          }, (r) {
            showSnackbar(r.message ?? "Filter saved successfully");
            toggleLoading();
            notifyListeners();
          }),
        );
  }

  Future<void> getRecentSearches(String token) async {
    toggleLoading();
    await _carrierRepository.getRecentSearches(token).then(
          (value) => value.fold((l) {
            showSnackbar(l.message);
          }, (r) {
            _lastSearchResponse = r;
            toggleLoading();
            notifyListeners();
          }),
        );
  }

  Future<void> getLoadByID(GetLoadByIdRequest getLoadByIdRequest) async {
    toggleLoading();
    _getLoadById = null;
    _isVerified = false;
    await _carrierRepository.getLoadById(getLoadByIdRequest).then(
          (value) => value.fold((l) {
            _isVerified = false;
            // showSnackbar(l.message);
          }, (r) {
            _getLoadById = r;
            _isVerified = true;
            toggleLoading();
            notifyListeners();
          }),
        );
  }

  Future<void> createPaymentRequest(
    CreatePaymentRequest createPaymentRequest,
    String token,
    BuildContext context,
  ) async {
    toggleLoading();
    await _carrierRepository
        .createPaymentRequest(token, createPaymentRequest)
        .then(
          (value) => value.fold((l) {
            showSnackbar(l.message);
          }, (r) {
            showSnackbar(r.message ?? "Payment request created successfully");
            toggleLoading();
            getPaymentRequests(context);
            context.pop();
            // notifyListeners();
          }),
        );
  }

  Future<void> getPaymentRequests(BuildContext context) async {
    toggleLoading();
    await _carrierRepository.getPaymentRequests().then(
          (value) => value.fold(
            (l) {
              showSnackbar(l.message);
            },
            (r) {
              approved = 0;
              requests = 0;
              _paymentRequestsResponse = r;
              int count = paymentRequestsResponse?.data?.length ?? 0;
              for (int i = 0; i < count; i++) {
                if (paymentRequestsResponse?.data?[i].paymentStatus == true) {
                  approved++;
                } else if (paymentRequestsResponse?.data?[i].paymentStatus ==
                    false) {
                  requests++;
                }
              }
              toggleLoading();
              notifyListeners();
            },
          ),
        );
  }

  Future<void> deleteSaveSearch(DeleteSaveSearchRequest request) async {
    toggleLoading();

    await _carrierRepository.deleteSavedSearch(request).then(
          (value) => value.fold((l) {
            _isVerified = false;
            showSnackbar(l.message);
          }, (r) {
            showSnackbar(r.message ?? "Search deleted successfully");
            getSavedFilters(SharedPreferenceService.getString(
                  SharedPreferenceService.AUTH_TOKEN,
                ) ??
                "");
            toggleLoading();
          }),
        );
  }
}
