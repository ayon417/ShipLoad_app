import 'dart:developer';

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:shipload_app/helpers/base_screen_view.dart';
import 'package:shipload_app/routes/app_routes.dart';
import 'package:shipload_app/utils/colors.dart';
import 'package:shipload_app/view/screens/carrier/carrier_view_model.dart';
import 'package:url_launcher/url_launcher.dart';

class CarrierPaymentview extends ConsumerStatefulWidget {
  const CarrierPaymentview({super.key});

  @override
  ConsumerState<CarrierPaymentview> createState() => _CarrierPaymentview();
}

class _CarrierPaymentview extends ConsumerState<CarrierPaymentview>
    with BaseScreenView {
  late CarrierViewModel _viewModel;
  bool isLoading = false;

  // final UserDetailService _userDetailService = getIt<UserDetailService>();
  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(carrierViewModel)..attachView(this);
    getData();
  }

  Future<void> getData() async {
    isLoading = true;
    setState(() {});

    await _viewModel.getPaymentRequests(context);
    log("payment request ${_viewModel.requestsCount}");
    log("approved request ${_viewModel.approvedCount}");

    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(carrierViewModel);
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          backgroundColor: primaryDarkColor,
          automaticallyImplyLeading: false,
          title: const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              "Payment",
              style: TextStyle(
                color: kWhite,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
          ),
          centerTitle: true,
          bottom: const TabBar(
            indicatorColor: kWhite,
            labelColor: kWhite,
            unselectedLabelColor: textFormFieldColor,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: [
              Tab(
                text: "Previous Requested",
              ),
              Tab(text: "Approved"),
            ],
          ),
        ),
        backgroundColor: primaryLightColor,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: InkWell(
          onTap: () {
            context.pushNamed(AppRoute.makePaymentRequestView.name);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: primaryColor,
              boxShadow: const [BoxShadow(color: primaryColor, blurRadius: 5)],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/icons/payment_white.webp",
                  height: 25,
                  color: kWhite,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Make Request',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                    height: 1.38,
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            // Tab 1: Save Post content
            if (isLoading)
              Center(
                child: Lottie.asset(
                  "assets/images/loading.json",
                  height: 100,
                ),
              )
            else if (_viewModel.requestsCount == 0)
              const Center(
                child: Text(
                  "No Payment Request Found",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: grey1,
                  ),
                ),
              )
            else
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...List.generate(
                        _viewModel.paymentRequestsResponse?.data?.length ?? 0,
                        (index) => _viewModel.paymentRequestsResponse
                                    ?.data?[index].paymentStatus ==
                                false
                            ? Container(
                                width: double.infinity,
                                margin: const EdgeInsets.only(bottom: 15),
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      // crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: grey3,
                                          radius: 25,
                                          backgroundImage: NetworkImage(
                                            _viewModel
                                                        .paymentRequestsResponse
                                                        ?.data?[index]
                                                        .requestedTo
                                                        ?.profilePicUrl ==
                                                    ""
                                                ? "https://industryconnect.polytechnic.bh/noCompanyLogo.png"
                                                : _viewModel
                                                        .paymentRequestsResponse
                                                        ?.data?[index]
                                                        .requestedTo
                                                        ?.profilePicUrl ??
                                                    "https://industryconnect.polytechnic.bh/noCompanyLogo.png",
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              _viewModel
                                                      .paymentRequestsResponse
                                                      ?.data?[index]
                                                      .requestedTo
                                                      ?.companyName ??
                                                  "",
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: kBlack,
                                                fontSize: 16,
                                              ),
                                            ),
                                            Text(
                                              _viewModel.paymentRequestsResponse
                                                      ?.data?[index].loadId ??
                                                  "",
                                              style: const TextStyle(
                                                color: darkGrey,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Spacer(),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 10,
                                            vertical: 3,
                                          ),
                                          decoration: BoxDecoration(
                                            color: const Color(0xffFFF0C9),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Text(
                                            _viewModel
                                                    .paymentRequestsResponse
                                                    ?.data?[index]
                                                    .paymentMode ??
                                                "",
                                            style: const TextStyle(
                                              color: Color(0xffFFB904),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 15),
                                    const DottedLine(
                                      dashLength: 10.0,
                                      dashColor: kGrey,
                                      dashGapLength: 8.0,
                                      // dashGapGradient: [Colors.red, Colors.blue],
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    if (_viewModel.paymentRequestsResponse
                                            ?.data?[index].docUrl ==
                                        "")
                                      const SizedBox.shrink()
                                    else
                                      InkWell(
                                        onTap: () {
                                          launchUrl(
                                            Uri.parse(
                                              _viewModel.paymentRequestsResponse
                                                      ?.data?[index].docUrl ??
                                                  "",
                                            ),
                                          );
                                        },
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              "assets/icons/load_doc.webp",
                                              height: 30,
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Expanded(
                                              child: Text(
                                                _viewModel
                                                        .paymentRequestsResponse
                                                        ?.data?[index]
                                                        .docUrl
                                                        ?.split("-")
                                                        .last ??
                                                    "",
                                                style: const TextStyle(
                                                  color: kBlack,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Image.asset(
                                              "assets/icons/download.webp",
                                              height: 20,
                                            ),
                                          ],
                                        ),
                                      ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "\$${_viewModel.paymentRequestsResponse?.data?[index].rate}",
                                          style: const TextStyle(
                                            color: kBlack,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                        // const Spacer(),
                                        // Container(
                                        //   padding: const EdgeInsets.symmetric(
                                        //     vertical: 7,
                                        //     horizontal: 10,
                                        //   ),
                                        //   decoration: BoxDecoration(
                                        //     borderRadius: BorderRadius.circular(5),
                                        //     color: primaryColor,
                                        //   ),
                                        //   child: const Text(
                                        //     "Make Payment",
                                        //     style: TextStyle(
                                        //       color: kWhite,
                                        //       fontSize: 14,
                                        //       fontWeight: FontWeight.w600,
                                        //     ),
                                        //   ),
                                        // )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            : const SizedBox.shrink(),
                      ),
                    ],
                  ),
                ),
              ),
            // Tab 2: Save Search content
            if (isLoading)
              Center(
                child: Lottie.asset(
                  "assets/images/loading.json",
                  height: 100,
                ),
              )
            else if (_viewModel.approvedCount == 0)
              const Center(
                child: Text(
                  "No Approved Requests",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: grey1,
                  ),
                ),
              )
            else
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...List.generate(
                        _viewModel.paymentRequestsResponse?.data?.length ?? 0,
                        (index) => _viewModel.paymentRequestsResponse
                                    ?.data?[index].paymentStatus ==
                                true
                            ? Container(
                                width: double.infinity,
                                margin: const EdgeInsets.only(bottom: 15),
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      // crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        CircleAvatar(
                                          radius: 25,
                                          backgroundColor: grey3,
                                          backgroundImage: NetworkImage(
                                            _viewModel
                                                        .paymentRequestsResponse
                                                        ?.data?[index]
                                                        .requestedTo
                                                        ?.profilePicUrl ==
                                                    ""
                                                ? "https://industryconnect.polytechnic.bh/noCompanyLogo.png"
                                                : _viewModel
                                                        .paymentRequestsResponse
                                                        ?.data?[index]
                                                        .requestedTo
                                                        ?.profilePicUrl ??
                                                    "https://industryconnect.polytechnic.bh/noCompanyLogo.png",
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              _viewModel
                                                      .paymentRequestsResponse
                                                      ?.data?[index]
                                                      .requestedTo
                                                      ?.companyName ??
                                                  "",
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: kBlack,
                                                fontSize: 16,
                                              ),
                                            ),
                                            Text(
                                              _viewModel.paymentRequestsResponse
                                                      ?.data?[index].loadId ??
                                                  "",
                                              style: const TextStyle(
                                                color: darkGrey,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Spacer(),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 18,
                                            vertical: 3,
                                          ),
                                          decoration: BoxDecoration(
                                            color: const Color(0xffC9FFCE),
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Text(
                                            _viewModel
                                                    .paymentRequestsResponse
                                                    ?.data?[index]
                                                    .paymentMode ??
                                                "",
                                            style: const TextStyle(
                                              color: Color(0xff0AB506),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 15),
                                    const DottedLine(
                                      dashLength: 10.0,
                                      dashColor: kGrey,
                                      dashGapLength: 8.0,
                                      // dashGapGradient: [Colors.red, Colors.blue],
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    if (_viewModel.paymentRequestsResponse
                                            ?.data?[index].docUrl ==
                                        "")
                                      const SizedBox.shrink()
                                    else
                                      InkWell(
                                        onTap: () {
                                          launchUrl(
                                            Uri.parse(
                                              _viewModel.paymentRequestsResponse
                                                      ?.data?[index].docUrl ??
                                                  "",
                                            ),
                                          );
                                        },
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              "assets/icons/load_doc.webp",
                                              height: 30,
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              _viewModel.paymentRequestsResponse
                                                      ?.data?[index].docUrl
                                                      ?.split("-")
                                                      .last ??
                                                  "",
                                              style: const TextStyle(
                                                color: kBlack,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            const Spacer(),
                                            Image.asset(
                                              "assets/icons/download.webp",
                                              height: 20,
                                            ),
                                          ],
                                        ),
                                      ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "\$${_viewModel.paymentRequestsResponse?.data?[index].rate ?? ""}",
                                          style: const TextStyle(
                                            color: kBlack,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            : const SizedBox.shrink(),
                      ),
                    ],
                  ),
                ),
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
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
      ),
    );
    // TODO: implement showSnackbar
  }
}
