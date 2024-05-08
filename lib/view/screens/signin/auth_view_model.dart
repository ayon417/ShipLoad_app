// ignore_for_file: avoid_dynamic_calls

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shipload_app/data/remote/auth/auth_repo.dart';
import 'package:shipload_app/data/remote/auth/models/email_verify_otp.dart';
import 'package:shipload_app/data/remote/auth/models/forgot_password.dart';
import 'package:shipload_app/data/remote/auth/models/login.dart';
import 'package:shipload_app/data/remote/auth/models/reset_password.dart';
import 'package:shipload_app/data/remote/auth/models/send_verification_mail.dart';
import 'package:shipload_app/data/remote/auth/models/sign_up.dart';
import 'package:shipload_app/data/remote/auth/models/verify_otp.dart';
import 'package:shipload_app/domain/providers/repository_provider.dart';
import 'package:shipload_app/helpers/base_screen_view.dart';
import 'package:shipload_app/helpers/base_view_model.dart';
import 'package:shipload_app/helpers/locator.dart';
import 'package:shipload_app/routes/app_routes.dart';
import 'package:shipload_app/services/shared_preference_service.dart';
import 'package:shipload_app/services/user_detail_service.dart';

final authViewModel = ChangeNotifierProvider(
  (ref) => AuthViewModel(
    ref.read(authRepositoryProvider),
  ),
);

class AuthViewModel extends BaseViewModel<BaseScreenView> {
  final AuthRepo _authRepository;
  AuthViewModel(this._authRepository);
  final UserDetailService _userDetailService = getIt<UserDetailService>();

  LoginRequest loginRequest = const LoginRequest();
  LoginResponse? _loginResponse;
  LoginResponse? get loginResponse => _loginResponse;

  SignUpRequest signUpRequest = const SignUpRequest();
  SignUpResponse? _signUpResponse;
  SignUpResponse? get signUpResponse => _signUpResponse;

  ForgotPasswordRequest forgotPasswordRequest = const ForgotPasswordRequest();
  ForgotPasswordResponse? _forgotPasswordResponse;
  ForgotPasswordResponse? get forgotPasswordResponse => _forgotPasswordResponse;

  VerifyOtpRequest verifyOtpRequest = const VerifyOtpRequest();
  VerifyOtpResponse? _verifyOtpResponse;
  VerifyOtpResponse? get verifyOtpResponse => _verifyOtpResponse;

  ResetPasswordRequest resetPasswordRequest = const ResetPasswordRequest();
  ResetPasswordResponse? _resetPasswordResponse;
  ResetPasswordResponse? get resetPasswordResponse => _resetPasswordResponse;

  SendVerificationMailRequest sendVerificationMailRequest =
      const SendVerificationMailRequest();
  SendVerificationMailResponse? _sendVerificationMailResponse;
  SendVerificationMailResponse? get sendVerificationMailResponse =>
      _sendVerificationMailResponse;

  EmailVerifyOtpRequest emailVerifyOtpRequest = const EmailVerifyOtpRequest();
  EmailVerifyOtpResponse? _emailVerifyOtpResponse;
  EmailVerifyOtpResponse? get emailVerifyOtpResponse => _emailVerifyOtpResponse;

  void showSnackbar(String message) {
    view?.showSnackbar(message, color: Colors.black);
  }

  Future<void> login(LoginRequest loginRequest, BuildContext context) async {
    toggleLoading();
    await _authRepository.login(loginRequest).then(
          (value) => value.fold(
            (l) {
              showSnackbar(l.message);
            },
            (r) {
              _loginResponse = r;
            
              _userDetailService.setuserDetail(_loginResponse);
              SharedPreferenceService.setString(
                SharedPreferenceService.AUTH_TOKEN,
                _loginResponse?.accessToken ?? "",
              );
              SharedPreferenceService.setString(
                SharedPreferenceService.ROLE,
                _loginResponse?.data.role ?? "",
              );
              SharedPreferenceService.setString(
                SharedPreferenceService.USER_ID,
                _loginResponse?.data.id ?? "",
              );
              SharedPreferenceService.setString(
                SharedPreferenceService.REFRESH_TOKEN,
                _loginResponse?.refreshToken ?? "",
              );
              if (_loginResponse?.data.isEmailVerified == false) {
                context.pushNamed(
                  AppRoute.verifyMailView.name,
                  extra: _loginResponse?.data.email,
                );
              } else if (_loginResponse?.data.premiumUser == false &&
                  _loginResponse?.data.trialUser == false) {
                context.pushNamed(AppRoute.subscriptionView.name);
              } else {
                if (_userDetailService.userDetailResponse?.data.role ==
                    "shipper") {
                  context.pushNamed(
                    AppRoute.bottomNavigationShipperView.name,
                  );
                } else {
                  context.pushNamed(AppRoute.bottomNavigationView.name);
                }
              }
              notifyListeners();
            },
          ),
        );
    toggleLoading();
  }

