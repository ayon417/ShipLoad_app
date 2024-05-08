// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shipload_app/data/remote/auth/models/logout.dart';
import 'package:shipload_app/data/remote/shipper/models/create_load.dart';
import 'package:shipload_app/data/remote/shipper/models/create_shipping_address.dart';
import 'package:shipload_app/data/remote/shipper/models/delete_shipping_address.dart';
import 'package:shipload_app/data/remote/shipper/models/edit_load_model.dart';
import 'package:shipload_app/data/remote/shipper/models/edit_profile.dart';
import 'package:shipload_app/data/remote/shipper/models/edit_shipping_address.dart';
import 'package:shipload_app/data/remote/shipper/models/feedback.dart';
import 'package:shipload_app/data/remote/shipper/models/get_shipping_address.dart';
import 'package:shipload_app/data/remote/shipper/models/is_covered.dart';
import 'package:shipload_app/data/remote/shipper/models/mc_search_model.dart';
import 'package:shipload_app/data/remote/shipper/models/payment_test_model.dart';
import 'package:shipload_app/data/remote/shipper/models/profile_details.dart';
import 'package:shipload_app/data/remote/shipper/models/shipper_get_all_loads.dart';
import 'package:shipload_app/data/remote/shipper/models/shipper_history.dart';
import 'package:shipload_app/data/remote/shipper/models/shipper_payment_request.dart';
import 'package:shipload_app/data/remote/shipper/shipper_repo.dart';
import 'package:shipload_app/domain/providers/repository_provider.dart';
import 'package:shipload_app/helpers/base_screen_view.dart';
import 'package:shipload_app/helpers/base_view_model.dart';
import 'package:shipload_app/routes/app_routes.dart';
import 'package:shipload_app/services/shared_preference_service.dart';

final shipperViewModel = ChangeNotifierProvider(
  (ref) => ShipperViewModel(
    ref.read(shipperRepositoryProvider),
  ),
);

class ShipperViewModel extends BaseViewModel<BaseScreenView> {
  final ShipperRepo _shipperRepository;
  ShipperViewModel(this._shipperRepository);
  // final UserDetailService _userDetailService = getIt<UserDetailService>();

  //   SignUpRequest signUpRequest = const SignUpRequest();
  // SignUpResponse? _signUpResponse;
  // SignUpResponse? get signUpResponse => _signUpResponse;

  ShipperGetAllLoadsResponse? _shipperGetAllLoadsResponse;
  ShipperGetAllLoadsResponse? get shipperGetAllLoadsResponse =>
      _shipperGetAllLoadsResponse;

  ShipperHistoryResponse? _shipperHistoryResponse;
  ShipperHistoryResponse? get shipperHistoryResponse => _shipperHistoryResponse;

  ProfileDetailsResponse? _profileDetailsResponse;
  ProfileDetailsResponse? get profileDetailsResponse => _profileDetailsResponse;

  IsCoveredRequest isCoveredRequest = IsCoveredRequest();
  IsCoveredResponse? _isCoveredResponse;
  IsCoveredResponse? get isCoveredResponse => _isCoveredResponse;

  EditProfileRequest editProfileRequest = const EditProfileRequest();
  EditProfileResponse? _editProfileResponse;
  EditProfileResponse? get editProfileResponse => _editProfileResponse;

  CreateLoadRequest createLoadRequest = CreateLoadRequest();
  CreateLoadResponse? _createLoadResponse;
  CreateLoadResponse? get createLoadResponse => _createLoadResponse;

  GetShippingAddressResponse? _getShippingAddressResponse;
  GetShippingAddressResponse? get getShippingAddressResponse =>
      _getShippingAddressResponse;

  PaymentTestResponse? _paymentTestResponse;
  PaymentTestResponse? get paymentTestResponse => _paymentTestResponse;

  McSearchResponse? _mcSearchResponse;
  McSearchResponse? get mcSearchResponse => _mcSearchResponse;

  ShipperPaymentRequestsResponse? _paymentRequestsResponse;
  ShipperPaymentRequestsResponse? get paymentRequestsResponse =>
      _paymentRequestsResponse;

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

  bool applyLocation = false;
  bool get isApplyLocation => applyLocation;
  void clearApplyLocation() {
    applyLocation = false;
    notifyListeners();
  }

  String locationFilterName = "";
  String get getLocationFilterName => locationFilterName;
  void setLocationFilterName(String value) {
    locationFilterName = value;
    notifyListeners();
  }

  List<double> locationCoordinates = [];
  List<double> get getLocationCoordinates => locationCoordinates;
  void setLocationCoordinates(List<double> value) {
    locationCoordinates = value;
    notifyListeners();
  }

  List<String> get loadRequirements => loadRequirementsSelected;

  int requests = 0;
  int get approvedCount => approved;
  int approved = 0;
  int get requestsCount => requests;

  void showSnackbar(String message) {
    view?.showSnackbar(message, color: Colors.black);
  }

