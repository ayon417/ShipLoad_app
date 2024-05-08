import 'package:dartz/dartz.dart';
import 'package:shipload_app/core/core.dart';
import 'package:shipload_app/core/endpoints.dart';
import 'package:shipload_app/data/remote/auth/auth_repo.dart';
import 'package:shipload_app/data/remote/auth/models/email_verify_otp.dart';
import 'package:shipload_app/data/remote/auth/models/forgot_password.dart';
import 'package:shipload_app/data/remote/auth/models/login.dart';
import 'package:shipload_app/data/remote/auth/models/reset_password.dart';
import 'package:shipload_app/data/remote/auth/models/send_verification_mail.dart';
import 'package:shipload_app/data/remote/auth/models/sign_up.dart';
import 'package:shipload_app/data/remote/auth/models/verify_otp.dart';
import 'package:shipload_app/utils/utils.dart';

class AuthRepoImpl implements AuthRepo {
  final ApiClient _apiClient;

  AuthRepoImpl(this._apiClient);

  @override
  Future<Either<ApiException, LoginResponse>> login(
    LoginRequest loginRequest,
  ) async {
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}$loginEndpoint",
        loginRequest.toJson(),
      );
      Logger.write(response.toString());
      return Right(LoginResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, SignUpResponse>> register(
    SignUpRequest registrationRequest,
  ) async {
    // TODO: implement register
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}$registrationEndpoint",
        registrationRequest.toJson(),
      );
      Logger.write(response.toString());

      return Right(SignUpResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, ForgotPasswordResponse>> forgotPassword(
    ForgotPasswordRequest forgotPasswordRequest,
  ) async {
    // TODO: implement register
    try {
      final response = await _apiClient.post(
        "${AppConstants.baseUrl}/auth/forgot-password",
        forgotPasswordRequest.toJson(),
      );
      Logger.write(response.toString());
      return Right(ForgotPasswordResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, ResetPasswordResponse>> resetPassword(
    ResetPasswordRequest resetPasswordRequest,
    String token,
  ) async {
    // TODO: implement register
    try {
      final response = await _apiClient.postWithToken(
        "${AppConstants.baseUrl}/auth/reset-password",
        resetPasswordRequest.toJson(),
        token,
      );
      Logger.write(response.toString());
      return Right(ResetPasswordResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, VerifyOtpResponse>> verifyOtp(
    VerifyOtpRequest verifyOtpRequest,
    String token,
  ) async {
    // TODO: implement register
    try {
      final response = await _apiClient.postWithToken(
        "${AppConstants.baseUrl}/auth/verify-otp",
        verifyOtpRequest.toJson(),
        token,
      );
      Logger.write(response.toString());
      return Right(VerifyOtpResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, SendVerificationMailResponse>>
      sendVerificationMail(
    SendVerificationMailRequest emailVerifyOtpRequest,
    String token,
  ) async {
    // TODO: implement register
    try {
      final response = await _apiClient.postWithToken(
        "${AppConstants.baseUrl}/auth/send-verification-email",
        emailVerifyOtpRequest.toJson(),
        token,
      );
      Logger.write(response.toString());
      return Right(SendVerificationMailResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }

  @override
  Future<Either<ApiException, EmailVerifyOtpResponse>> emailVerifyOtp(
    EmailVerifyOtpRequest verifyOtpRequest,
    String token,
  ) async {
    // TODO: implement register
    try {
      final response = await _apiClient.postWithToken(
        "${AppConstants.baseUrl}/auth/verify-email",
        verifyOtpRequest.toJson(),
        token,
      );
      Logger.write(response.toString());
      return Right(EmailVerifyOtpResponse.fromJson(response.data!));
    } catch (e) {
      Logger.write(e.toString());
      return Left(ApiException(e.toString()));
    }
  }
}
