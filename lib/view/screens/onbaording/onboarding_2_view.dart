import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shipload_app/helpers/base_screen_view.dart';
import 'package:shipload_app/routes/app_routes.dart';
import 'package:shipload_app/utils/colors.dart';

class Onboarding2View extends StatefulWidget {
  const Onboarding2View({super.key});

  @override
  State<Onboarding2View> createState() => _Onboarding2ViewState();
}

class _Onboarding2ViewState extends State<Onboarding2View> with BaseScreenView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryLightColor,
      body: Column(
        children: [
          SizedBox(
            // color: Colors.black,
            height: MediaQuery.of(context).size.height / 1.6,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 100.0, left: 16, right: 16),
                child: Image.asset("assets/images/onboarding_2.webp"),
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
                  "Where trusted Shippers meet\nReliable Carriers",
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
                    "Save on Commissions, feel the transparency and built strong relationships. Time is now.",
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
                    navigateToScreen(AppRoute.registrationView);
                  },
                  child: Center(
                    child: Image.asset(
                      "assets/icons/onboarding_forward_2.webp",
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
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen
    context.pushReplacementNamed(appRoute.name);
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // TODO: implement showSnackbar
  }
}
