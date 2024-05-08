import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shipload_app/data/remote/auth/models/login.dart';
import 'package:shipload_app/helpers/base_screen_view.dart';
import 'package:shipload_app/routes/app_routes.dart';
import 'package:shipload_app/utils/app_sizes.dart';
import 'package:shipload_app/utils/colors.dart';
import 'package:shipload_app/view/screens/signin/auth_view_model.dart';

class SigninView extends ConsumerStatefulWidget {
  // final int user;
  const SigninView({super.key});

  @override
  ConsumerState<SigninView> createState() => _SigninViewState();
}

class _SigninViewState extends ConsumerState<SigninView> with BaseScreenView {
  bool hidepassword = true;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  late AuthViewModel _viewModel;
  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;
  // final UserDetailService _userDetailService = getIt<UserDetailService>();
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
              const SizedBox(height: 70),
              Center(
                child: Image.asset(
                  "assets/images/logo_circular.png",
                  height: 152,
                  width: 152,
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
                        'Welcome Back',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          height: 0.83,
                        ),
                      ),
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                        controller: emailController,
                        decoration: const InputDecoration(
                          hintText: "Enter your Email Id",
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
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
                      // TextFormField(
                      //   decoration:
                      //       const InputDecoration(hintText: "Enter Password"),
                      // ),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                        controller: passwordController,
                        obscureText: hidepassword,
                        decoration: InputDecoration(
                          hintText: 'Enter password',
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
                            icon: !hidepassword
                                ? const Icon(
                                    Icons.visibility_off,
                                    size: 25,
                                  )
                                : const Icon(
                                    Icons.remove_red_eye,
                                    color: kBlack,
                                    size: 25,
                                  ),
                          ),
                        ),
                      ),
                      gapH6,
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            GoRouter.of(context).push(
                              Uri(path: '/forgotPasswordView').toString(),
                            );
                          },
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              isLoading = true;
                              setState(() {});
                              await _viewModel.login(
                                LoginRequest(
                                  email: emailController.text,
                                  password: passwordController.text,
                                ),
                                context,
                              );

                              isLoading = false;
                              setState(() {});
                            }
                          },
                          style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all(primaryColor),
                          ),
                          child: Center(
                            child: isLoading
                                ? const SizedBox(
                                    height: 25,
                                    width: 25,
                                    child: CircularProgressIndicator(
                                      color: kWhite,
                                      strokeWidth: 2,
                                    ),
                                  )
                                : const Text(
                                    "Continue",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                      // CustomButton(
                      //   onTap: () async {
                      //
                      //   },
                      //   text: "Continue",
                      // ),
                      gapH20,
                      Center(
                        child: Text.rich(
                          TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Do not have an account ? ',
                                style: TextStyle(
                                  color: Color(0xFF5D5D5D),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TextSpan(
                                text: 'Sign Up',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    context.pushNamed(
                                      AppRoute.registrationView.name,
                                    );
                                  },
                                style: const TextStyle(
                                  color: primaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
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
