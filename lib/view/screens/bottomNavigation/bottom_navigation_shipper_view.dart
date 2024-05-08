import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shipload_app/helpers/base_screen_view.dart';
import 'package:shipload_app/routes/app_routes.dart';
import 'package:shipload_app/utils/colors.dart';
import 'package:shipload_app/view/screens/profile/profile_view.dart';
import 'package:shipload_app/view/screens/shipper/history_view.dart';
import 'package:shipload_app/view/screens/shipper/mc_search.dart';
import 'package:shipload_app/view/screens/shipper/shipper_home.dart';

class BottomNavigationShipperView extends ConsumerStatefulWidget {
  const BottomNavigationShipperView({super.key});

  @override
  ConsumerState<BottomNavigationShipperView> createState() =>
      _BottomNavigationShipperViewState();
}

class _BottomNavigationShipperViewState
    extends ConsumerState<BottomNavigationShipperView> with BaseScreenView {
  int _currentIndex = 0;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: index == 0
          ? const ShipperHome()
          : index == 1
              ? const HistoryView()
              : index == 2
                  ? const MCSearch()
                  // : index == 3
                  //     ? const ShipperPaymentview()
                  : const ProfileView(),
      // IndexedStack(
      //   index: index,
      //   children: const [
      //     ShipperHome(),
      //     HistoryView(),
      //     ShipperPaymentview(),
      //     ProfileView()
      //   ],
      // ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
        child: GNav(
          tabBorderRadius: 20.r,
          duration: const Duration(milliseconds: 200),
          gap: 3.w,
          color: grey2,
          activeColor: primaryColor,
          // iconSize: 5.sp,
          tabBackgroundColor: primaryLightColor,
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 10.h),
          tabs: [
            GButton(
              icon: Icons.book,
              // iconColor: darkGrey,
              leading: Image.asset(
                "assets/icons/shipper_home.webp",
                height: 25,
                color: _currentIndex == 0 ? primaryColor : grey2,
              ),
              onPressed: () {
                setState(() {
                  _currentIndex = 0;
                  index = 0;
                });
              },
              text: 'Home',
              // iconActiveColor: Colors.white,
            ),
            GButton(
              icon: Icons.bookmark_rounded,
              text: 'History',
              leading: Image.asset(
                "assets/icons/saved_violet.webp",
                color: _currentIndex == 1 ? primaryColor : grey2,
                height: 25,
              ),
              onPressed: () {
                setState(() {
                  _currentIndex = 1;
                  index = 1;
                });
              },
              // iconColor: darkGrey,
              // iconActiveColor: Colors.white,
            ),
            GButton(
              icon: Icons.person_rounded,
              text: 'MC Check',
              leading: Image.asset(
                "assets/icons/mc_logo.webp",
                color: _currentIndex == 2 ? primaryColor : grey2,
                height: 25,
              ),
              onPressed: () {
                setState(() {
                  _currentIndex = 2;
                  index = 2;
                });
              },
              // iconColor: darkGrey,
              // iconActiveColor: Colors.white,
            ),
            // GButton(
            //   icon: Icons.person_rounded,
            //   text: 'Payment',
            //   leading: Image.asset(
            //     "assets/icons/payment_purple.webp",
            //     color: _currentIndex == 3 ? primaryColor : grey2,
            //     height: 25,
            //   ),
            //   onPressed: () {
            //     setState(() {
            //       _currentIndex = 3;
            //       index = 3;
            //     });
            //   },
            //   // iconColor: darkGrey,
            //   // iconActiveColor: Colors.white,
            // ),
            GButton(
              icon: Icons.person_rounded,
              text: 'Profile',
              leading: Image.asset(
                "assets/icons/profile.webp",
                color: _currentIndex == 3 ? primaryColor : grey2,
                height: 25,
              ),
              onPressed: () {
                setState(() {
                  _currentIndex = 3;
                  index = 3;
                });
              },
            ),
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
    // implement showSnackbar
  }
}
