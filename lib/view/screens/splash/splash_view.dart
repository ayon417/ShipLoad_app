import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shipload_app/helpers/base_screen_view.dart';
import 'package:shipload_app/routes/app_routes.dart';
import 'package:shipload_app/services/shared_preference_service.dart';
import 'package:shipload_app/utils/utils.dart';
import 'package:shipload_app/view/screens/shipper/shipper_view_model.dart';

class SplashView extends ConsumerStatefulWidget {
  const SplashView({super.key});

  @override
  ConsumerState<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends ConsumerState<SplashView> with BaseScreenView {
  // late final SplashViewModel _viewModel;
  late ShipperViewModel _viewModel;
  // final UserDetailService _userDetailService = getIt<UserDetailService>();
  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(shipperViewModel)..attachView(this);
    Future.delayed(const Duration(seconds: 3)).then((value) async {
      _viewModel.loginValidation(
        context,
        SharedPreferenceService.getString(
              SharedPreferenceService.AUTH_TOKEN,
            ) ??
            "",
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(shipperViewModel);
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/images/splash_image.png",
              width: 146,
              height: 158,
            ),
          )
        ],
      ),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    // TODO: implement navigateToScreen

    context.replaceNamed(
      appRoute.name,
      // {"fid": NavBarScreens.data[1].id},
    );
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    final snackBar = SnackBar(
      backgroundColor: color,
      content: Text(message.toString()),
      action: SnackBarAction(
        label: 'Close',
        onPressed: () {
          ScaffoldMessenger.of(context).clearSnackBars();
          // Some code to undo the change.
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    // TODO: implement showSnackbar
  }
}
