// ignore_for_file: avoid_print
import 'dart:async';
import 'dart:developer';

import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:dio/dio.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:geocoding/geocoding.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:shipload_app/core/core.dart';
import 'package:shipload_app/data/remote/carrier/models/carrier_loads_filter.dart';
import 'package:shipload_app/helpers/base_screen_view.dart';
import 'package:shipload_app/routes/app_routes.dart';
import 'package:shipload_app/services/shared_preference_service.dart';
import 'package:shipload_app/utils/colors.dart';
import 'package:shipload_app/utils/logger.dart';
import 'package:shipload_app/view/components/backgroundWidget/background_widget.dart';
import 'package:shipload_app/view/components/customButton.dart';
import 'package:shipload_app/view/screens/carrier/carrier_view_model.dart';
import 'package:shipload_app/view/screens/shipper/shipper_view_model.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksView extends ConsumerStatefulWidget {
  const BooksView({super.key});

  @override
  ConsumerState<BooksView> createState() => _BooksViewState();
}

class _BooksViewState extends ConsumerState<BooksView> with BaseScreenView {
  int loadType = -1;
  late CarrierViewModel _viewModel;
  bool isLoading = false;
  final sourceLocationController = TextEditingController();
  bool locationLoading = false;
  // final Completer<GoogleMapController> _googleMapController = Completer();

  // Future _gotoSpecificPosition(LatLng position) async {
  //   final GoogleMapController mapController = await _googleMapController.future;
  //   mapController.animateCamera(
  //     CameraUpdate.newCameraPosition(
  //       CameraPosition(target: position, zoom: 17.5),
  //     ),
  //   );
  //   //every time that we dragged pin , it will list down the address here
  //   await _getAddress(position);
  // }

