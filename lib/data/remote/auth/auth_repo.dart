import 'package:dartz/dartz.dart';
import 'package:shipload_app/core/core.dart';
import 'package:shipload_app/data/remote/auth/models/email_verify_otp.dart';
import 'package:shipload_app/data/remote/auth/models/forgot_password.dart';
import 'package:shipload_app/data/remote/auth/models/login.dart';
import 'package:shipload_app/data/remote/auth/models/reset_password.dart';
import 'package:shipload_app/data/remote/auth/models/send_verification_mail.dart';

import 'package:shipload_app/data/remote/auth/models/sign_up.dart';
import 'package:shipload_app/data/remote/auth/models/verify_otp.dart';

abstract class AuthRepo {
  Future<Either<ApiException, LoginResponse>> login(LoginRequest loginRequest);

  Future<Either<ApiException, SignUpResponse>> register(
    SignUpRequest registrationRequest,
  );

  Future<Either<ApiException, ForgotPasswordResponse>> forgotPassword(
    ForgotPasswordRequest forgotPasswordRequest,
  );

  Future<Either<ApiException, VerifyOtpResponse>> verifyOtp(
    VerifyOtpRequest verifyOtpRequest,
    String token,
  );

  Future<Either<ApiException, ResetPasswordResponse>> resetPassword(
    ResetPasswordRequest updatePasswordRequest,
    String token,
  );
  Future<Either<ApiException, SendVerificationMailResponse>>
      sendVerificationMail(
    SendVerificationMailRequest sendVerificationMailRequest,
    String token,
  );

  Future<Either<ApiException, EmailVerifyOtpResponse>> emailVerifyOtp(
    EmailVerifyOtpRequest emailVerifyOtpRequest,
    String token,
  );
}
