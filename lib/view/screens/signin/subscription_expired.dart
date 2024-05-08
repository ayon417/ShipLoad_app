import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shipload_app/routes/app_routes.dart';
import 'package:shipload_app/utils/colors.dart';
import 'package:shipload_app/view/components/customButton.dart';

class SubscriptionExpired extends StatelessWidget {
  const SubscriptionExpired({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryLightColor,
      bottomSheet: Container(
        height: 80,
        width: double.infinity,
        color: kWhite,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CustomButton(
            onTap: () {
              context.pushReplacementNamed(AppRoute.signinView.name);
            },
            text: "Okay",
          ),
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 85,

        // leading: IconButton(
        //   icon: const Icon(
        //     Icons.arrow_back_ios,
        //     color: kWhite,
        //   ),
        //   onPressed: () {
        //     context.pop();
        //   },
        // ),
        title: const Text(
          'Subscription Ended',
          style: TextStyle(
            color: kWhite,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: primaryDarkColor,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/error.png",
                // height: 180,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Your Subscription has Ended. \nPlease renew your subscription to continue.",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 35,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
