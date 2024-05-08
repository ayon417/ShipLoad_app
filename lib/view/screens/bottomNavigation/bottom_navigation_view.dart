import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shipload_app/helpers/base_screen_view.dart';
import 'package:shipload_app/routes/app_routes.dart';
import 'package:shipload_app/utils/colors.dart';
import 'package:shipload_app/view/screens/carrier/books_view.dart';
import 'package:shipload_app/view/screens/carrier/saved_view.dart';
import 'package:shipload_app/view/screens/profile/profile_view.dart';

class BottomNavigationView extends ConsumerStatefulWidget {
  const BottomNavigationView({super.key});

  @override
  ConsumerState<BottomNavigationView> createState() =>
      _BottomNavigationViewState();
}

class _BottomNavigationViewState extends ConsumerState<BottomNavigationView>
    with BaseScreenView {
  int _currentIndex = 0;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: index == 0
            ? const BooksView()
            : index == 1
                ? const SavedView()
                // : index == 2
                //     ? const CarrierPaymentview()
                : const ProfileView(),
        // IndexedStack(
        //   index: index,
        //   children: const [BooksView(), SavedView(), ProfileView()],
        // ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
          child: GNav(
            tabBorderRadius: 25.r,
            duration: const Duration(milliseconds: 200),
            gap: 6.w,
            color: grey2,
            activeColor: primaryColor,
            iconSize: 25.sp,
            tabBackgroundColor: primaryLightColor,
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
            tabs: [
              GButton(
                icon: Icons.book,
                // iconColor: darkGrey,
                leading: Image.asset(
                  "assets/icons/carrier_home.png",
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
                text: 'Saved',
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
              // GButton(
              //   icon: Icons.person_rounded,
              //   text: 'Payment',
              //   leading: Image.asset(
              //     "assets/icons/payment_purple.webp",
              //     color: _currentIndex == 2 ? primaryColor : grey2,
              //     height: 25,
              //   ),
              //   onPressed: () {
              //     setState(() {
              //       _currentIndex = 2;
              //       index = 2;
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
    // implement showSnackbar
  }
}
