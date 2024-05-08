import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:shipload_app/data/remote/shipper/models/is_covered.dart';
import 'package:shipload_app/data/remote/shipper/models/shipper_get_all_loads.dart';
import 'package:shipload_app/helpers/base_screen_view.dart';
import 'package:shipload_app/routes/app_routes.dart';
import 'package:shipload_app/services/shared_preference_service.dart';
import 'package:shipload_app/utils/colors.dart';
import 'package:shipload_app/view/screens/shipper/shipper_view_model.dart';

class ShipperHome extends ConsumerStatefulWidget {
  const ShipperHome({super.key});

  @override
  ConsumerState<ShipperHome> createState() => _ShipperHomeState();
}

class _ShipperHomeState extends ConsumerState<ShipperHome> with BaseScreenView {
  late ShipperViewModel _viewModel;
  // List<bool> mark = [];
  bool isLoading = false;
  void initState() {
    super.initState();
    _viewModel = ref.read(shipperViewModel)..attachView(this);

    getData();
  }

  final locationController = TextEditingController();

  void getData() async {
    isLoading = true;
    setState(() {});
    await _viewModel.getAllLoadsbyId(
      SharedPreferenceService.getString(SharedPreferenceService.AUTH_TOKEN) ??
          "",
      ShipperLoadsRequest(
        locationFilter: _viewModel.applyLocation,
        pickupLocation: _viewModel.locationCoordinates,
      ),
    );
    // for (int i = 0;
    //     i < _viewModel.shipperGetAllLoadsResponse!.data.length;
    //     i++) {
    //   mark.add(false);
    // }
    await _viewModel.getProfileDetails(
        SharedPreferenceService.getString(SharedPreferenceService.AUTH_TOKEN) ??
            "",
        context);
    isLoading = false;
    setState(() {});
  }