  Future<void> getAllLoadsbyId(
    String token,
    ShipperLoadsRequest request,
  ) async {
    toggleLoading();
    await _shipperRepository.getAllLoadsbyId(token, request).then(
          (value) => value.fold(
            (l) {
              showSnackbar(l.message);
            },
            (r) {
              _shipperGetAllLoadsResponse = r;

              notifyListeners();
            },
          ),
        );
    toggleLoading();
  }

  Future<void> getshipperHistory(String token) async {
    toggleLoading();
    await _shipperRepository.getshipperHistory(token).then(
          (value) => value.fold(
            (l) {
              showSnackbar(l.message);
            },
            (r) {
              _shipperHistoryResponse = r;
              notifyListeners();
            },
          ),
        );
    toggleLoading();
  }

  Future<void> getProfileDetails(String token, BuildContext context) async {
    toggleLoading();
    await _shipperRepository.getProfileDetails(token).then(
          (value) => value.fold(
            (l) {
              if (l.message == "Please authenticate, your token has expired!") {
                showSnackbar("Please login again to continue");
                context.pushReplacementNamed(AppRoute.signinView.name);
              }
            },
            (r) {
              _profileDetailsResponse = r;
              notifyListeners();
            },
          ),
        );
  }

  Future<void> loginValidation(BuildContext context, String token) async {
    toggleLoading();
    await _shipperRepository.getProfileDetails(token).then(
          (value) => value.fold(
            (l) {
              print(token);
              context.pushReplacementNamed(AppRoute.onboarding1View.name);
            },
            (r) {
              _profileDetailsResponse = r;
              if (_profileDetailsResponse?.data.isEmailVerified == false) {
                context.pushReplacementNamed(
                  AppRoute.verifyMailView.name,
                  extra: _profileDetailsResponse?.data.email,
                );
              } else if (_profileDetailsResponse?.data.premiumUser == false &&
                  _profileDetailsResponse?.data.trialUser == false) {
                context.pushNamed(AppRoute.subscriptionView.name);
              } else {
                if (SharedPreferenceService.getString(
                      SharedPreferenceService.ROLE,
                    ) ==
                    "shipper") {
                  context.pushReplacementNamed(
                    AppRoute.bottomNavigationShipperView.name,
                  );
                } else {
                  context
                      .pushReplacementNamed(AppRoute.bottomNavigationView.name);
                }
              }

              notifyListeners();
            },
          ),
        );
  }

  Future<void> isCovered(
    IsCoveredRequest request,
    String loadId,
    String token,
    BuildContext context,
  ) async {
    toggleLoading();
    await _shipperRepository.isCovered(request, loadId).then(
          (value) => value.fold(
            (l) {
              showSnackbar(l.message);
            },
            (r) async {
              _isCoveredResponse = r;
              showSnackbar(_isCoveredResponse?.message ?? "");
              // notifyListeners();
              // getPaymentRequests(context);
              getAllLoadsbyId(
                token,
                ShipperLoadsRequest(
                  locationFilter: applyLocation,
                  pickupLocation: locationCoordinates,
                ),
              );
            },
          ),
        );
  }

  Future<void> editProfile(EditProfileRequest request, String token) async {
    toggleLoading();
    await _shipperRepository.editProfile(request, token).then(
          (value) => value.fold((l) {
            showSnackbar(l.message);
          }, (r) {
            showSnackbar(r.message);
            notifyListeners();
          }),
        );
  }

  Future<void> createLoad(CreateLoadRequest request, String token) async {
    toggleLoading();
    await _shipperRepository.createLoad(request, token).then(
          (value) => value.fold((l) {
            showSnackbar(l.message);
          }, (r) async {
            showSnackbar(r.message);
            loadRequirementsSelected.clear();
            await getAllLoadsbyId(
              token,
              ShipperLoadsRequest(
                locationFilter: applyLocation,
                pickupLocation: locationCoordinates,
              ),
            );
            notifyListeners();
          }),
        );
  }

  Future<void> editLoad(
    String token,
    EditLoadRequest request,
    String id,
    bool isRepost,
  ) async {
    toggleLoading();
    await _shipperRepository.editLoad(request, token, id).then(
          (value) => value.fold(
            (l) {
              showSnackbar(l.message);
            },
            (r) async {
              showSnackbar(r.message);
              isRepost
                  ? getshipperHistory(token)
                  : getAllLoadsbyId(
                      token,
                      ShipperLoadsRequest(
                        locationFilter: applyLocation,
                        pickupLocation: locationCoordinates,
                      ),
                    );
              // notifyListeners();
            },
          ),
        );
  }

