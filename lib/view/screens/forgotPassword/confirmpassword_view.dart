import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shipload_app/data/remote/auth/models/reset_password.dart';
import 'package:shipload_app/helpers/base_screen_view.dart';
import 'package:shipload_app/routes/app_routes.dart';
import 'package:shipload_app/services/shared_preference_service.dart';
import 'package:shipload_app/utils/app_sizes.dart';
import 'package:shipload_app/utils/colors.dart';
import 'package:shipload_app/view/components/customButton.dart';
import 'package:shipload_app/view/screens/signin/auth_view_model.dart';

class ConfirmPasswordView extends ConsumerStatefulWidget {
  const ConfirmPasswordView({super.key});

  @override
  ConsumerState<ConfirmPasswordView> createState() =>
      _ConfirmPasswordViewState();
}

class _ConfirmPasswordViewState extends ConsumerState<ConfirmPasswordView>
    with BaseScreenView {
  bool hidepassword = true;
  bool confirmpassword = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();

  @override
  void dispose() {
    passwordController.dispose();
    confirmpasswordController.dispose();
    super.dispose();
  }

  late AuthViewModel _viewModel;
  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(authViewModel)..attachView(this);
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(authViewModel);
    return Scaffold(
      backgroundColor: primaryLightColor,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 50),
              Container(
                height: MediaQuery.of(context).size.height / 3.2,
                child: Center(
                  child: Image.asset(
                    "assets/images/shield.png",
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
                        'Your New Password Must be different from previously used password',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Password',
                        style: TextStyle(
                          color: Color(0xFF707070),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 1.43,
                        ),
                      ),
                      const SizedBox(height: 4),
                      TextFormField(
                        controller: passwordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password is required';
                          } else if (value.length < 8) {
                            return 'Password must be at least 8 characters long';
                          } else if (value != confirmpasswordController.text) {
                            return 'Password is not matching';
                          }
                          return null;
                        },
                        obscureText: hidepassword,
                        decoration: InputDecoration(
                          hintText: '***************',
                          hintStyle: const TextStyle(
                            color: kGrey,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                hidepassword = !hidepassword;
                              });
                            },
                            icon: Icon(
                              hidepassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              size: 17,
                            ),
                          ),
                        ),
                      ),
                      gapH24,
                      const Text(
                        'Confirm Password',
                        style: TextStyle(
                          color: Color(0xFF707070),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 1.43,
                        ),
                      ),
                      const SizedBox(height: 4),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password is required';
                          } else if (value.length < 8) {
                            return 'Password must be at least 8 characters long';
                          } else if (value != passwordController.text) {
                            return 'Password is not matching';
                          }
                          return null;
                        },
                        controller: confirmpasswordController,
                        obscureText: confirmpassword,
                        decoration: InputDecoration(
                          hintText: '***************',
                          hintStyle: const TextStyle(
                            color: kGrey,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                hidepassword = !hidepassword;
                              });
                            },
                            icon: Icon(
                              hidepassword
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              size: 17,
                            ),
                          ),
                        ),
                      ),
                      gapH6,
                      gapH20,
                      CustomButton(
                        onTap: () async {
                          if (_formKey.currentState!.validate()) {
                            await _viewModel.resetPassword(
                              ResetPasswordRequest(
                                password: passwordController.text,
                              ),
                              context,
                              SharedPreferenceService.getString(
                                    SharedPreferenceService.AUTH_TOKEN,
                                  ) ??
                                  "",
                            );
                          }
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
