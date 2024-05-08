import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shipload_app/data/remote/auth/models/send_verification_mail.dart';
import 'package:shipload_app/helpers/base_screen_view.dart';
import 'package:shipload_app/routes/app_routes.dart';
import 'package:shipload_app/services/shared_preference_service.dart';
import 'package:shipload_app/utils/app_sizes.dart';
import 'package:shipload_app/utils/colors.dart';
import 'package:shipload_app/view/components/customButton.dart';
import 'package:shipload_app/view/screens/signin/auth_view_model.dart';

class VerifyMailView extends ConsumerStatefulWidget {
  final String email;
  const VerifyMailView({super.key, required this.email});

  @override
  ConsumerState<VerifyMailView> createState() => _VerifyMailViewState();
}

class _VerifyMailViewState extends ConsumerState<VerifyMailView>
    with BaseScreenView {
  final emsileController = TextEditingController();
  late AuthViewModel _viewModel;
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(authViewModel)..attachView(this);
    emsileController.text = widget.email;
  }

  @override
  void dispose() {
    emsileController.dispose();
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
            SizedBox(
              height: MediaQuery.of(context).size.height / 3.2,
              child: Center(
                child: Image.asset(
                  "assets/images/forgotpass.png",
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
                      'Please continue with your email address for verification. ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const SizedBox(height: 20),
                    const Text(
                      'Email',
                      style: TextStyle(
                        color: Color(0xFF707070),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        height: 1.43,
                      ),
                    ),
                    const SizedBox(height: 4),
                    TextFormField(
                      controller: emsileController,
                      readOnly: true,
                      decoration: const InputDecoration(
                        hintText: "Enter your Email Id",
                      ),
                    ),
                    gapH20,
                    CustomLoadingButton(
                      loading: isLoading,
                      onTap: () async {
                        isLoading = true;
                        setState(() {});
                        await _viewModel.sendVerificationMail(
                          SendVerificationMailRequest(
                            email: emsileController.text,
                          ),
                          context,
                          SharedPreferenceService.getString(
                                SharedPreferenceService.AUTH_TOKEN,
                              ) ??
                              "",
                        );
                        isLoading = false;
                        setState(() {});
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
