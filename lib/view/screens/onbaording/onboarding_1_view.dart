import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shipload_app/helpers/base_screen_view.dart';
import 'package:shipload_app/routes/app_routes.dart';
import 'package:shipload_app/utils/colors.dart';
import 'package:shipload_app/view/screens/onbaording/onboarding_2_view.dart';

class Onboarding1View extends StatefulWidget {
  const Onboarding1View({super.key});

  @override
  State<Onboarding1View> createState() => _Onboarding1ViewState();
}

class _Onboarding1ViewState extends State<Onboarding1View> with BaseScreenView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryLightColor,
      body: Column(
        children: [
          Container(
            // color: Colors.black,
            height: MediaQuery.of(context).size.height / 1.6,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 100.0, left: 16, right: 16),
                child: Image.asset("assets/images/onboarding_1.webp"),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(22),
                topRight: Radius.circular(22),
              ),
            ),
            height: MediaQuery.of(context).size.height -
                MediaQuery.of(context).size.height / 1.6,
            child: Column(
              children: [
                const SizedBox(height: 50),
                const Text(
                  'Your Load, Your Way',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    height: 1.25,
                  ),
                ),
                const SizedBox(height: 12),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Ship is a Brokerless way for trucking. Encouraging direct deals between Shippers and Carriers. We're creating the new standard.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF707070),
                      fontSize: 14,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w400,
                      height: 1.43,
                    ),
                  ),
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    // navigateToScreen(AppRoute.onboarding2View);
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            const Onboarding2View(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          const begin = Offset(1.0, 0.0);
                          const end = Offset.zero;
                          final tween = Tween(begin: begin, end: end);
                          final offsetAnimation = animation.drive(tween);

                          return SlideTransition(
                            position: offsetAnimation,
                            child: child,
                          );
                        },
                      ),
                    );
                  },
                  child: Center(
                    child: Image.asset(
                      "assets/icons/onboarding_forward_1.webp",
                      height: 74,
                      width: 74,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                )
              ],
            ),
            // child: Center(
            //     child: Padding(
            //   padding: const EdgeInsets.only(top: 100.0),
            //   child: Image.asset("assets/images/onboarding_1.webp"),
            // )),
          )
        ],
      ),
    );
  }

  @override
  void navigateToScreen(
    AppRoute appRoute, {
    Map<String, String>? params,
  }) {
    context.pushNamed(appRoute.name);
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
  }
}