  bool isSaving = false;
  //get address from dragged pin
  Future _getAddress(LatLng position) async {
    //this will list down all address around the position
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    Placemark address = placemarks[0]; // get only first and closest address
    String addresStr =
        "${address.street}, ${address.locality}, ${address.administrativeArea}, ${address.country}";
  }
  List<dynamic>? dataList;

  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(carrierViewModel)..attachView(this);
    getData();
  }

  Future<void> getData() async {
    ref.read(shipperViewModel).getProfileDetails(
        SharedPreferenceService.getString( SharedPreferenceService.AUTH_TOKEN, ) ?? "",context);
        isLoading = true;
         setState(() {});
         _viewModel.isDefault
        ? await _viewModel.defaultFilter(
            SharedPreferenceService.getString(SharedPreferenceService.AUTH_TOKEN,) ?? "",
            DefaultFilterRequest(
              date: DateFormat('yyyy-MM-dd').format(_viewModel.selectedDate),
              pickupLocation: [0, 0],
            ),
          )
        : await _viewModel.getCarrierFilter(
            SharedPreferenceService.getString(
                  SharedPreferenceService.AUTH_TOKEN,
                ) ??
                "",
            FiltersRequest(
              pickupLocationName: _viewModel.pickupLocationName,
              dropLocationName: _viewModel.dropLocationName,
              minLoadDistance: _viewModel.minLoadDistance,
              maxLoadDistance: _viewModel.maxLoadDistance,
              minLoadLength: _viewModel.minLoadLength,
              maxLoadLength: _viewModel.maxLoadLength,
              pickupLocation: _viewModel.pickupLocation,
              dropLocation: _viewModel.dropLocation,
              pickupRadius: _viewModel.pickupLocation.isEmpty
                  ? null
                  : _viewModel.pickupRadius,
              dropRadius: _viewModel.dropLocation.isEmpty
                  ? null
                  : _viewModel.dropRadius,
              minWeight: _viewModel.minWeight,
              maxWeight: _viewModel.maxWeight,
              minPrice: _viewModel.minPrice,
              maxPrice: _viewModel.maxPrice,
              minRate: _viewModel.minRate,
              maxRate: _viewModel.maxRate,
              date: DateFormat('yyyy-MM-dd').format(_viewModel.selectedDate),
              // date: "2023-11-07",
              trailerTypes: _viewModel.trailerSelected,
              loadRequirement: _viewModel.loadRequirementsSelected,
              loadType: _viewModel.loadType == 0
                  ? "Full Load"
                  : _viewModel.loadType == 1
                      ? "Partial Load"
                      : null,
              companyNames: _viewModel.companiesSelected,
            ),
          );
         isLoading = false;
         setState(() {});
  }

  List<String> sortBy = [];
  String formatTimeDifference(DateTime createdDate) {
    final now = DateTime.now();
    final difference = now.difference(createdDate);

    if (difference.inDays > 1) {
      return '${difference.inDays}d ';
    } else if (difference.inDays == 1) {
      return '1d ';
    } else if (difference.inHours >= 1) {
      return '${difference.inHours} hr ';
    } else if (difference.inMinutes >= 1) {
      return '${difference.inMinutes} mins ';
    } else {
      return 'Just now';
    }
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(carrierViewModel);
    return Scaffold(
      backgroundColor: primaryLightColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            const BackgroundWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 60.h),
                  Text(
                    'Welcome ${ref.watch(shipperViewModel).profileDetailsResponse?.data.fullName}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      height: 1.83,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.location_pin,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Text(
                          _viewModel.pickupLocationName == ""
                              ? "Anywhere"
                              : _viewModel.pickupLocationName,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                            height: 1.38,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.expand_more,
                          color: Colors.white,
                        ),
                        onPressed: () async {
                          //open bottomsheet
                          showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            builder: (BuildContext context) {
                              return Container(
                                padding: const EdgeInsets.all(16),
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                ),
                                child: Padding(
                                  padding: MediaQuery.of(context).viewInsets,
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              'Select location',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: kBlack,
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                            IconButton(
                                              onPressed: () {
                                                context.pop();
                                              },
                                              icon: Image.asset(
                                                "assets/icons/close_circle.webp",
                                                height: 30,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 15),
                                        TypeAheadField(
                                          textFieldConfiguration:
                                              TextFieldConfiguration(
                                            controller:
                                                sourceLocationController,
                                            onChanged: (value) {
                                              _viewModel.pickupLocation = [];
                                              _viewModel.pickupLocationName =
                                                  "";
                                            },
                                            style: DefaultTextStyle.of(
                                              context,
                                            ).style.copyWith(
                                                  fontStyle: FontStyle.italic,
                                                ),
                                            decoration: const InputDecoration(
                                              hintText: "Search for area...",
                                              helperStyle: TextStyle(
                                                color: grey2,
                                              ),
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                          // TextFieldConfiguration(
                                          //   // autofocus: true,

                                          // ),
                                          suggestionsCallback: (pattern) async {
                                            final String apiUrl =
                                                "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$pattern&key=${AppConstants.apiKey}&types=(cities)&components=country:us";

                                            final response =
                                                await Dio().get(apiUrl);

                                            Logger.write(
                                              response.data.toString(),
                                            );

                                            if (response.statusCode == 200) {
                                              final data = response.data;
                                              if (data['status'] == 'OK') {
                                                final predictions =
                                                    data['predictions'];
                                                final List<Map<String, dynamic>>
                                                    suggestions = [];
                                                for (var prediction
                                                    in predictions) {
                                                  final description =
                                                      prediction['description'];
                                                  final placeId =
                                                      prediction['place_id'];

                                                  final suggestion = {
                                                    'description': description
                                                        .toString()
                                                        .split(", USA")[0],
                                                    'place_id': placeId,
                                                  };

                                                  suggestions.add(suggestion);
                                                }

                                                return suggestions;
                                              }
                                            }
                                            return [];
                                          },
                                          itemBuilder: (context, suggestion) {
                                            return ListTile(
                                              leading: Image.asset(
                                                "assets/icons/location_green.webp",
                                                height: 20,
                                                color: primaryColor,
                                              ),
                                              title: Text(
                                                suggestion['description'],
                                              ),
                                            );
                                          },
                                          onSuggestionSelected:
                                              (suggestion) async {
                                            final selectedSuggestion =
                                                suggestion;
                                            final String placeId =
                                                selectedSuggestion['place_id'];

                                            // Make an API call to get the details of the selected place using the place ID

                                            final String detailsApiUrl =
                                                "https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=${AppConstants.apiKey}&components=country:us";
                                            // Perform an HTTP request to retrieve the place details
                                            final detailsResponse =
                                                await Dio().get(detailsApiUrl);

                                            if (detailsResponse.statusCode ==
                                                200) {
                                              final detailsData =
                                                  detailsResponse.data;
                                              if (detailsData['status'] ==
                                                  'OK') {
                                                final result =
                                                    detailsData['result'];
                                                final double latitude =
                                                    result['geometry']
                                                        ['location']['lat'];
                                                final double longitude =
                                                    result['geometry']
                                                        ['location']['lng'];

                                                // Use the latitude and longitude values as needed
                                                print(
                                                  'Latitude: $latitude, Longitude: $longitude',
                                                );
                                                _viewModel.pickupLocation = [
                                                  longitude,
                                                  latitude
                                                ];
                                                // _gotoSpecificPosition(LatLng(
                                                //     latitude, longitude));

                                                _viewModel.pickupLocationName =
                                                    suggestion['description'];
                                                sourceLocationController.text =
                                                    suggestion['description'];
                                                setState(() {});
                                                context.pop();
                                              }
                                            }
                                            _viewModel.isDefault = false;
                                            await _viewModel.getCarrierFilter(
                                              SharedPreferenceService.getString(
                                                    SharedPreferenceService
                                                        .AUTH_TOKEN,
                                                  ) ??
                                                  "",
                                              FiltersRequest(
                                                minLoadDistance:
                                                    _viewModel.minLoadDistance,
                                                maxLoadDistance:
                                                    _viewModel.maxLoadDistance,
                                                minLoadLength:
                                                    _viewModel.minLoadLength,
                                                maxLoadLength:
                                                    _viewModel.maxLoadLength,
                                                pickupLocation:
                                                    _viewModel.pickupLocation,
                                                dropLocation:
                                                    _viewModel.dropLocation,
                                                pickupRadius:
                                                    _viewModel.pickupRadius,
                                                dropRadius:
                                                    _viewModel.dropRadius,
                                                minWeight: _viewModel.minWeight,
                                                maxWeight: _viewModel.maxWeight,
                                                minPrice: _viewModel.minPrice,
                                                maxPrice: _viewModel.maxPrice,
                                                minRate: _viewModel.minRate,
                                                maxRate: _viewModel.maxRate,
                                                date: DateFormat('yyyy-MM-dd')
                                                    .format(
                                                  _viewModel.selectedDate,
                                                ),
                                                pickupLocationName: _viewModel
                                                    .pickupLocationName,
                                                dropLocationName:
                                                    _viewModel.dropLocationName,
                                                // date: "2023-11-07",
                                                trailerTypes:
                                                    _viewModel.trailerSelected,
                                                loadRequirement: _viewModel
                                                    .loadRequirementsSelected,
                                                loadType: _viewModel.loadType ==
                                                        0
                                                    ? "Full Load"
                                                    : _viewModel.loadType == 1
                                                        ? "Partial Load"
                                                        : null,
                                                companyNames: _viewModel
                                                    .companiesSelected,
                                                sortBy: sortBy,
                                                sortOrder:
                                                    loadType == 4 ? "asc" : "",
                                              ),
                                            );
                                            sourceLocationController.clear();
                                          },
                                        ),
                                        const SizedBox(height: 15),
                                        InkWell(
                                          onTap: () {
                                            context.pushNamed(
                                              AppRoute.searchLocationView.name,
                                            );
                                          },
                                          child: Container(
                                            width: double.infinity,
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 12,
                                              vertical: 25,
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: boxColor,
                                            ),
                                            child: Row(
                                              children: [
                                                Image.asset(
                                                  "assets/icons/current_location.webp",
                                                  height: 20,
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                const Text(
                                                  "Use Current location",
                                                  style: TextStyle(
                                                    color: kBlack,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                const Spacer(),
                                                Image.asset(
                                                  "assets/icons/arrow_forward.webp",
                                                  color: grey1,
                                                  height: 20,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 20),
                                        const Text(
                                          "Last Searches",
                                          style: TextStyle(
                                            color: kBlack,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        if (_viewModel.lastSearchResponse ==
                                            null)
                                          const Center(
                                            child: CircularProgressIndicator(
                                              color: primaryColor,
                                            ),
                                          )
                                        else
                                          _viewModel.lastSearchResponse?.data
                                                      ?.length ==
                                                  0
                                              ? const Center(
                                                  child:
                                                      Text("No Recent Search"),
                                                )
                                              : ListView.builder(
                                                  itemCount: _viewModel
                                                          .lastSearchResponse
                                                          ?.data
                                                          ?.length ??
                                                      0,
                                                  physics:
                                                      const NeverScrollableScrollPhysics(),
                                                  shrinkWrap: true,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return InkWell(
                                                      onTap: () async {
                                                        _viewModel
                                                            .pickupLocation = [
                                                          _viewModel
                                                                  .lastSearchResponse
                                                                  ?.data?[index]
                                                                  .coordinates
                                                                  ?.first ??
                                                              0.0,
                                                          _viewModel
                                                                  .lastSearchResponse
                                                                  ?.data?[index]
                                                                  .coordinates?[1] ??
                                                              0.0,
                                                        ];

                                                        _viewModel
                                                            .pickupLocationName = _viewModel
                                                                .lastSearchResponse
                                                                ?.data?[index]
                                                                .locationName ??
                                                            "";

                                                        _viewModel.isDefault =
                                                            false;
                                                        await _viewModel
                                                            .getCarrierFilter(
                                                          SharedPreferenceService
                                                                  .getString(
                                                                SharedPreferenceService
                                                                    .AUTH_TOKEN,
                                                              ) ??
                                                              "",
                                                          FiltersRequest(
                                                            minLoadDistance:
                                                                _viewModel
                                                                    .minLoadDistance,
                                                            maxLoadDistance:
                                                                _viewModel
                                                                    .maxLoadDistance,
                                                            minLoadLength:
                                                                _viewModel
                                                                    .minLoadLength,
                                                            maxLoadLength:
                                                                _viewModel
                                                                    .maxLoadLength,
                                                            pickupLocation:
                                                                _viewModel
                                                                    .pickupLocation,
                                                            dropLocation:
                                                                _viewModel
                                                                    .dropLocation,
                                                            pickupRadius:
                                                                _viewModel
                                                                    .pickupRadius,
                                                            dropRadius:
                                                                _viewModel
                                                                    .dropRadius,
                                                            minWeight:
                                                                _viewModel
                                                                    .minWeight,
                                                            maxWeight:
                                                                _viewModel
                                                                    .maxWeight,
                                                            minPrice: _viewModel
                                                                .minPrice,
                                                            maxPrice: _viewModel
                                                                .maxPrice,
                                                            minRate: _viewModel
                                                                .minRate,
                                                            maxRate: _viewModel
                                                                .maxRate,
                                                            date: DateFormat(
                                                              'yyyy-MM-dd',
                                                            ).format(
                                                              _viewModel
                                                                  .selectedDate,
                                                            ),
                                                            pickupLocationName:
                                                                _viewModel
                                                                    .pickupLocationName,
                                                            dropLocationName:
                                                                _viewModel
                                                                    .dropLocationName,
                                                            // date: "2023-11-07",
                                                            trailerTypes: _viewModel
                                                                .trailerSelected,
                                                            loadRequirement:
                                                                _viewModel
                                                                    .loadRequirementsSelected,
                                                            loadType: _viewModel
                                                                        .loadType ==
                                                                    0
                                                                ? "Full Load"
                                                                : _viewModel.loadType ==
                                                                        1
                                                                    ? "Partial Load"
                                                                    : null,
                                                            companyNames: _viewModel
                                                                .companiesSelected,
                                                            sortBy: sortBy,
                                                            sortOrder:
                                                                loadType == 4
                                                                    ? "asc"
                                                                    : "",
                                                          ),
                                                        );
                                                        context.pop();
                                                      },
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Image.asset(
                                                                "assets/icons/location_green.webp",
                                                                height: 20,
                                                                color:
                                                                    primaryColor,
                                                              ),
                                                              const SizedBox(
                                                                width: 10,
                                                              ),
                                                              Expanded(
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      _viewModel
                                                                              .lastSearchResponse
                                                                              ?.data?[index]
                                                                              .locationName ??
                                                                          "",
                                                                      style:
                                                                          const TextStyle(
                                                                        color:
                                                                            kBlack,
                                                                        fontSize:
                                                                            16,
                                                                        fontWeight:
                                                                            FontWeight.w700,
                                                                      ),
                                                                    ),
                                                                    // const Text(
                                                                    //   "47823 S. Lakeview Lane #467 San Diego, CA 922121 | James County",
                                                                    //   style:
                                                                    //       TextStyle(
                                                                    //     color:
                                                                    //         grey2,
                                                                    //     fontSize:
                                                                    //         14,
                                                                    //   ),
                                                                    // ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          const Divider(
                                                            color: grey2,
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                          // locationLoading = true;
                          // setState(() {});
                          // _viewModel.getRecentSearches(
                          //     SharedPreferenceService.getString(
                          //             SharedPreferenceService.AUTH_TOKEN) ??
                          //         "");
                          // locationLoading = false;
                          // setState(() {});
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 29),
                  InkWell(
                    onTap: () {
                      context.pushNamed(AppRoute.searchFilterView.name);
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: textFormFieldColor,
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/icons/search.webp",
                            height: 20,
                            color: kWhite,
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            "Search Loads",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      DatePicker(
                        DateTime.now(),
                        initialSelectedDate: _viewModel.selectedDate,
                        selectionColor: Colors.white,
                        selectedTextColor: primaryDarkColor,
                        monthTextStyle:
                            const TextStyle(color: Colors.white, fontSize: 10),
                        dayTextStyle:
                            const TextStyle(color: Colors.white, fontSize: 10),

                        // deactivatedColor: Colors.white,
                        dateTextStyle:
                            const TextStyle(color: Colors.white, fontSize: 14),
                        onDateChange: (date) async {
                          _viewModel.selectedDateController = date;
                          print(_viewModel.selectedDateController);
                          setState(() {
                            // _selectedValue = date;
                          });
                          isLoading = true;
                          setState(() {});
                          _viewModel.isDefault
                              ? await _viewModel.defaultFilter(
                                  SharedPreferenceService.getString(
                                        SharedPreferenceService.AUTH_TOKEN,
                                      ) ??
                                      "",
                                  DefaultFilterRequest(
                                    date: DateFormat('yyyy-MM-dd')
                                        .format(_viewModel.selectedDate),
                                    pickupLocation: [0, 0],
                                  ),
                                )
                              : await _viewModel.getCarrierFilter(
                                  SharedPreferenceService.getString(
                                        SharedPreferenceService.AUTH_TOKEN,
                                      ) ??
                                      "",
                                  FiltersRequest(
                                    pickupLocationName:
                                        _viewModel.pickupLocationName,
                                    dropLocationName:
                                        _viewModel.dropLocationName,
                                    minLoadDistance: _viewModel.minLoadDistance,
                                    maxLoadDistance: _viewModel.maxLoadDistance,
                                    minLoadLength: _viewModel.minLoadLength,
                                    maxLoadLength: _viewModel.maxLoadLength,
                                    pickupLocation: _viewModel.pickupLocation,
                                    dropLocation: _viewModel.dropLocation,
                                    pickupRadius:
                                        _viewModel.pickupLocation.isEmpty
                                            ? null
                                            : _viewModel.pickupRadius,
                                    dropRadius: _viewModel.dropLocation.isEmpty
                                        ? null
                                        : _viewModel.dropRadius,
                                    minWeight: _viewModel.minWeight,
                                    maxWeight: _viewModel.maxWeight,
                                    minPrice: _viewModel.minPrice,
                                    maxPrice: _viewModel.maxPrice,
                                    minRate: _viewModel.minRate,
                                    maxRate: _viewModel.maxRate,
                                    date: DateFormat('yyyy-MM-dd')
                                        .format(_viewModel.selectedDate),
                                    // date: "2023-11-07",
                                    trailerTypes: _viewModel.trailerSelected,
                                    loadRequirement:
                                        _viewModel.loadRequirementsSelected,
                                    loadType: _viewModel.loadType == 0
                                        ? "Full Load"
                                        : _viewModel.loadType == 1
                                            ? "Partial Load"
                                            : null,
                                    companyNames: _viewModel.companiesSelected,
                                  ),
                                );
                          isLoading = false;
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Text(
                        'Filter Loads',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                       SizedBox(width: 5.w),
                      Switch(
                        activeColor: kWhite,
                        thumbColor: const MaterialStatePropertyAll(kWhite),
                        activeTrackColor: textFormFieldColor,
                        inactiveTrackColor: grey3,
                        value: !_viewModel.isdefault,
                        onChanged: (_) async {
                          _viewModel.isdefault = !_viewModel.isdefault;
                          print(_viewModel.isdefault);
                          if (_viewModel.isDefault) {
                            _viewModel.pickupLocation = [];
                            _viewModel.pickupLocationName = "";
                          }
                          setState(() {});
                          _viewModel.isDefault ? await _viewModel.defaultFilter(
                                  SharedPreferenceService.getString(SharedPreferenceService.AUTH_TOKEN,) ??"",
                                  DefaultFilterRequest( date: DateFormat('yyyy-MM-dd').format(_viewModel.selectedDate),pickupLocation: [0, 0],),
                                )
                              : await _viewModel.getCarrierFilter( SharedPreferenceService.getString(SharedPreferenceService.AUTH_TOKEN,
                                      ) ??
                                      "",
                                  FiltersRequest(
                                    pickupLocationName:_viewModel.pickupLocationName,
                                    dropLocationName:_viewModel.dropLocationName,
                                    minLoadDistance: _viewModel.minLoadDistance,
                                    maxLoadDistance: _viewModel.maxLoadDistance,
                                    minLoadLength: _viewModel.minLoadLength,
                                    maxLoadLength: _viewModel.maxLoadLength,
                                    pickupLocation: _viewModel.pickupLocation,
                                    dropLocation: _viewModel.dropLocation,
                                    pickupRadius:_viewModel.pickupLocation.isEmpty? null: _viewModel.pickupRadius,
                                    dropRadius: _viewModel.dropLocation.isEmpty ? null : _viewModel.dropRadius,
                                    minWeight: _viewModel.minWeight,
                                    maxWeight: _viewModel.maxWeight,
                                    minPrice: _viewModel.minPrice,
                                    maxPrice: _viewModel.maxPrice,
                                    minRate: _viewModel.minRate,
                                    maxRate: _viewModel.maxRate,
                                    date: DateFormat('yyyy-MM-dd').format(_viewModel.selectedDate),
                                    trailerTypes: _viewModel.trailerSelected,
                                    loadRequirement: _viewModel.loadRequirementsSelected,
                                    loadType: _viewModel.loadType == 0 ? "Full Load" : _viewModel.loadType == 1 ? "Partial Load": null,
                                    companyNames: _viewModel.companiesSelected,
                                  ),
                                );
                        },
                      ),



                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Sorted By',
                            style: TextStyle(
                              color: Color(0xFFB082D6),
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          Text(
                            _viewModel.isDefault ? "Select"
                                : loadType == 0
                                    ? "Rate per mile"
                                    : loadType == 1
                                        ? "Age of post"
                                        : loadType == 2
                                            ? "Price"
                                            : loadType == 3
                                                ? "Deadhead"
                                                : loadType == 4
                                                    ? "Distance (low to high)"
                                                    : loadType == 5
                                                        ? "Distance (high to low)"
                                                        : loadType == 6
                                                            ? "Length"
                                                            : loadType == 7
                                                                ? "Weight"
                                                                : "Select",
                            style:  TextStyle(
                              color: Colors.white,
                              overflow: TextOverflow.ellipsis,
                              fontSize:loadType == 4 || loadType == 5? 13: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 15),
                        ],
                      ),
                       SizedBox(width: 5.w),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              builder: (BuildContext context) {
                                bool saved = false;
                                return StatefulBuilder(
                                  builder: (context, setState) {
                                    return Container(
                                      padding: const EdgeInsets.all(16),
                                      width: double.infinity,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20),
                                        ),
                                      ),
                                      child: Padding(
                                        padding:
                                            MediaQuery.of(context).viewInsets,
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  const Text(
                                                    'Sort',
                                                    style: TextStyle(
                                                      fontSize: 20,
                                                      color: kBlack,
                                                      fontWeight: FontWeight.w700,
                                                    ),
                                                  ),
                                                  IconButton(
                                                    onPressed: () {
                                                      context.pop();
                                                    },
                                                    icon: Image.asset(
                                                      "assets/icons/close_circle.webp",
                                                      height: 30,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 10),
                                              RadioListTile<int>(
                                                contentPadding: EdgeInsets.zero,
                                                value: 0,
                                                groupValue: loadType,
                                                activeColor: primaryColor,
                                                title: Row(
                                                  children: [
                                                    Image.asset(
                                                      "assets/icons/percent.webp",
                                                      height: 25,
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    const Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Rate per mile",
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: kBlack,
                                                            fontSize: 16,
                                                          ),
                                                        ),
                                                        Text(
                                                          "sort by highest rpm",
                                                          style: TextStyle(
                                                            color: darkGrey,
                                                            fontSize: 14,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                controlAffinity:
                                                    ListTileControlAffinity
                                                        .trailing,
                                                onChanged: (int? value) {
                                                  setState(() {
                                                    loadType = value!;
                                                  });
                                                  if (loadType == 0) {
                                                    sortBy.clear();
                                                    sortBy.add("ratePerMile");
                                                    log(sortBy.toString());
                                                  }
                                                },
                                              ),
                                              const SizedBox(height: 10),
                                              RadioListTile<int>(
                                                contentPadding: EdgeInsets.zero,
                                                value: 1,
                                                groupValue: loadType,
                                                activeColor: primaryColor,
                                                title: Row(
                                                  children: [
                                                    Image.asset(
                                                      "assets/icons/time_filled.webp",
                                                      height: 25,
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    const Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Age of post",
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: kBlack,
                                                            fontSize: 16,
                                                          ),
                                                        ),
                                                        Text(
                                                          "newest to oldest post",
                                                          style: TextStyle(
                                                            color: darkGrey,
                                                            fontSize: 14,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                controlAffinity:
                                                    ListTileControlAffinity
                                                        .trailing,
                                                onChanged: (int? value) {
                                                  setState(() {
                                                    loadType = value!;
                                                  });
                                                  if (loadType == 1) {
                                                    sortBy.clear();
                                                    sortBy.add("ageOfLoadPost");
                                                    log(sortBy.toString());
                                                  }
                                                },
                                              ),
                                              const SizedBox(height: 10),
                                              RadioListTile<int>(
                                                contentPadding: EdgeInsets.zero,
                                                value: 2,
                                                groupValue: loadType,
                                                activeColor: primaryColor,
                                                title: Row(
                                                  children: [
                                                    Image.asset(
                                                      "assets/icons/price.webp",
                                                      height: 25,
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    const Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Price",
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: kBlack,
                                                            fontSize: 16,
                                                          ),
                                                        ),
                                                        Text(
                                                          "Sort by highest price",
                                                          style: TextStyle(
                                                            color: darkGrey,
                                                            fontSize: 14,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                controlAffinity:
                                                    ListTileControlAffinity
                                                        .trailing,
                                                onChanged: (int? value) {
                                                  setState(() {
                                                    loadType = value!;
                                                  });
                                                  if (loadType == 2) {
                                                    sortBy.clear();
                                                    sortBy.add("amount");
                                                    log(sortBy.toString());
                                                  }
                                                },
                                              ),
                                              const SizedBox(height: 10),
                                              RadioListTile<int>(
                                                contentPadding: EdgeInsets.zero,
                                                value: 3,
                                                groupValue: loadType,
                                                activeColor: primaryColor,
                                                title: Row(
                                                  children: [
                                                    Image.asset(
                                                      "assets/icons/mileDH.webp",
                                                      height: 25,
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    const Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Deadhead",
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: kBlack,
                                                            fontSize: 16,
                                                          ),
                                                        ),
                                                        Text(
                                                          "shortest distance (mi) to pickup ",
                                                          style: TextStyle(
                                                            color: darkGrey,
                                                            fontSize: 14,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                controlAffinity:
                                                    ListTileControlAffinity
                                                        .trailing,
                                                onChanged: (int? value) {
                                                  setState(() {
                                                    loadType = value!;
                                                  });
                                                },
                                              ),
                                              const SizedBox(height: 10),
                                              RadioListTile<int>(
                                                contentPadding: EdgeInsets.zero,
                                                value: 4,
                                                groupValue: loadType,
                                                activeColor: primaryColor,
                                                title: Row(
                                                  children: [
                                                    Image.asset(
                                                      "assets/icons/distance_up.webp",
                                                      height: 25,
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    const Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Distance ( low to high )",
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: kBlack,
                                                            fontSize: 16,
                                                          ),
                                                        ),
                                                        Text(
                                                          "Miles between pickup & delivery",
                                                          style: TextStyle(
                                                            color: darkGrey,
                                                            fontSize: 14,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                controlAffinity:
                                                    ListTileControlAffinity
                                                        .trailing,
                                                onChanged: (int? value) {
                                                  setState(() {
                                                    loadType = value!;
                                                  });
                                                  if (loadType == 4) {
                                                    sortBy.clear();
                                                    sortBy.add("loadDistance");
                                                    log(sortBy.toString());
                                                  }
                                                },
                                              ),
                                              const SizedBox(height: 10),
                                              RadioListTile<int>(
                                                contentPadding: EdgeInsets.zero,
                                                value: 5,
                                                groupValue: loadType,
                                                activeColor: primaryColor,
                                                title: Row(
                                                  children: [
                                                    Image.asset(
                                                      "assets/icons/distance_down.webp",
                                                      height: 25,
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    const Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Distance ( high to low )",
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: kBlack,
                                                            fontSize: 16,
                                                          ),
                                                        ),
                                                        Text(
                                                          "Miles between pickup & delivery",
                                                          style: TextStyle(
                                                            color: darkGrey,
                                                            fontSize: 14,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                controlAffinity:
                                                    ListTileControlAffinity
                                                        .trailing,
                                                onChanged: (int? value) {
                                                  setState(() {
                                                    loadType = value!;
                                                  });
                                                  if (loadType == 5) {
                                                    sortBy.clear();
                                                    sortBy.add("loadDistance");
                                                    log(sortBy.toString());
                                                  }
                                                },
                                              ),
                                              const SizedBox(height: 10),
                                              RadioListTile<int>(
                                                contentPadding: EdgeInsets.zero,
                                                value: 6,
                                                groupValue: loadType,
                                                activeColor: primaryColor,
                                                title: Row(
                                                  children: [
                                                    Image.asset(
                                                      "assets/icons/length.webp",
                                                      height: 25,
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    const Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Length ( high to low )",
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: kBlack,
                                                            fontSize: 16,
                                                          ),
                                                        ),
                                                        Text(
                                                          "the length of the load",
                                                          style: TextStyle(
                                                            color: darkGrey,
                                                            fontSize: 14,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                controlAffinity:
                                                    ListTileControlAffinity
                                                        .trailing,
                                                onChanged: (int? value) {
                                                  setState(() {
                                                    loadType = value!;
                                                  });
                        
                                                  if (loadType == 6) {
                                                    sortBy.clear();
                                                    sortBy.add("loadLength");
                                                    log(sortBy.toString());
                                                  }
                                                },
                                              ),
                                              const SizedBox(height: 10),
                                              RadioListTile<int>(
                                                contentPadding: EdgeInsets.zero,
                                                value: 7,
                                                groupValue: loadType,
                                                activeColor: primaryColor,
                                                title: Row(
                                                  children: [
                                                    Image.asset(
                                                      "assets/icons/weight_kg.webp",
                                                      height: 25,
                                                    ),
                                                    const SizedBox(
                                                      width: 10,
                                                    ),
                                                    const Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          "Weight ( high to low )",
                                                          style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: kBlack,
                                                            fontSize: 16,
                                                          ),
                                                        ),
                                                        Text(
                                                          "Weight of the load",
                                                          style: TextStyle(
                                                            color: darkGrey,
                                                            fontSize: 14,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                controlAffinity:
                                                    ListTileControlAffinity
                                                        .trailing,
                                                onChanged: (int? value) {
                                                  setState(() {
                                                    loadType = value!;
                                                  });
                                                  if (loadType == 7) {
                                                    sortBy.clear();
                                                    sortBy.add("quantity");
                                                    log(sortBy.toString());
                                                  }
                                                },
                                              ),
                                              const SizedBox(height: 10),
                                              CustomLoadingButton(
                                                loading: saved,
                                                text: "Save",
                                                onTap: () async {
                                                  saved = true;
                                                  setState(() {});
                                                  _viewModel.isDefault = false;
                                                  await _viewModel .getCarrierFilter(
                                                    SharedPreferenceService .getString( SharedPreferenceService.AUTH_TOKEN,) ?? "",
                                                    FiltersRequest(
                                                      minLoadDistance: _viewModel.minLoadDistance,
                                                      maxLoadDistance: _viewModel .maxLoadDistance,
                                                      minLoadLength: _viewModel.minLoadLength,
                                                      maxLoadLength: _viewModel.maxLoadLength,
                                                      pickupLocation: _viewModel.pickupLocation,
                                                      dropLocation: _viewModel.dropLocation,
                                                      pickupRadius: _viewModel.pickupRadius,
                                                      dropRadius: _viewModel.dropRadius,
                                                      minWeight: _viewModel.minWeight,
                                                      maxWeight: _viewModel.maxWeight,
                                                      minPrice: _viewModel.minPrice,
                                                      maxPrice: _viewModel.maxPrice,
                                                      minRate: _viewModel.minRate,
                                                      maxRate: _viewModel.maxRate,
                                                      date: DateFormat('yyyy-MM-dd', ).format( _viewModel.selectedDate, ),
                                                      pickupLocationName: _viewModel .pickupLocationName,
                                                      dropLocationName: _viewModel .dropLocationName,
                                                      // date: "2023-11-07",
                                                      trailerTypes: _viewModel .trailerSelected,
                                                      loadRequirement: _viewModel .loadRequirementsSelected,
                                                      loadType: _viewModel.loadType == 0 ? "Full Load"
                                                       : _viewModel.loadType ==  1 ? "Partial Load" : null,
                                                      companyNames: _viewModel.companiesSelected,
                                                      sortBy: sortBy,
                                                      sortOrder: loadType == 4 ? "asc" : "",
                                                    ),
                                                  );
                                                  saved = false;
                                                  setState(() {});
                                                  context.pop();
                                                },
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Image.asset(
                              "assets/icons/filter.webp",
                              height: 25,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),





                  if (isLoading)
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.2,
                        ),
                        child: Lottie.asset(
                          "assets/images/loading.json",
                          height: 100,
                        ),
                      ),
                    )
                  else if (_viewModel.filtersResponse?.data.length == 0)
                    Center(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.2,
                        ),
                        child: const Text(
                          "No Recent Loads",
                          style: TextStyle(
                            color: grey3,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    )
                  else
                  SizedBox(height: 10.h,),
                  ListView.builder(
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: _viewModel.filtersResponse?.data.length ?? 0,
                      itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          context.pushNamed(
                            AppRoute.loadDetailView.name,
                            extra: _viewModel.filtersResponse?.data[index],
                          );
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) {
                          //   return MapWidget();
                          // }));
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
                                    backgroundColor: primaryLightColor,
                                    radius: 25,
                                    backgroundImage: _viewModel
                                                .filtersResponse
                                                ?.data[index]
                                                .createdBy
                                                ?.first
                                                .profilePicUrl !=
                                            ""
                                        ? NetworkImage(_viewModel
                                                .filtersResponse
                                                ?.data[index]
                                                .createdBy
                                                ?.first
                                                .profilePicUrl ??
                                            "")
                                        : const NetworkImage(
                                            "https://shipload-assets.s3.us-east-2.amazonaws.com/1706705145392-truck.png"),
                                    // _viewModel.filtersResponse?.data[index]?.createdBy?.first?.profilePicUrl !=""?NetworkImage(_viewModel.filtersResponse?.data[index].createdBy?.first.profilePicUrl):AssetImage("assets/icons/truck.png"),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        _viewModel.filtersResponse?.data[index]
                                                .companyName ??
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
                                            "assets/icons/time_outlined.webp",
                                            height: 15,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "${formatTimeDifference(_viewModel.filtersResponse?.data[index].createdAt?.toLocal() ?? DateTime.now())} | ${_viewModel.filtersResponse?.data[index].loadId ?? ""}",
                                            style: const TextStyle(
                                              color: darkGrey,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
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
                                        _viewModel.filtersResponse?.data[index]
                                                .id ??
                                            "",
                                      );
                                    },
                                    child: Image.asset(
                                      _viewModel.filtersResponse?.data[index]
                                                  .isSaved ??
                                              false
                                          ? "assets/icons/saved_violet.webp"
                                          : "assets/icons/save_outlined.webp",
                                      height: 25,
                                    ),
                                  ),
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
                                                        .filtersResponse
                                                        ?.data[index]
                                                        .pickupLocation
                                                        ?.pickupLocationName ??
                                                    "",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: kBlack,
                                                  fontSize: 12.sp,
                                                ),
                                                textAlign: TextAlign.start,
                                                maxLines: 3,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          DateFormat('MMMM d').format(
                                            _viewModel.filtersResponse
                                                    ?.data[index].pickupDate ??
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
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
                                                        .filtersResponse
                                                        ?.data[index]
                                                        .dropLocation
                                                        ?.dropLocationName ??
                                                    "",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: kBlack,
                                                  fontSize: 12.sp,
                                                ),
                                                // textAlign: TextAlign.right,
                                                maxLines: 3,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          DateFormat('MMMM d').format(
                                            _viewModel.filtersResponse
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
                                        "${_viewModel.filtersResponse?.data[index].quantity?.toStringAsFixed(0) ?? ""} lbs",
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
                                        (_viewModel.filtersResponse?.data[index]
                                                    .trailerType?.isEmpty ==
                                                true)
                                            ? ""
                                            : _viewModel
                                                    .filtersResponse
                                                    ?.data[index]
                                                    .trailerType
                                                    ?.first ??
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
                                        "${_viewModel.filtersResponse?.data[index].loadDistance?.toStringAsFixed(0) ?? ""} mi",
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
                                    "${_viewModel.filtersResponse?.data[index].deadHead?.toStringAsFixed(0) ?? "NA"} mi DH",
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
                                    "\$${_viewModel.filtersResponse?.data[index].amount ?? ""}",
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
                                     "\$${(_viewModel.filtersResponse?.data[index].ratePerMile)?.toStringAsFixed(2) ?? ""}/mi",
                                   // "\$${((_viewModel.filtersResponse?.data[index].amount ?? 0) / (_viewModel.filtersResponse?.data[index].loadDistance ?? 1)).toStringAsFixed(2)}/mi",
                                    style: const TextStyle(
                                      color: grey1,
                                      fontSize: 14,
                                    ),
                                  ),
                                  const Spacer(),
                                  InkWell(
                                    onTap: () async {
                                      Uri phoneno = Uri.parse(
                                        'tel:${_viewModel.filtersResponse?.data[index].phoneNumber ?? ""}',
                                      );

                                      if (await launchUrl(phoneno)) {
                                        //dialer opened
                                      } else {
                                        //dailer is not opened
                                      }
                                    },
                                    child: Container(
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
                                    ),
                                  ),
                                ],
                              ),
                            ],
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
