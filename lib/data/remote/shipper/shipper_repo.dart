import 'package:dartz/dartz.dart';
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

abstract class ShipperRepo {
  Future<Either<ApiException, ShipperGetAllLoadsResponse>> getAllLoadsbyId(
    String token,
    ShipperLoadsRequest request,
  );
  Future<Either<ApiException, ShipperHistoryResponse>> getshipperHistory(
    String token,
  );
  Future<Either<ApiException, ProfileDetailsResponse>> getProfileDetails(
    String token,
  );

  Future<Either<ApiException, IsCoveredResponse>> isCovered(
    IsCoveredRequest request,
    String loadId,
  );

  Future<Either<ApiException, EditProfileResponse>> editProfile(
    EditProfileRequest request,
    String token,
  );

  Future<Either<ApiException, CreateLoadResponse>> createLoad(
    CreateLoadRequest request,
    String token,
  );

  Future<Either<ApiException, EditLoadResponse>> editLoad(
      EditLoadRequest request, String token, String loadId);

  Future<Either<ApiException, LogoutResponse>> logout(
    LogoutRequest logoutRequest,
  );

  Future<Either<ApiException, FeedbackResponse>> feedback(
    FeedbackRequest feedbackRequest,
    String token,
  );

  Future<Either<ApiException, CreateShippingAddressResponse>>
      createShippingAddress(CreateShippingAddress request, String token);

  Future<Either<ApiException, GetShippingAddressResponse>> getShippingAddress(
    String token,
  );

  Future<Either<ApiException, EditShippingAddressResponse>> editShippingAddress(
    EditShippingAddressRequest request,
    String token,
    String id,
  );

  Future<Either<ApiException, DeleteShippingAddressResponse>>
      deleteShippingAddress(DeleteShippingAddressRequest request, String token);

  Future<Either<ApiException, PaymentTestResponse>> paymentTest(
    PaymentTestRequest request,
    String token,
  );

  Future<Either<ApiException, McSearchResponse>> mcSearch(
    String token,
    McSearchRequest request,
  );

  Future<Either<ApiException, DeleteLoadResponse>> deleteLoad(
    String loadId,
  );

  Future<Either<ApiException, DeleteAccountResponse>> deleteAccount(
    String token,
    String user,
  );

  Future<Either<ApiException, ShipperPaymentRequestsResponse>>
      getPaymentRequests();
}