  Future<void> register(
    SignUpRequest signupRequest,
    BuildContext context,
  ) async {
    toggleLoading();
    await _authRepository.register(signupRequest).then(
          (value) => value.fold(
            (l) {
              showSnackbar(l.message);
            },
            (r) {
              _signUpResponse = r;
              context.pushNamed(
                AppRoute.signinView.name,
              );
              notifyListeners();
            },
          ),
        );
  }

  Future<void> forgotPassword(
    ForgotPasswordRequest forgotPasswordRequest,
    BuildContext context,
  ) async {
    toggleLoading();
    await _authRepository.forgotPassword(forgotPasswordRequest).then(
          (value) => value.fold(
            (l) {
              showSnackbar(l.message);
            },
            (r) {
              _forgotPasswordResponse = r;
              GoRouter.of(context).push(Uri(path: '/emailOtpView').toString());
              notifyListeners();
            },
          ),
        );
    toggleLoading();
  }

  Future<void> verifyOtp(
    VerifyOtpRequest verifyOtpRequest,
    BuildContext context,
    String token,
  ) async {
    toggleLoading();
    await _authRepository.verifyOtp(verifyOtpRequest, token).then(
          (value) => value.fold(
            (l) {
              showSnackbar(l.message);
            },
            (r) {
              _verifyOtpResponse = r;
              SharedPreferenceService.setString(
                SharedPreferenceService.AUTH_TOKEN,
                _verifyOtpResponse?.accessToken ?? "",
              );
              SharedPreferenceService.setString(
                SharedPreferenceService.ROLE,
                _verifyOtpResponse?.data.role ?? "",
              );
              SharedPreferenceService.setString(
                SharedPreferenceService.USER_ID,
                _verifyOtpResponse?.data.id ?? "",
              );
              SharedPreferenceService.setString(
                SharedPreferenceService.REFRESH_TOKEN,
                _verifyOtpResponse?.refreshToken ?? "",
              );

              GoRouter.of(context)
                  .push(Uri(path: '/confirmPasswordView').toString());
              notifyListeners();
            },
          ),
        );
    toggleLoading();
  }

  Future<void> resetPassword(
    ResetPasswordRequest resetPasswordRequest,
    BuildContext context,
    String token,
  ) async {
    toggleLoading();
    await _authRepository.resetPassword(resetPasswordRequest, token).then(
          (value) => value.fold(
            (l) {
              showSnackbar(l.message);
            },
            (r) {
              _resetPasswordResponse = r;
              context.pushNamed(AppRoute.signinView.name);
              notifyListeners();
            },
          ),
        );
    toggleLoading();
  }

  Future<void> sendVerificationMail(
    SendVerificationMailRequest sendVerificationMailRequest,
    BuildContext context,
    String token,
  ) async {
    toggleLoading();
    await _authRepository
        .sendVerificationMail(sendVerificationMailRequest, token)
        .then(
          (value) => value.fold(
            (l) {
              showSnackbar(l.message);
            },
            (r) {
              _sendVerificationMailResponse = r;
              GoRouter.of(context)
                  .push(Uri(path: '/verifyEmailOtpView').toString());
              notifyListeners();
            },
          ),
        );
    toggleLoading();
  }

  Future<void> emailVerifyOtp(
    EmailVerifyOtpRequest emailVerifyOtpRequest,
    BuildContext context,
    String token,
  ) async {
    toggleLoading();
    await _authRepository.emailVerifyOtp(emailVerifyOtpRequest, token).then(
          (value) => value.fold(
            (l) {
              showSnackbar(l.message);
            },
            (r) {
              _emailVerifyOtpResponse = r;
              //handle from otp
              if (_userDetailService.userDetailResponse?.data.premiumUser ==
                      false &&
                  _userDetailService.userDetailResponse?.data.trialUser ==
                      false) {
                context.pushNamed(AppRoute.subscriptionView.name);
              } else {
                if (_userDetailService.userDetailResponse?.data.role ==
                    "shipper") {
                  context.pushNamed(
                    AppRoute.bottomNavigationShipperView.name,
                  );
                } else {
                  context.pushNamed(AppRoute.bottomNavigationView.name);
                }
              }
              notifyListeners();
            },
          ),
        );
    toggleLoading();
  }



  Future<List<String>> fetchLocationSuggestions(String query) async {
    // make a url for google places autocomplete and pass the query and show only
    final String apiUrl =
        "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$query&key=AIzaSyBnW4iG_nYqaUctsyR7TzkMy8WPAHSLx14";

    // 'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$query&key=$apiKey';

    final response = await Dio().get(apiUrl);

    log(response.data.toString());

    if (response.statusCode == 200) {
      final data = response.data;
      if (data['status'] == 'OK') {
        final predictions = data['predictions'];
        final List<String> suggestions = [];
        for (var i = 0; i < predictions.length; i++) {
          suggestions.add(predictions[i]['description']);
        }

        return suggestions;
      }
    }
    return [];
  }
}
