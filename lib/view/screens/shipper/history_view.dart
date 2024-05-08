import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:shipload_app/helpers/base_screen_view.dart';
import 'package:shipload_app/routes/app_routes.dart';
import 'package:shipload_app/services/shared_preference_service.dart';
import 'package:shipload_app/utils/colors.dart';
import 'package:shipload_app/view/screens/shipper/shipper_view_model.dart';

class HistoryView extends ConsumerStatefulWidget {
  const HistoryView({super.key});

  @override
  ConsumerState<HistoryView> createState() => _HistoryViewState();
}

class _HistoryViewState extends ConsumerState<HistoryView> with BaseScreenView {
  late ShipperViewModel _viewModel;
  bool isLoading = false;
  bool isRepost = true;
  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(shipperViewModel)..attachView(this);
    getData();
  }

  void getData() async {
    isLoading = true;
    setState(() {});
    await _viewModel.getshipperHistory(
      SharedPreferenceService.getString(SharedPreferenceService.AUTH_TOKEN) ??
          "",
    );
    isLoading = false;
    setState(() {});
  }

  String convertDateString(String inputDateStr) {
    try {
      final inputDateFormat = DateFormat("yyyy-MM-dd HH:mm:ss.SSSZ");
      final outputDateFormat = DateFormat("ddMMM | h:mm a");

      final inputDate = inputDateFormat.parse(inputDateStr);
      final outputDateString = outputDateFormat.format(inputDate.toLocal());

      return outputDateString;
    } catch (e) {
      print("Error converting date: $e");
      return ""; // Return an empty string or handle the error as needed
    }
  }

  String formatTimeDifference(DateTime createdDate) {
    final now = DateTime.now();
    final difference = now.difference(createdDate);

    if (difference.inDays > 1) {
      return '${difference.inDays}d ago';
    } else if (difference.inDays == 1) {
      return '1d ago';
    } else if (difference.inHours >= 1) {
      return '${difference.inHours} hr ago';
    } else if (difference.inMinutes >= 1) {
      return '${difference.inMinutes} mins ago';
    } else {
      return 'Just now';
    }
  }

  int numberOfDays(DateTime inputDateStr) {
    return DateTime.now().difference(inputDateStr).inDays;
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(shipperViewModel);

    return Scaffold(
      backgroundColor: primaryLightColor,
      appBar: AppBar(
        toolbarHeight: 85,
        title: const Text(
          'History',
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
      body: isLoading
          ? Center(
              child: Lottie.asset(
                "assets/images/loading.json",
                height: 100,
              ),
            )
          : _viewModel.shipperHistoryResponse?.data.results.isEmpty ?? true
              ? const Center(
                  child: Text(
                    "No History Found",
                    style: TextStyle(
                      color: grey1,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                )
              : SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...List.generate(
                          _viewModel.shipperHistoryResponse?.data.results
                                  .length ??
                              0,
                          (index) => Container(
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
                                      backgroundColor: primaryLightColor,
                                      backgroundImage: _viewModel
                                                  .profileDetailsResponse
                                                  ?.data
                                                  .profilePicUrl !=
                                              ""
                                          ? NetworkImage(
                                              _viewModel.profileDetailsResponse
                                                      ?.data.profilePicUrl ??
                                                  "",
                                            )
                                          : NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlTjFPuo9VZ3r2MxqAmWUqhft8G-Ba9dY1cw&usqp=CAU",
                                            ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${_viewModel.shipperHistoryResponse?.data.results[index].pickupLocation?.pickupLocationName} - ${_viewModel.shipperHistoryResponse?.data.results[index].dropLocation?.dropLocationName}",
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: kBlack,
                                              fontSize: 16,
                                            ),
                                          ),
                                          Text(
                                            "${convertDateString("${_viewModel.shipperHistoryResponse?.data.results[index].createdAt?.toLocal()}")} | ${_viewModel.shipperHistoryResponse?.data.results[index].loadId}",
                                            style: const TextStyle(
                                              color: darkGrey,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // Spacer(),
                                    // Icon(Icons.more_vert, color: kBlack)
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
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/icons/weight.webp",
                                          height: 15,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "${_viewModel.shipperHistoryResponse?.data.results[index].quantity?.toStringAsFixed(0) ?? ""} lbs",
                                          style: const TextStyle(
                                            color: grey2,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/icons/truck.webp",
                                          height: 15,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "${_viewModel.shipperHistoryResponse?.data.results[index].trailerType?.first}",
                                          style: const TextStyle(
                                            color: grey2,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/icons/road.webp",
                                          height: 15,
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "${_viewModel.shipperHistoryResponse?.data.results[index].loadDistance?.toStringAsFixed(0) ?? ""} mi",
                                          style: const TextStyle(
                                            color: grey2,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                // const SizedBox(
                                //   height: 10,
                                // ),
                                // Row(
                                //   children: [
                                //     Image.asset(
                                //       "assets/icons/mileDH.webp",
                                //       height: 15,
                                //     ),
                                //     const SizedBox(
                                //       width: 5,
                                //     ),
                                //      Text(
                                //         "${_viewModel.shipperHistoryResponse?.data.results[index].deadHead?.toStringAsFixed(0) ?? "NA"} mi DH",
                                //       style: TextStyle(
                                //         color: grey2,
                                //         fontSize: 14,
                                //       ),
                                //     ),
                                //   ],
                                // ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "\$${_viewModel.shipperHistoryResponse?.data.results[index].amount}",
                                      style: const TextStyle(
                                        color: kBlack,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "\$${((_viewModel.shipperHistoryResponse?.data.results[index].amount ?? 0) / (_viewModel.shipperHistoryResponse?.data.results[index].loadDistance ?? 1)).toStringAsFixed(2)}/mi",
                                      style: const TextStyle(
                                        color: grey1,
                                        fontSize: 14,
                                      ),
                                    ),
                                    const Spacer(),
                                    Image.asset(
                                      "assets/icons/time_outlined.webp",
                                      height: 15,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      formatTimeDifference(_viewModel
                                              .shipperHistoryResponse
                                              ?.data
                                              .results[index]
                                              .createdAt
                                              ?.toLocal() ??
                                          DateTime.now()),
                                      style: const TextStyle(
                                        color: grey1,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                  onTap: () {
                                    context.pushNamed(
                                      AppRoute.editLoadView.name,
                                      extra: {
                                        "data": _viewModel
                                            .shipperHistoryResponse
                                            ?.data
                                            .results[index],
                                        "isRepost": true,
                                      },
                                    );
                                  },
                                  child: Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: primaryColor,
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Repost with same details",
                                        style: TextStyle(
                                          color: kWhite,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
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
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
      ),
    );
    // TODO: implement showSnackbar
  }
}
