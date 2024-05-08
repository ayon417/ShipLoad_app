import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shipload_app/data/remote/auth/models/verify_otp.dart';
import 'package:shipload_app/helpers/base_screen_view.dart';
import 'package:shipload_app/helpers/locator.dart';
import 'package:shipload_app/routes/app_routes.dart';
import 'package:shipload_app/services/user_detail_service.dart';
import 'package:shipload_app/utils/app_sizes.dart';
import 'package:shipload_app/utils/colors.dart';
import 'package:shipload_app/view/components/customButton.dart';
import 'package:shipload_app/view/screens/signin/auth_view_model.dart';

class EmailOtpView extends ConsumerStatefulWidget {
  const EmailOtpView({super.key});

  @override
  ConsumerState<EmailOtpView> createState() => _EmailOtpViewState();
}

class _EmailOtpViewState extends ConsumerState<EmailOtpView>
    with BaseScreenView {
  final otpController = TextEditingController();
  late AuthViewModel _viewModel;
  final UserDetailService _userDetailService = getIt<UserDetailService>();
  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(authViewModel)..attachView(this);
  }

  @override
  void dispose() {
    otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(authViewModel);
    return Scaffold(
      backgroundColor: primaryLightColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Container(
              height: MediaQuery.of(context).size.height / 3.2,
              child: Center(
                child: Image.asset(
                  "assets/images/emailOtp.png",
                  height: 234,
                  width: 234,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
                    const Text(
                      'Please Enter The 4 Digit code send to\nEstherhoward@example.com',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const SizedBox(height: 20),
                    // const Text(
                    //   'Email',
                    //   style: TextStyle(
                    //     color: Color(0xFF707070),
                    //     fontSize: 14,
                    //     fontWeight: FontWeight.w500,
                    //     height: 1.43,
                    //   ),
                    // ),
                    const SizedBox(height: 4),
                    DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(
                              0.1,
                            ),
                            spreadRadius: 1,
                            blurRadius: 10,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: PinCodeTextField(
                        controller: otpController,
                        appContext: context,
                        length: 4,
                        animationType: AnimationType.fade,
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(5),
                          fieldHeight: 50,
                          fieldWidth: 70,
                          activeFillColor: Colors.grey.withOpacity(
                            0.1,
                          ),
                          inactiveFillColor: Colors.grey.withOpacity(
                            0.1,
                          ),
                          activeColor: Colors.grey.withOpacity(
                            0.1,
                          ),
                          inactiveColor: Colors.grey.withOpacity(
                            0.1,
                          ),
                          selectedColor: Colors.grey.withOpacity(
                            0.1,
                          ),
                          selectedFillColor: Colors.grey.withOpacity(
                            0.1,
                          ),
                          borderWidth: 1,
                        ),
                        textStyle: const TextStyle(
                          color: kBlack,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                        cursorColor: kBlack,
                        animationDuration: const Duration(milliseconds: 300),
                        enableActiveFill: true,
                        keyboardType: TextInputType.number,
                        onCompleted: (v) {
                          log("Completed");
                        },
                        onChanged: (value) {
                          log(value);
                          setState(() {});
                        },
                        beforeTextPaste: (text) {
                          log("Allowing to paste $text");
                          return true;
                        },
                      ),
                    ),
                    gapH20,
                    CustomButton(
                      onTap: () async {
                        await _viewModel.verifyOtp(
                          VerifyOtpRequest(
                            passwordResetOtp: otpController.text,
                          ),
                          context,
                          _userDetailService.userDetailResponse?.accessToken ??
                              "",
                        );
                      },
                      text: "Continue",
                    ),
                    gapH20,
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    context.pushNamed(appRoute.name);
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
      ),
    );
    // TODO: implement showSnackbar
  }
}