  Future<void> logout(LogoutRequest logoutRequest, BuildContext context) async {
    toggleLoading();
    await _shipperRepository
        .logout(
          logoutRequest,
        )
        .then(
          (value) => value.fold((l) {
            showSnackbar(l.message);
          }, (r) {
            context.replaceNamed(AppRoute.signinView.name);
            SharedPreferenceService.setString(
              SharedPreferenceService.AUTH_TOKEN,
              "",
            );
            SharedPreferenceService.setString(
              SharedPreferenceService.ROLE,
              "",
            );
            SharedPreferenceService.setString(
              SharedPreferenceService.USER_ID,
              "",
            );
            SharedPreferenceService.setString(
              SharedPreferenceService.REFRESH_TOKEN,
              "",
            );
          }),
        );
  }

  Future<void> feedback(FeedbackRequest feedbackRequest, String token) async {
    toggleLoading();
    await _shipperRepository.feedback(feedbackRequest, token).then(
          (value) => value.fold((l) {
            showSnackbar(l.message);
          }, (r) {
            showSnackbar(r.message);
            notifyListeners();
          }),
        );
  }

  Future<void> deleteAccount(
    String token,
    String user,
    BuildContext context,
  ) async {
    toggleLoading();
    await _shipperRepository.deleteAccount(token, user).then(
          (value) => value.fold((l) {
            showSnackbar(l.message);
          }, (r) {
            showSnackbar(r.message ?? "Account Deleted successfully");
            context.replaceNamed(AppRoute.signinView.name);
            SharedPreferenceService.setString(
              SharedPreferenceService.AUTH_TOKEN,
              "",
            );
            SharedPreferenceService.setString(
              SharedPreferenceService.ROLE,
              "",
            );
            SharedPreferenceService.setString(
              SharedPreferenceService.USER_ID,
              "",
            );
            SharedPreferenceService.setString(
              SharedPreferenceService.REFRESH_TOKEN,
              "",
            );
            notifyListeners();
          }),
        );
  }

  Future<void> createShippingAddress(
    CreateShippingAddress request,
    String token,
    BuildContext context,
  ) async {
    toggleLoading();
    await _shipperRepository.createShippingAddress(request, token).then(
          (value) => value.fold((l) {
            showSnackbar(l.message);
          }, (r) async {
            showSnackbar(r.message);
            await getShippingAddress(token);

            notifyListeners();
            Navigator.pop(context);
          }),
        );
  }

  Future<void> getShippingAddress(String token) async {
    toggleLoading();
    await _shipperRepository.getShippingAddress(token).then(
          (value) => value.fold((l) {
            showSnackbar(l.message);
          }, (r) {
            _getShippingAddressResponse = r;
            notifyListeners();
          }),
        );
  }

  Future<void> editShippingAddress(
    EditShippingAddressRequest request,
    String token,
    String id,
    BuildContext context,
  ) async {
    toggleLoading();
    await _shipperRepository.editShippingAddress(request, token, id).then(
          (value) => value.fold((l) {
            showSnackbar(l.message);
          }, (r) async {
            showSnackbar(r.message);
            await getShippingAddress(token);
            context.pop();
            notifyListeners();
          }),
        );
  }

  Future<void> deleteShippingAddress(
    DeleteShippingAddressRequest request,
    String token,
  ) async {
    toggleLoading();
    await _shipperRepository.deleteShippingAddress(request, token).then(
          (value) => value.fold((l) {
            showSnackbar(l.message);
          }, (r) {
            log(r.toString());
            getShippingAddress(token);
            showSnackbar(r.message);
            // notifyListeners();
          }),
        );
  }

  Future<void> paymentTest(PaymentTestRequest request, String token) async {
    toggleLoading();
    await _shipperRepository.paymentTest(request, token).then(
          (value) => value.fold((l) {
            showSnackbar(l.message);
          }, (r) {
            log(r.toString());
            _paymentTestResponse = r;
            showSnackbar(r.message);
            // notifyListeners();
          }),
        );
  }

  Future<void> mcSearch(
    String token,
    McSearchRequest request,
    BuildContext context,
  ) async {
    toggleLoading();
    await _shipperRepository.mcSearch(token, request).then(
          (value) => value.fold(
            (l) {
              context.pushNamed(
                AppRoute.mcNotFoundView.name,
              );
              // _mcSearchResponse = null;
              // notifyListeners();
            },
            (r) {
              _mcSearchResponse = r;
              notifyListeners();
              context.pushNamed(
                AppRoute.mcResultView.name,
                extra: _mcSearchResponse,
              );
            },
          ),
        );
  }

  Future<void> deleteLoad(
    String loadId,
    String token,
    BuildContext context,
  ) async {
    await _shipperRepository.deleteLoad(loadId).then(
          (value) => value.fold((l) {
            showSnackbar(l.message);
          }, (r) async {
            showSnackbar(r.message ?? "Deleted Successfully");
            // await getAllLoadsbyId(
            //   token,
            //   ShipperLoadsRequest(
            //     locationFilter: applyLocation,
            //     pickupLocation: locationCoordinates,
            //   ),
            // );
            // notifyListeners();
          }),
        );
  }

  Future<void> getPaymentRequests(BuildContext context) async {
    toggleLoading();
    await _shipperRepository.getPaymentRequests().then(
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
}
