import 'package:dartz/dartz.dart';
import 'package:shipload_app/core/api_client.dart';
import 'package:shipload_app/core/constants.dart';
import 'package:shipload_app/core/exceptions.dart';
import 'package:shipload_app/data/remote/auth/models/delete_account.dart';
import 'package:shipload_app/data/remote/auth/models/logout.dart';
import 'package:shipload_app/data/remote/shipper/models/create_load.dart';
import 'package:shipload_app/data/remote/shipper/models/create_shipping_address.dart';
import 'package:shipload_app/data/remote/shipper/models/delete_load_model.dart';
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
import 'package:shipload_app/helpers/locator.dart';
import 'package:shipload_app/services/shared_preference_service.dart';
import 'package:shipload_app/services/user_detail_service.dart';
import 'package:shipload_app/utils/logger.dart';

class ShipperRepoImpl implements ShipperRepo {
  final UserDetailService _userDetailService = getIt<UserDetailService>();
  final ApiClient _apiClient;

  ShipperRepoImpl(
    this._apiClient,
  );

  @override
  Future<Either<ApiException, ShipperGetAllLoadsResponse>> getAllLoadsbyId(
    String token,
    ShipperLoadsRequest request,
  ) async {
    try {
      final response = await _apiClient.postWithToken(
        "${AppConstants.baseUrl}/shipper/get-all-loads",
        request.toJson(),
        token,
      );
      Logger.write(response.toString());
      return Right(ShipperGetAllLoadsResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, ShipperHistoryResponse>> getshipperHistory(
    String token,
  ) async {
    try {
      final response = await _apiClient.getWithToken(
        "${AppConstants.baseUrl}/shipper/filter-loads-is-covered/${SharedPreferenceService.getString(SharedPreferenceService.USER_ID)}?page=1&isCovered=true",
        token,
      );
      Logger.write(response.toString());
      return Right(ShipperHistoryResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, ProfileDetailsResponse>> getProfileDetails(
    String token,
  ) async {
    try {
      final response = await _apiClient.getWithToken(
        SharedPreferenceService.getString(SharedPreferenceService.ROLE) ==
                "carrier"
            ? "${AppConstants.baseUrl}/carrier/profile/${SharedPreferenceService.getString(SharedPreferenceService.USER_ID)}"
            : "${AppConstants.baseUrl}/shipper/profile/${SharedPreferenceService.getString(SharedPreferenceService.USER_ID)}",
        token,
      );
      Logger.write(response.toString());
      return Right(ProfileDetailsResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, IsCoveredResponse>> isCovered(
    IsCoveredRequest request,
    String loadId,
  ) async {
    try {
      final response = await _apiClient.put(
        "${AppConstants.baseUrl}/shipper/loads/$loadId",
        request.toJson(),
      );

      Logger.write(response.toString());
      return Right(IsCoveredResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, EditProfileResponse>> editProfile(
    EditProfileRequest request,
    String token,
  ) async {
    try {
      final response = await _apiClient.putwithToken(
        _userDetailService.userDetailResponse?.data.role == "carrier"
            ? "${AppConstants.baseUrl}/carrier/profile/${SharedPreferenceService.getString(SharedPreferenceService.USER_ID)}"
            : "${AppConstants.baseUrl}/shipper/edit-profile/${SharedPreferenceService.getString(SharedPreferenceService.USER_ID)}",
        request.toJson(),
        token,
      );
      Logger.write(response.toString());
      return Right(EditProfileResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, CreateLoadResponse>> createLoad(
    CreateLoadRequest request,
    String token,
  ) async {
    try {
      final response = await _apiClient.postWithToken(
        "${AppConstants.baseUrl}/shipper/create-load/${SharedPreferenceService.getString(SharedPreferenceService.USER_ID)}",
        request.toJson(),
        token,
      );
      Logger.write(response.toString());
      return Right(CreateLoadResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, EditLoadResponse>> editLoad(
    EditLoadRequest request,
    String token,
    String loadId,
  ) async {
    try {
      final response = await _apiClient.putwithToken(
        "${AppConstants.baseUrl}/shipper/edit-loads/$loadId",
        request.toJson(),
        token,
      );
      Logger.write(response.toString());
      return Right(EditLoadResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, LogoutResponse>> logout(
    LogoutRequest logoutRequest,
  ) async {
    // TODO: implement register
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}/auth/logout",
        logoutRequest.toJson(),
      );
      Logger.write(response.toString());
      return Right(LogoutResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, FeedbackResponse>> feedback(
    FeedbackRequest feedbackRequest,
    String token,
  ) async {
    // TODO: implement register
    try {
      final response = await _apiClient.postWithToken(
        "${AppConstants.baseUrl}/users/${SharedPreferenceService.getString(SharedPreferenceService.USER_ID)}",
        feedbackRequest.toJson(),
        token,
      );
      Logger.write(response.toString());
      return Right(FeedbackResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, CreateShippingAddressResponse>>
      createShippingAddress(CreateShippingAddress request, String token) async {
    try {
      final response = await _apiClient.postWithToken(
        "${AppConstants.baseUrl}/shipper/create-shipping-address/${SharedPreferenceService.getString(SharedPreferenceService.USER_ID)}",
        request.toJson(),
        token,
      );
      Logger.write(response.toString());
      return Right(CreateShippingAddressResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, GetShippingAddressResponse>> getShippingAddress(
    String token,
  ) async {
    try {
      final response = await _apiClient.getWithToken(
        "${AppConstants.baseUrl}/shipper/get-shipping-address/${SharedPreferenceService.getString(SharedPreferenceService.USER_ID)}",
        token,
      );
      Logger.write(response.toString());
      return Right(GetShippingAddressResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, EditShippingAddressResponse>> editShippingAddress(
    EditShippingAddressRequest request,
    String token,
    String id,
  ) async {
    try {
      final response = await _apiClient.putwithToken(
        "${AppConstants.baseUrl}/shipper/edit-shipping-address/${SharedPreferenceService.getString(SharedPreferenceService.USER_ID)}/$id",
        request.toJson(),
        token,
      );
      Logger.write(response.toString());
      return Right(EditShippingAddressResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, DeleteShippingAddressResponse>>
      deleteShippingAddress(
    DeleteShippingAddressRequest request,
    String token,
  ) async {
    try {
      final response = await _apiClient.deleteWithToken(
        "${AppConstants.baseUrl}/shipper/delete-shipping-address/${SharedPreferenceService.getString(SharedPreferenceService.USER_ID)}",
        request.toJson(),
        token,
      );
      Logger.write(response.toString());
      return Right(DeleteShippingAddressResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, PaymentTestResponse>> paymentTest(
    PaymentTestRequest request,
    String token,
  ) async {
    try {
      final response = await _apiClient.postWithToken(
        "https://whale-app-sn5cq.ondigitalocean.app/users/free-feature/pricing-plans/subscribe",
        request.toJson(),
        token,
      );
      Logger.write(response.toString());
      return Right(PaymentTestResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, McSearchResponse>> mcSearch(
    String token,
    McSearchRequest request,
  ) async {
    try {
      final response = await _apiClient.postWithToken(
        "${AppConstants.baseUrl}/shipper/search-by-mc-number",
        request.toJson(),
        token,
      );
      Logger.write(response.toString());
      return Right(McSearchResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, DeleteLoadResponse>> deleteLoad(
    String loadId,
  ) async {
    try {
      final response = await _apiClient.delete(
        "${AppConstants.baseUrl}/shipper/delete-loads/$loadId",
      );
      Logger.write(response.toString());
      return Right(DeleteLoadResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, DeleteAccountResponse>> deleteAccount(
    String token,
    String user,
  ) async {
    try {
      final response = await _apiClient.deleteWithToken(
        user == "shipper"
            ? "${AppConstants.baseUrl}/shipper/profile"
            : "${AppConstants.baseUrl}/carrier/profile",
        {},
        token,
      );
      Logger.write(response.toString());
      return Right(DeleteAccountResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, ShipperPaymentRequestsResponse>>
      getPaymentRequests() async {
    try {
      final response = await _apiClient.getWithToken(
        "${AppConstants.baseUrl}/shipper/fetch-payment-requests",
        SharedPreferenceService.getString(
              SharedPreferenceService.AUTH_TOKEN,
            ) ??
            "",
      );
      Logger.write(response.toString());
      return Right(ShipperPaymentRequestsResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}