  void delteLoad(String id) async {
    isLoading = true;
    setState(() {});
    await _viewModel.deleteLoad(
      id,
      SharedPreferenceService.getString(
            SharedPreferenceService.AUTH_TOKEN,
          ) ??
          "",
      context,
    );
    await _viewModel.getAllLoadsbyId(
      SharedPreferenceService.getString(SharedPreferenceService.AUTH_TOKEN) ??
          "",
      ShipperLoadsRequest(
        locationFilter: _viewModel.applyLocation,
        pickupLocation: _viewModel.locationCoordinates,
      ),
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
      return 'Just now';
    }
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

  int numberOfDays(DateTime inputDateStr) {
    return DateTime.now().difference(inputDateStr).inDays;
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(shipperViewModel);
    return Scaffold(
      backgroundColor: primaryLightColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: InkWell(
        onTap: () {
          context.pushNamed(AppRoute.postLoadView.name);
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
                "assets/icons/shipper_home.webp",
                height: 25,
                color: kWhite,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Post a load',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              width: double.infinity,
              height: 140.h,
              decoration: const BoxDecoration(
                color: primaryDarkColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16, top: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Welcome ${_viewModel.profileDetailsResponse?.data.fullName ?? ""}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                height: 1.83,
                              ),
                            ),
                            Row(
                              children: [
                                // const Icon(
                                //   Icons.location_pin,
                                //   color: Colors.white,
                                // ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  child: Text(
                                    _viewModel.isApplyLocation
                                        ? _viewModel.getLocationFilterName
                                        : "All",
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Nunito',
                                      fontWeight: FontWeight.w700,
                                      height: 1.38,
                                    ),
                                  ),
                                ),
                                // IconButton(
                                //   icon: const Icon(
                                //     Icons.expand_more,
                                //     color: Colors.white,
                                //   ),
                                //   onPressed: () {
                                //     //open bottomsheet
                                //     showModalBottomSheet(
                                //       context: context,
                                //       isScrollControlled: true,
                                //       builder: (BuildContext context) {
                                //         return Container(
                                //           padding: const EdgeInsets.all(16),
                                //           width: double.infinity,
                                //           decoration: const BoxDecoration(
                                //             color: Colors.white,
                                //             borderRadius: BorderRadius.only(
                                //               topLeft: Radius.circular(20),
                                //               topRight: Radius.circular(20),
                                //             ),
                                //           ),
                                //           child: Padding(
                                //             padding: MediaQuery.of(context)
                                //                 .viewInsets,
                                //             child: SingleChildScrollView(
                                //               child: Column(
                                //                 mainAxisSize: MainAxisSize.min,
                                //                 crossAxisAlignment:
                                //                     CrossAxisAlignment.start,
                                //                 children: [
                                //                   Row(
                                //                     mainAxisAlignment:
                                //                         MainAxisAlignment
                                //                             .spaceBetween,
                                //                     children: [
                                //                       const Text(
                                //                         'Select location',
                                //                         style: TextStyle(
                                //                           fontSize: 20,
                                //                           color: kBlack,
                                //                           fontWeight:
                                //                               FontWeight.w700,
                                //                         ),
                                //                       ),
                                //                       IconButton(
                                //                         onPressed: () {
                                //                           context.pop();
                                //                         },
                                //                         icon: Image.asset(
                                //                           "assets/icons/close_circle.webp",
                                //                           height: 30,
                                //                         ),
                                //                       )
                                //                     ],
                                //                   ),
                                //                   // const SizedBox(height: 10),
                                //                   Align(
                                //                     alignment:
                                //                         Alignment.centerRight,
                                //                     child: TextButton(
                                //                       onPressed: () async {
                                //                         _viewModel
                                //                             .locationCoordinates = [];
                                //                         _viewModel
                                //                             .locationFilterName = "";
                                //                         _viewModel
                                //                                 .applyLocation =
                                //                             false;
                                //                         locationController
                                //                             .clear();
                                //                         isLoading = true;
                                //                         setState(() {});
                                //                         await _viewModel
                                //                             .getAllLoadsbyId(
                                //                           SharedPreferenceService
                                //                                   .getString(
                                //                                 SharedPreferenceService
                                //                                     .AUTH_TOKEN,
                                //                               ) ??
                                //                               "",
                                //                           ShipperLoadsRequest(
                                //                             locationFilter:
                                //                                 false,
                                //                             pickupLocation:
                                //                                 _viewModel
                                //                                     .locationCoordinates,
                                //                           ),
                                //                         );
                                //                         // for (int i = 0;
                                //                         //     i < _viewModel.shipperGetAllLoadsResponse!.data.length;
                                //                         //     i++) {
                                //                         //   mark.add(false);
                                //                         // }
                                //                         await _viewModel
                                //                             .getProfileDetails(
                                //                           SharedPreferenceService
                                //                                   .getString(
                                //                                 SharedPreferenceService
                                //                                     .AUTH_TOKEN,
                                //                               ) ??
                                //                               "",
                                //                         );
                                //                         isLoading = false;

                                //                         setState(() {});
                                //                         context.pop();
                                //                       },
                                //                       child: const Text(
                                //                         'Clear',
                                //                         style: TextStyle(
                                //                           fontSize: 14,
                                //                           color: grey1,
                                //                           fontWeight:
                                //                               FontWeight.w700,
                                //                         ),
                                //                       ),
                                //                     ),
                                //                   ),
                                //                   // const SizedBox(height: 10),
                                //                   TypeAheadField(
                                //                     textFieldConfiguration:
                                //                         TextFieldConfiguration(
                                //                       controller:
                                //                           locationController,
                                //                       onChanged: (value) {
                                //                         _viewModel
                                //                             .locationCoordinates = [];
                                //                         _viewModel
                                //                             .locationFilterName = "";
                                //                         _viewModel
                                //                                 .applyLocation =
                                //                             false;
                                //                       },
                                //                       style:
                                //                           DefaultTextStyle.of(
                                //                         context,
                                //                       ).style.copyWith(
                                //                                 fontStyle:
                                //                                     FontStyle
                                //                                         .italic,
                                //                               ),
                                //                       decoration:
                                //                           const InputDecoration(
                                //                         hintText:
                                //                             "Search for area...",
                                //                         helperStyle: TextStyle(
                                //                           color: grey2,
                                //                         ),
                                //                         border:
                                //                             OutlineInputBorder(),
                                //                       ),
                                //                     ),
                                //                     // TextFieldConfiguration(
                                //                     //   // autofocus: true,

                                //                     // ),
                                //                     suggestionsCallback:
                                //                         (pattern) async {
                                //                       final String apiUrl =
                                //                           "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$pattern&key=${AppConstants.apiKey}&types=(cities)&components=country:us";

                                //                       final response =
                                //                           await Dio()
                                //                               .get(apiUrl);

                                //                       Logger.write(
                                //                         response.data
                                //                             .toString(),
                                //                       );

                                //                       if (response.statusCode ==
                                //                           200) {
                                //                         final data =
                                //                             response.data;
                                //                         if (data['status'] ==
                                //                             'OK') {
                                //                           final predictions =
                                //                               data[
                                //                                   'predictions'];
                                //                           final List<
                                //                                   Map<String,
                                //                                       dynamic>>
                                //                               suggestions = [];
                                //                           for (var prediction
                                //                               in predictions) {
                                //                             final description =
                                //                                 prediction[
                                //                                     'description'];
                                //                             final placeId =
                                //                                 prediction[
                                //                                     'place_id'];

                                //                             final suggestion = {
                                //                               'description':
                                //                                   description
                                //                                       .toString()
                                //                                       .split(
                                //                                         ", USA",
                                //                                       )[0],
                                //                               'place_id':
                                //                                   placeId,
                                //                             };

                                //                             suggestions.add(
                                //                               suggestion,
                                //                             );
                                //                           }

                                //                           return suggestions;
                                //                         }
                                //                       }
                                //                       return [];
                                //                     },
                                //                     itemBuilder:
                                //                         (context, suggestion) {
                                //                       return ListTile(
                                //                         leading: Image.asset(
                                //                           "assets/icons/location_green.webp",
                                //                           height: 20,
                                //                           color: primaryColor,
                                //                         ),
                                //                         title: Text(
                                //                           suggestion[
                                //                               'description'],
                                //                         ),
                                //                       );
                                //                     },
                                //                     onSuggestionSelected:
                                //                         (suggestion) async {
                                //                       final selectedSuggestion =
                                //                           suggestion;
                                //                       final String placeId =
                                //                           selectedSuggestion[
                                //                               'place_id'];

                                //                       // Make an API call to get the details of the selected place using the place ID

                                //                       final String
                                //                           detailsApiUrl =
                                //                           "https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=${AppConstants.apiKey}&components=country:us";
                                //                       // Perform an HTTP request to retrieve the place details
                                //                       final detailsResponse =
                                //                           await Dio().get(
                                //                         detailsApiUrl,
                                //                       );

                                //                       if (detailsResponse
                                //                               .statusCode ==
                                //                           200) {
                                //                         final detailsData =
                                //                             detailsResponse
                                //                                 .data;
                                //                         if (detailsData[
                                //                                 'status'] ==
                                //                             'OK') {
                                //                           final result =
                                //                               detailsData[
                                //                                   'result'];
                                //                           final double
                                //                               latitude =
                                //                               result['geometry']
                                //                                       [
                                //                                       'location']
                                //                                   ['lat'];
                                //                           final double
                                //                               longitude =
                                //                               result['geometry']
                                //                                       [
                                //                                       'location']
                                //                                   ['lng'];

                                //                           // Use the latitude and longitude values as needed
                                //                           print(
                                //                             'Latitude: $latitude, Longitude: $longitude',
                                //                           );
                                //                           _viewModel
                                //                               .locationCoordinates = [
                                //                             longitude,
                                //                             latitude
                                //                           ];
                                //                           // _gotoSpecificPosition(LatLng(
                                //                           //     latitude, longitude));

                                //                           _viewModel
                                //                                   .locationFilterName =
                                //                               suggestion[
                                //                                   'description'];
                                //                           locationController
                                //                                   .text =
                                //                               suggestion[
                                //                                   'description'];
                                //                           setState(() {});
                                //                           context.pop();
                                //                         }
                                //                       }
                                //                       _viewModel.applyLocation =
                                //                           true;
                                //                       _viewModel
                                //                           .getAllLoadsbyId(
                                //                         SharedPreferenceService
                                //                                 .getString(
                                //                               SharedPreferenceService
                                //                                   .AUTH_TOKEN,
                                //                             ) ??
                                //                             "",
                                //                         ShipperLoadsRequest(
                                //                           locationFilter:
                                //                               _viewModel
                                //                                   .applyLocation,
                                //                           pickupLocation: _viewModel
                                //                               .locationCoordinates,
                                //                         ),
                                //                       );
                                //                     },
                                //                   ),

                                //                   const SizedBox(height: 20),
                                //                   InkWell(
                                //                     onTap: () {
                                //                       context.pushNamed(
                                //                         AppRoute
                                //                             .searchLocShipperView
                                //                             .name,
                                //                       );
                                //                     },
                                //                     child: Container(
                                //                       height: 80,
                                //                       width: double.infinity,
                                //                       padding:
                                //                           const EdgeInsets.all(
                                //                         12,
                                //                       ),
                                //                       decoration: BoxDecoration(
                                //                         borderRadius:
                                //                             BorderRadius
                                //                                 .circular(10),
                                //                         color: boxColor,
                                //                       ),
                                //                       child: Row(
                                //                         children: [
                                //                           Image.asset(
                                //                             "assets/icons/current_location.webp",
                                //                             height: 20,
                                //                           ),
                                //                           const SizedBox(
                                //                             width: 10,
                                //                           ),
                                //                           const Text(
                                //                             "Use Current location",
                                //                             style: TextStyle(
                                //                               color: kBlack,
                                //                               fontSize: 16,
                                //                               fontWeight:
                                //                                   FontWeight
                                //                                       .w700,
                                //                             ),
                                //                           ),
                                //                           const Spacer(),
                                //                           Image.asset(
                                //                             "assets/icons/arrow_forward.webp",
                                //                             color: grey1,
                                //                             height: 20,
                                //                           )
                                //                         ],
                                //                       ),
                                //                     ),
                                //                   ),
                                //                   const SizedBox(height: 20),
                                //                   // const Text(
                                //                   //   "Last Searches",
                                //                   //   style: TextStyle(
                                //                   //     color: kBlack,
                                //                   //     fontSize: 16,
                                //                   //     fontWeight:
                                //                   //         FontWeight.w700,
                                //                   //   ),
                                //                   // ),
                                //                   // const SizedBox(height: 10),
                                //                   // ListView.builder(
                                //                   //   itemCount: 3,
                                //                   //   physics:
                                //                   //       const NeverScrollableScrollPhysics(),
                                //                   //   shrinkWrap: true,
                                //                   //   itemBuilder:
                                //                   //       (context, index) {
                                //                   //     return Column(
                                //                   //       children: [
                                //                   //         Row(
                                //                   //           children: [
                                //                   //             Image.asset(
                                //                   //               "assets/icons/location_green.webp",
                                //                   //               height: 20,
                                //                   //               color:
                                //                   //                   primaryColor,
                                //                   //             ),
                                //                   //             const SizedBox(
                                //                   //               width: 10,
                                //                   //             ),
                                //                   //             const Expanded(
                                //                   //               child: Column(
                                //                   //                 crossAxisAlignment:
                                //                   //                     CrossAxisAlignment
                                //                   //                         .start,
                                //                   //                 children: [
                                //                   //                   Text(
                                //                   //                     "New York",
                                //                   //                     style:
                                //                   //                         TextStyle(
                                //                   //                       color:
                                //                   //                           kBlack,
                                //                   //                       fontSize:
                                //                   //                           16,
                                //                   //                       fontWeight:
                                //                   //                           FontWeight.w700,
                                //                   //                     ),
                                //                   //                   ),
                                //                   //                   Text(
                                //                   //                     "47823 S. Lakeview Lane #467 San Diego, CA 922121 | James County",
                                //                   //                     style:
                                //                   //                         TextStyle(
                                //                   //                       color:
                                //                   //                           grey2,
                                //                   //                       fontSize:
                                //                   //                           14,
                                //                   //                     ),
                                //                   //                   ),
                                //                   //                 ],
                                //                   //               ),
                                //                   //             )
                                //                   //           ],
                                //                   //         ),
                                //                   //         const Divider(
                                //                   //             color: grey2),
                                //                   //       ],
                                //                   //     );
                                //                   //   },
                                //                   // ),
                                //                 ],
                                //               ),
                                //             ),
                                //           ),
                                //         );
                                //       },
                                //     );
                                //   },
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: AssetImage(
                              "assets/images/bg_truck.png",
                            ),
                          ),
                        ),
                        height: 140.h,
                        width: 140.h,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (isLoading)
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.3,
                        ),
                        child: Lottie.asset(
                          "assets/images/loading.json",
                          height: 100,
                        ),
                      ),
                    )
                  else if (_viewModel.shipperGetAllLoadsResponse?.data.length ==
                      0)
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.12,
                          ),
                          child: Image.asset("assets/images/no_load.webp"),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Please post a Load with full details to get the best carrier match for the Shipment.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: kBlack,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    )
                  else
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50),
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: _viewModel
                                .shipperGetAllLoadsResponse?.data.length ??
                            0,
                        itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            context.pushNamed(
                              AppRoute.loadDetailView.name,
                              extra: _viewModel
                                  .shipperGetAllLoadsResponse?.data[index],
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CircleAvatar(
                                      radius: 25,
                                      backgroundColor: primaryLightColor,
                                      backgroundImage: _viewModel
                                                  .profileDetailsResponse
                                                  ?.data
                                                  .profilePicUrl !=
                                              ""
                                          ? NetworkImage(_viewModel
                                                  .profileDetailsResponse
                                                  ?.data
                                                  .profilePicUrl ??
                                              "")
                                          : const NetworkImage(
                                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzzGFhRbE7B4oEOcImH6DItKAugGoWdaNpXQ&usqp=CAU",
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
                                            "${_viewModel.shipperGetAllLoadsResponse?.data[index].pickupLocation?.pickupLocationName} - ${_viewModel.shipperGetAllLoadsResponse?.data[index].dropLocation?.dropLocationName}",
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: kBlack,
                                              fontSize: 16,
                                            ),
                                          ),
                                          Text(
                                            "${convertDateString("${_viewModel.shipperGetAllLoadsResponse?.data[index].createdAt?.toLocal()}")} | ${_viewModel.shipperGetAllLoadsResponse?.data[index].loadId}",
                                            style: const TextStyle(
                                              color: darkGrey,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    if (_viewModel.shipperGetAllLoadsResponse
                                            ?.data[index].isCovered ==
                                        false)
                                      PopupMenuButton<String>(
                                        color: kWhite,
                                        child: const Icon(
                                          Icons.more_vert,
                                          color: kBlack,
                                        ),
                                        itemBuilder: (BuildContext context) {
                                          return [
                                            PopupMenuItem<String>(
                                              value: 'option1',
                                              child: InkWell(
                                                onTap: () {
                                                  // context.pop();
                                                  context.pushNamed(
                                                    AppRoute.editLoadView.name,
                                                    extra: {
                                                      "data": _viewModel
                                                          .shipperGetAllLoadsResponse
                                                          ?.data[index],
                                                      "isRepost": _viewModel
                                                          .shipperGetAllLoadsResponse
                                                          ?.data[index]
                                                          .isCovered,
                                                    },
                                                  );
                                                },
                                                child: SizedBox(
                                                    width: 90,
                                                    child: Row(children: [
                                                      Image.asset(
                                                        "assets/icons/edit.webp",
                                                        height: 20,
                                                        color: kBlack,
                                                      ),
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                      const Text(
                                                        'Edit',
                                                        style: TextStyle(
                                                          color: kBlack,
                                                        ),
                                                      ),
                                                    ])),
                                              ),
                                            ),
                                            const PopupMenuDivider(),
                                            PopupMenuItem<String>(
                                              value: 'option2',
                                              child: InkWell(
                                                onTap: () async {
                                                  context.pop();
                                                  // isLoading = true;
                                                  // setState(() {});

                                                  delteLoad(
                                                    _viewModel
                                                            .shipperGetAllLoadsResponse
                                                            ?.data[index]
                                                            .id ??
                                                        "",
                                                  );
                                                  // isLoading = false;
                                                  // setState(() {});
                                                },
                                                child: const SizedBox(
                                                  width: 90,
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.delete,
                                                        color: Colors.red,
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Text(
                                                        'Delete',
                                                        style: TextStyle(
                                                          color: Colors.red,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ];
                                        },
                                        onSelected: (String value) {
                                          // Handle selected option here
                                          switch (value) {
                                            case 'option1':
                                              // Handle option 1
                                              break;
                                            case 'option2':
                                              // Handle option 2
                                              break;
                                          }
                                        },
                                      ),

                                    // IconButton(
                                    //     onPressed: () {
                                    //       PopupMenuButton<String>(
                                    //           itemBuilder:
                                    //               (BuildContext context) {
                                    //         return [
                                    //           const PopupMenuItem<String>(
                                    //             value: 'option1',
                                    //             child: Text('Option 1'),
                                    //           ),
                                    //           const PopupMenuItem<String>(
                                    //             value: 'option2',
                                    //             child: Text('Option 2'),
                                    //           ),
                                    //           const PopupMenuItem<String>(
                                    //             value: 'option3',
                                    //             child: Text('Option 3'),
                                    //           ),
                                    //         ];
                                    //       }, onSelected: (String value) {
                                    //         // Handle selected option here
                                    //         switch (value) {
                                    //           case 'option1':
                                    //             // Handle option 1
                                    //             break;
                                    //           case 'option2':
                                    //             // Handle option 2
                                    //             break;
                                    //           case 'option3':
                                    //             // Handle option 3
                                    //             break;
                                    //         }
                                    //       });
                                    //     },
                                    //     icon: const Icon(Icons.more_vert,
                                    //         color: kBlack))
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
                                          "${_viewModel.shipperGetAllLoadsResponse?.data[index].quantity?.toStringAsFixed(0) ?? ""} lbs",
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
                                                      .shipperGetAllLoadsResponse
                                                      ?.data[index]
                                                      .trailerType
                                                      ?.isEmpty ==
                                                  true
                                              ? ""
                                              : "${_viewModel.shipperGetAllLoadsResponse?.data[index].trailerType?.first}",
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
                                          "${_viewModel.shipperGetAllLoadsResponse?.data[index].loadDistance?.toStringAsFixed(0) ?? ""} mi",
                                          style: const TextStyle(
                                            color: grey2,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/icons/mileDH.webp",
                                      height: 15,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "${_viewModel.shipperGetAllLoadsResponse?.data[index].deadHead?.toStringAsFixed(0) ?? "NA"} mi DH",
                                      style: const TextStyle(
                                        color: grey2,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "\$${_viewModel.shipperGetAllLoadsResponse?.data[index].amount}",
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
                                      "\$${((_viewModel.shipperGetAllLoadsResponse?.data[index].amount ?? 0) / (_viewModel.shipperGetAllLoadsResponse?.data[index].loadDistance ?? 1)).toStringAsFixed(2)}/mi",
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
                                      formatTimeDifference(
                                        _viewModel.shipperGetAllLoadsResponse
                                                ?.data[index].createdAt
                                                ?.toLocal() ??
                                            DateTime.now(),
                                      ),
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
                                if (_viewModel.shipperGetAllLoadsResponse
                                        ?.data[index].isCovered ==
                                    false)
                                  InkWell(
                                    onTap: () async {
                                      // mark[index] = true;
                                      // setState(() {});
                                      await _viewModel.isCovered(
                                        const IsCoveredRequest(
                                          isCovered: true,
                                        ),
                                        _viewModel.shipperGetAllLoadsResponse
                                                ?.data[index].id ??
                                            "",
                                        SharedPreferenceService.getString(
                                              SharedPreferenceService
                                                  .AUTH_TOKEN,
                                            ) ??
                                            "",
                                        context,
                                      );

                                      setState(() {});
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: const Color(0xff0AB506),
                                      ),
                                      child: const Center(
                                        child: Text(
                                          "Mark as Covered",
                                          style: TextStyle(
                                            color: kWhite,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                else
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: grey1,
                                    ),
                                    child: const Center(
                                      child: Text(
                                        "Covered",
                                        style: TextStyle(
                                          color: kWhite,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
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
