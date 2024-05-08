import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:shipload_app/data/remote/carrier/models/delete_save_search.dart';
import 'package:shipload_app/helpers/base_screen_view.dart';
import 'package:shipload_app/routes/app_routes.dart';
import 'package:shipload_app/services/shared_preference_service.dart';
import 'package:shipload_app/utils/colors.dart';
import 'package:shipload_app/view/screens/carrier/carrier_view_model.dart';

class SavedView extends ConsumerStatefulWidget {
  const SavedView({super.key});

  @override
  ConsumerState<SavedView> createState() => _SavedViewState();
}

class _SavedViewState extends ConsumerState<SavedView> with BaseScreenView {
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
    await _viewModel.getCarrierSavedLoads(
      SharedPreferenceService.getString(SharedPreferenceService.AUTH_TOKEN) ??
          "",
    );
    await _viewModel.getSavedFilters(
      SharedPreferenceService.getString(SharedPreferenceService.AUTH_TOKEN) ??
          "",
    );
    isLoading = false;
    setState(() {});
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
      return 'just now';
    }
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(carrierViewModel);
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
              "Saved",
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
                text: "Save Post",
              ),
              Tab(text: "Save Search"),
            ],
          ),
        ),
        backgroundColor: primaryLightColor,
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
            else if (_viewModel.carrierSavedLoads?.data.isEmpty ?? true)
              const Center(
                child: Text(
                  "No Saved Loads",
                  style: TextStyle(color: grey1, fontSize: 16),
                ),
              )
            else
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount:
                            _viewModel.carrierSavedLoads?.data.length ?? 0,
                        itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            context.pushNamed(
                              AppRoute.loadDetailView.name,
                              extra: _viewModel.carrierSavedLoads?.data[index],
                            );
                          },
                          child: Container(
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
                                                  .carrierSavedLoads
                                                  ?.data[index]
                                                  .createdBy
                                                  ?.first
                                                  .profilePicUrl !=
                                              ""
                                          ? NetworkImage(_viewModel
                                                  .carrierSavedLoads
                                                  ?.data[index]
                                                  .createdBy
                                                  ?.first
                                                  .profilePicUrl ??
                                              "")
                                          : const NetworkImage(
                                              "https://shipload-assets.s3.us-east-2.amazonaws.com/1706705145392-truck.png"),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          _viewModel.carrierSavedLoads
                                                  ?.data[index].companyName ??
                                              "",
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: kBlack,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          "Posted : ${formatTimeDifference(_viewModel.carrierSavedLoads?.data[index].createdAt.toLocal() ?? DateTime.now())}",
                                          style: const TextStyle(
                                            color: darkGrey,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    InkWell(
                                      onTap: () async {
                                        await _viewModel.saveUnsaveLoad(
                                          SharedPreferenceService.getString(
                                                SharedPreferenceService
                                                    .AUTH_TOKEN,
                                              ) ??
                                              "",
                                          _viewModel.carrierSavedLoads
                                                  ?.data[index].id ??
                                              "",
                                        );
                                      },
                                      child: Image.asset(
                                        _viewModel.carrierSavedLoads!
                                                .data[index].isSaved
                                            ? "assets/icons/saved_violet.webp"
                                            : "assets/icons/save_outlined.webp",
                                        height: 25,
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset(
                                                "assets/icons/location_green.webp",
                                                height: 15,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  _viewModel
                                                          .carrierSavedLoads
                                                          ?.data[index]
                                                          .pickupLocation
                                                          .pickupLocationName ??
                                                      "",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: kBlack,
                                                    fontSize: 12.sp,
                                                  ),
                                                  maxLines: 3,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            DateFormat('MMMM d').format(
                                              _viewModel
                                                      .carrierSavedLoads
                                                      ?.data[index]
                                                      .pickupDate ??
                                                  DateTime.now(),
                                            ),
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: kGrey,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Image.asset(
                                      "assets/images/truck_lines.png",
                                      height: 12,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset(
                                                "assets/icons/location_red.webp",
                                                height: 15,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  _viewModel
                                                          .carrierSavedLoads
                                                          ?.data[index]
                                                          .dropLocation
                                                          .dropLocationName ??
                                                      "",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: kBlack,
                                                    fontSize: 12.sp,
                                                  ),
                                                  maxLines: 3,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            DateFormat('MMMM d').format(
                                              _viewModel.carrierSavedLoads
                                                      ?.data[index].dropDate ??
                                                  DateTime.now(),
                                            ),
                                            style: const TextStyle(
                                              color: darkGrey,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
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
                                          "${_viewModel.carrierSavedLoads?.data[index].quantity.toStringAsFixed(0) ?? ""} lbs",
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
                                          _viewModel
                                                  .carrierSavedLoads
                                                  ?.data[index]
                                                  .trailerType
                                                  .first ??
                                              "",
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
                                          "${_viewModel.carrierSavedLoads?.data[index].loadDistance.toStringAsFixed(0) ?? ""} mi",
                                          style: const TextStyle(
                                            color: grey2,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                // Row(
                                //   children: [
                                //     Image.asset(
                                //       "assets/icons/mileDH.webp",
                                //       height: 15,
                                //     ),
                                //     const SizedBox(
                                //       width: 5,
                                //     ),
                                //     const Text(
                                //       "110 mi DH",
                                //       style: TextStyle(
                                //           color: grey2, fontSize: 14),
                                //     ),
                                //   ],
                                // ),
                                // const SizedBox(
                                //   height: 15,
                                // ),
                                Row(
                                  children: [
                                    Text(
                                      "\$${_viewModel.carrierSavedLoads?.data[index].amount ?? ""}",
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
                                      "\$${((_viewModel.carrierSavedLoads?.data[index].amount ?? 0) / (_viewModel.carrierSavedLoads?.data[index].loadDistance ?? 1)).toStringAsFixed(2)}/mi",
                                      style: const TextStyle(
                                        color: grey1,
                                        fontSize: 14,
                                      ),
                                    ),
                                    const Spacer(),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 7,
                                        horizontal: 10,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: primaryColor,
                                      ),
                                      child: const Text(
                                        "Call Now",
                                        style: TextStyle(
                                          color: kWhite,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
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
            else if (_viewModel.savedFiltersListResponse?.data?.isEmpty ?? true)
              const Center(
                child: Text(
                  "No Saved Filters",
                  style: TextStyle(color: grey1, fontSize: 16),
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
                        _viewModel.savedFiltersListResponse?.data?.length ?? 0,
                        (index) => Container(
                          // height: 270,
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
                                    backgroundColor: primaryColor,
                                    child: Image.asset(
                                      "assets/icons/search.webp",
                                      height: 25,
                                      color: kWhite,
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
                                          _viewModel
                                                  .savedFiltersListResponse
                                                  ?.data?[index]
                                                  .pickupLocationName ??
                                              "",
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: kBlack,
                                            fontSize: 16,
                                          ),
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
                                              "${_viewModel.savedFiltersListResponse?.data?[index].maxLoadDistance ?? 0.toStringAsFixed(0)} mi",
                                              style: const TextStyle(
                                                color: grey2,
                                                fontSize: 14,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Image.asset(
                                              "assets/icons/weight.webp",
                                              height: 15,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "${_viewModel.savedFiltersListResponse?.data?[index].maxWeight ?? 0.toStringAsFixed(0)} lbs",
                                              style: const TextStyle(
                                                color: grey2,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Spacer(),
                                  IconButton(
                                    onPressed: () async {
                                      await _viewModel.deleteSaveSearch(
                                          DeleteSaveSearchRequest(filterIds: [
                                        _viewModel.savedFiltersListResponse
                                                ?.data?[index].id ??
                                            ""
                                      ]));
                                    },
                                    icon: Icon(
                                      Icons.delete,
                                      color: Colors.red.shade800,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const DottedLine(
                                dashLength: 10.0,
                                dashColor: kGrey,
                                dashGapLength: 8.0,
                                // dashGapGradient: [Colors.red, Colors.blue],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                "Trailer Type",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: kBlack,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Wrap(
                                spacing:
                                    8.0, // Horizontal spacing between children
                                runSpacing:
                                    10.0, // Vertical spacing between lines of children
                                children: [
                                  ...List.generate(
                                    _viewModel
                                            .savedFiltersListResponse
                                            ?.data?[index]
                                            .trailerTypes
                                            ?.length ??
                                        0,
                                    (ind) => Container(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 7,
                                        horizontal: 10,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          25,
                                        ),
                                        color: primaryLightColor,
                                      ),
                                      child: FittedBox(
                                        child: Text(
                                          _viewModel
                                                  .savedFiltersListResponse
                                                  ?.data?[index]
                                                  .trailerTypes?[ind] ??
                                              "",
                                          style: const TextStyle(
                                            color: kBlack,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
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
