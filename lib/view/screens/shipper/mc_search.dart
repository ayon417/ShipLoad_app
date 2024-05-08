import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shipload_app/data/remote/shipper/models/mc_search_model.dart';
import 'package:shipload_app/helpers/base_screen_view.dart';
import 'package:shipload_app/routes/app_routes.dart';
import 'package:shipload_app/services/shared_preference_service.dart';
import 'package:shipload_app/utils/colors.dart';
import 'package:shipload_app/view/components/customButton.dart';
import 'package:shipload_app/view/screens/shipper/shipper_view_model.dart';

class MCSearch extends ConsumerStatefulWidget {
  const MCSearch({super.key});

  @override
  ConsumerState<MCSearch> createState() => _MCSearchState();
}

class _MCSearchState extends ConsumerState<MCSearch> with BaseScreenView {
  late ShipperViewModel _viewModel;
  bool isLoading = false;
  void initState() {
    super.initState();
    _viewModel = ref.read(shipperViewModel)..attachView(this);

    // getData();
  }

  final mcController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  // Future<void> _launchUrl() async {
  //   final _url = Uri.parse(
  //       _viewModel.paymentTestResponse?.data.session ?? "https://pub.dev/");
  //   if (!await launchUrl(_url)) {
  //     throw Exception('Could not launch $_url');
  //   }
  // }

  // void getData() async {
  //   isLoading = true;
  //   setState(() {});

  //   await _viewModel.paymentTest(
  //       const PaymentTestRequest(
  //           productId: "prod_OqE6Rlnk4QNIGQ",
  //           priceId: "price_1O2Xe8SHp6ecmGuUvxEtKk97"),
  //       "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY0ZjAzOTdlZjNlYjUyMDljYzA1YjhhZSIsImlhdCI6MTY5MzQ2NDk1OSwiZXhwIjoxNzI1MDIyNTU5fQ.GRIQxPH6uE4rz1RU6SliIgCwGlH-Jx_gw2ERJsqova8");
  //   isLoading = false;
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(shipperViewModel);
    return Scaffold(
      backgroundColor: primaryLightColor,
      appBar: AppBar(
        toolbarHeight: 85,
        title: const Text(
          'MC Checker',
          style: TextStyle(
            color: kWhite,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: primaryDarkColor,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: kWhite,
          ),
          onPressed: () {
            // context.pop();
            context.pushReplacementNamed(
              AppRoute.bottomNavigationShipperView.name,
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: TextFormField(
                keyboardType: TextInputType.number,
                controller: mcController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter MC Number';
                  } else if (value.length < 2 || value.length > 10) {
                    return 'MC Number should be between 2 and 10 digits';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: "Search MC Number",
                  hintStyle: const TextStyle(color: grey2, fontSize: 16),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset(
                      "assets/icons/search.webp",
                      height: 15,
                      color: grey2,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomLoadingButton(
              text: "Search",
              onTap: () async {
                if (_formKey.currentState!.validate()) {
                  isLoading = true;
                  setState(() {});
                  await _viewModel.mcSearch(
                    SharedPreferenceService.getString(
                          SharedPreferenceService.AUTH_TOKEN,
                        ) ??
                        "",
                    McSearchRequest(mcNumber: mcController.text),
                    context,
                  );
                  isLoading = false;
                  setState(() {});
                }

                // _launchUrl();
                // print(_viewModel.paymentTestResponse?.data.session);
                // context.pushNamed(AppRoute.mcResultView.name);
              },
              loading: isLoading,
            ),
            // const SizedBox(
            //   height: 15,
            // ),
            // CustomLoadingButton(
            //   text: "WebView",
            //   onTap: () {
            //     Navigator.push(context, MaterialPageRoute(builder: (context) {
            //       return WebViewPage(
            //         link: _viewModel.paymentTestResponse?.data.session ??
            //             "https://pub.dev/",
            //       );
            //     }));
            //     // context.pushNamed(AppRoute.mcResultView.name);
            //   },
            //   loading: false,
            // )
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
