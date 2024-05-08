// ignore_for_file: prefer_const_constructors, require_trailing_commas, avoid_dynamic_calls
import 'dart:async';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:geocoding/geocoding.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:shipload_app/core/constants.dart';
import 'package:shipload_app/data/remote/carrier/models/carrier_loads_filter.dart';
import 'package:shipload_app/data/remote/carrier/models/delete_save_search.dart';
import 'package:shipload_app/helpers/base_screen_view.dart';
import 'package:shipload_app/routes/app_routes.dart';
import 'package:shipload_app/services/shared_preference_service.dart';
import 'package:shipload_app/utils/colors.dart';
import 'package:shipload_app/utils/logger.dart';
import 'package:shipload_app/view/components/customButton.dart';
import 'package:shipload_app/view/screens/carrier/carrier_view_model.dart';

class SearchFilterView extends ConsumerStatefulWidget {
  const SearchFilterView({super.key});

  @override
  ConsumerState<SearchFilterView> createState() => _SearchFilterViewState();
}

class _SearchFilterViewState extends ConsumerState<SearchFilterView>
    with BaseScreenView {
  late CarrierViewModel _viewModel;
  bool isLoading = false;

  bool isLastPage = false;
  // final UserDetailService _userDetailService = getIt<UserDetailService>();
  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(carrierViewModel)..attachView(this);
    sourceLocationController.text = _viewModel.pickupLocationName;
    destinationLocationController.text = _viewModel.dropLocationName;
    getData();
  }

  Future<void> getData() async {
    isLoading = true;
    setState(() {});

    await _viewModel.getRecentFilters(
      SharedPreferenceService.getString(SharedPreferenceService.AUTH_TOKEN) ??
          "",
    );

    isLoading = false;
    setState(() {});
  }

  Future<String> _getAddressFromCoordinates(double? lat, double? long) async {
    try {
      List<Placemark> placemarks =
          await placemarkFromCoordinates(lat ?? 0, long ?? 0);
      Placemark place = placemarks[0];
      print(
          "${place.street}, ${place.locality}, ${place.administrativeArea}, ${place.country}");
      return "${place.street}, ${place.locality}, ${place.administrativeArea}, ${place.country}";
    } catch (e) {
      print(e);
      return "";
    }
  }

  final sourceLocationController = TextEditingController();
  final destinationLocationController = TextEditingController();

  final Completer<GoogleMapController> _googleMapController = Completer();

  Future _gotoSpecificPosition(LatLng position) async {
    final GoogleMapController mapController = await _googleMapController.future;
    mapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(target: position, zoom: 17.5),
      ),
    );
    //every time that we dragged pin , it will list down the address here
    await _getAddress(position);
  }

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

  // final Debouncer _debouncer = Debouncer();

  List<String> trailerTypes = [
    "Dry Van (V)",
    "Reefer (R)",
    "Flatbed (F)",
    "Power Only (PO)",
    "Container (C)",
    "Box Truck (SB)",
    "Cargo Van (CV)",
    "Gooseneck (RGN)"
  ];

  List<String> loadRequirements = [
    "Hazmat",
    "Drop Trailer",
    "Tanker",
    "Team",
    "TWIC Card",
    "Driver Assist",
    "Liquor Permit",
    "Liftgate",
    "E-Tracks",
    "Tarps",
    "Blind Shipment",
    "Floor Loaded",
    "Worth +\$100,000",
    "Insulated Bulkhead",
    "Overweight Permit",
    "Oversize Permit",
    "Pilot Cars"
  ];

  int tabIndex = 0;
  bool applyFilter = false;

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(carrierViewModel);
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        bottomSheet: tabIndex == 0
            ? Container(
                height: 80,
                width: double.infinity,
                color: kWhite,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CustomLoadingButton(
                    loading: applyFilter,
                    onTap: () async {
                      applyFilter = true;
                      _viewModel.isDefault = false;
                      setState(() {});
                      await _viewModel.getCarrierFilter(
                          SharedPreferenceService.getString(
                                  SharedPreferenceService.AUTH_TOKEN) ??
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
                              pickupRadius: _viewModel.pickupRadius,
                              dropRadius: _viewModel.dropRadius,
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
                              companyNames: _viewModel.companiesSelected));
                      applyFilter = false;
                      setState(() {});
                      context.pop();
                    },
                    text: "Apply",
                  ),
                ),
              )
            : null,
        appBar: AppBar(
          toolbarHeight: 85,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: kWhite,
            ),
            onPressed: () {
              context.pop();
            },
          ),
          backgroundColor: primaryDarkColor,
          automaticallyImplyLeading: false,
          title: const Text(
            "Search filters",
            style: TextStyle(
              color: kWhite,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          actions: [
            if (tabIndex == 0)
              IconButton(
                  onPressed: () {
                    _viewModel.resetFilters();
                    sourceLocationController.clear();
                    destinationLocationController.clear();
                    // setState(() {});
                  },
                  icon: const Icon(
                    Icons.refresh_outlined,
                    color: kWhite,
                  ))
            else
              SizedBox.shrink(),
            if (tabIndex == 0)
              IconButton(
                  onPressed: () async {
                    isSaving = true;
                    setState(() {});
                    await _viewModel.saveFilterFromSearch(
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
                          date: DateFormat('yyyy-MM-dd')
                              .format(_viewModel.selectedDate),
                          // date: "2023-11-07",
                          trailerTypes: _viewModel.trailerSelected,
                          loadRequirement: _viewModel.loadRequirementsSelected,
                          loadType: _viewModel.loadType == 0
                              ? "Full Load"
                              : _viewModel.loadType == 1
                                  ? "Partial Load"
                                  : null,
                          companyNames: _viewModel.companiesSelected,
                        ));
                    isSaving = false;
                    setState(() {});
                  },
                  icon: isSaving
                      ? SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            color: kWhite,
                          ),
                        )
                      : Image.asset(
                          "assets/icons/save_outlined.webp",
                          color: kWhite,
                          height: 20,
                        ))
            else
              SizedBox.shrink()
          ],
          bottom: TabBar(
            indicatorColor: kWhite,
            labelColor: kWhite,
            unselectedLabelColor: textFormFieldColor,
            indicatorSize: TabBarIndicatorSize.tab,
            onTap: (value) async {
              if (value == 2) {
                getData();
              } else if (value == 1) {
                isLoading = true;
                setState(() {});

                await _viewModel.getSavedFilters(
                  SharedPreferenceService.getString(
                          SharedPreferenceService.AUTH_TOKEN) ??
                      "",
                );

                isLoading = false;
                setState(() {});
              }
              tabIndex = value;
              setState(() {});
            },
            tabs: const [
              Tab(
                text: "New",
              ),
              Tab(text: "Saved"),
              Tab(text: "Recent"),
            ],
          ),
        ),
        backgroundColor: primaryLightColor,
        body: TabBarView(
          children: [
            // Tab 1: Save Post content
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(bottom: 15),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/icons/location_green.webp",
                                height: 25,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: TypeAheadField(
                                  textFieldConfiguration:
                                      TextFieldConfiguration(
                                          controller: sourceLocationController,
                                          onChanged: (value) {
                                            _viewModel.pickupLocation = [];
                                            _viewModel.pickupLocationName = "";
                                          },
                                          decoration: InputDecoration(
                                            fillColor: kWhite,
                                            suffixIcon: Padding(
                                              padding:
                                                  const EdgeInsets.all(15.0),
                                              child: Image.asset(
                                                "assets/icons/search.webp",
                                                height: 10,
                                              ),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                                borderSide:
                                                    BorderSide(color: grey3)),
                                            enabledBorder: UnderlineInputBorder(
                                                borderSide:
                                                    BorderSide(color: grey3)),
                                            border: UnderlineInputBorder(
                                                borderSide:
                                                    BorderSide(color: grey3)),
                                            hintText: "Enter Source location",
                                            helperStyle:
                                                TextStyle(color: grey2),
                                          )),
                                  suggestionsCallback: (pattern) async {
                                    final String apiUrl =
                                        "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$pattern&key=${AppConstants.apiKey}&types=(cities)&components=country:us";

                                    final response = await Dio().get(apiUrl);

                                    Logger.write(
                                      response.data.toString(),
                                    );

                                    if (response.statusCode == 200) {
                                      final data = response.data;
                                      if (data['status'] == 'OK') {
                                        final predictions = data['predictions'];
                                        final List<Map<String, dynamic>>
                                            suggestions = [];
                                        for (var prediction in predictions) {
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
                                      title: Text(suggestion['description']),
                                    );
                                  },
                                  onSuggestionSelected: (suggestion) async {
                                    final selectedSuggestion = suggestion;
                                    final String placeId =
                                        selectedSuggestion['place_id'];

                                    // Make an API call to get the details of the selected place using the place ID

                                    final String detailsApiUrl =
                                        "https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=${AppConstants.apiKey}&components=country:us";
                                    // Perform an HTTP request to retrieve the place details
                                    final detailsResponse =
                                        await Dio().get(detailsApiUrl);

                                    if (detailsResponse.statusCode == 200) {
                                      final detailsData = detailsResponse.data;
                                      if (detailsData['status'] == 'OK') {
                                        final result = detailsData['result'];
                                        final double latitude =
                                            result['geometry']['location']
                                                ['lat'];
                                        final double longitude =
                                            result['geometry']['location']
                                                ['lng'];

                                        // Use the latitude and longitude values as needed
                                        print(
                                            'Latitude: $latitude, Longitude: $longitude');
                                        _viewModel.pickupLocation = [
                                          longitude,
                                          latitude
                                        ];
                                        _gotoSpecificPosition(
                                            LatLng(latitude, longitude));

                                        _viewModel.pickupLocationName =
                                            suggestion['description'];
                                        sourceLocationController.text =
                                            suggestion['description'];
                                        setState(() {});
                                      }
                                    }
                                  },
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Radius",
                                  style: TextStyle(color: kBlack),
                                ),
                                Text(
                                  "${_viewModel.pickupRadius?.toStringAsFixed(0)} mi",
                                  style: TextStyle(color: kBlack),
                                )
                              ]),
                          Slider(
                            activeColor: primaryColor,
                            thumbColor: primaryLightColor,
                            inactiveColor: grey3,
                            value: _viewModel.pickupRadius ?? 450,
                            max: 450,
                            onChanged: (double value) {
                              setState(() {
                                _viewModel.pickupRadius = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(bottom: 15),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/icons/location_red.webp",
                                height: 25,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: TypeAheadField(
                                  textFieldConfiguration:
                                      TextFieldConfiguration(
                                          controller:
                                              destinationLocationController,
                                          onChanged: (value) {
                                            _viewModel.dropLocation = [];
                                            _viewModel.dropLocationName = "";
                                          },
                                          decoration: InputDecoration(
                                            fillColor: kWhite,
                                            suffixIcon: Padding(
                                              padding:
                                                  const EdgeInsets.all(15.0),
                                              child: Image.asset(
                                                "assets/icons/search.webp",
                                                height: 10,
                                              ),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                                borderSide:
                                                    BorderSide(color: grey3)),
                                            enabledBorder: UnderlineInputBorder(
                                                borderSide:
                                                    BorderSide(color: grey3)),
                                            border: UnderlineInputBorder(
                                                borderSide:
                                                    BorderSide(color: grey3)),
                                            hintText:
                                                "Enter Destination location",
                                            helperStyle:
                                                TextStyle(color: grey2),
                                          )),
                                  suggestionsCallback: (pattern) async {
                                    final String apiUrl =
                                        "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$pattern&key=${AppConstants.apiKey}&types=(cities)&components=country:us";

                                    final response = await Dio().get(apiUrl);

                                    Logger.write(
                                      response.data.toString(),
                                    );

                                    if (response.statusCode == 200) {
                                      final data = response.data;
                                      if (data['status'] == 'OK') {
                                        final predictions = data['predictions'];
                                        final List<Map<String, dynamic>>
                                            suggestions = [];
                                        for (var prediction in predictions) {
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
                                      title: Text(suggestion['description']),
                                      // subtitle: Text(
                                      //     '\$${suggestion['price']}'),
                                    );
                                  },
                                  onSuggestionSelected: (suggestion) async {
                                    final selectedSuggestion = suggestion;
                                    final String placeId =
                                        selectedSuggestion['place_id'];

                                    // Make an API call to get the details of the selected place using the place ID

                                    final String detailsApiUrl =
                                        "https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=${AppConstants.apiKey}&components=country:us";
                                    // Perform an HTTP request to retrieve the place details
                                    final detailsResponse =
                                        await Dio().get(detailsApiUrl);

                                    if (detailsResponse.statusCode == 200) {
                                      final detailsData = detailsResponse.data;
                                      if (detailsData['status'] == 'OK') {
                                        final result = detailsData['result'];
                                        final double latitude =
                                            result['geometry']['location']
                                                ['lat'];
                                        final double longitude =
                                            result['geometry']['location']
                                                ['lng'];

                                        // Use the latitude and longitude values as needed
                                        print(
                                            'Latitude: $latitude, Longitude: $longitude');
                                        _viewModel.dropLocation = [
                                          longitude,
                                          latitude
                                        ];
                                        _gotoSpecificPosition(
                                            LatLng(latitude, longitude));
                                        _viewModel.dropLocationName =
                                            suggestion['description'];
                                        destinationLocationController.text =
                                            suggestion['description'];
                                        setState(() {});
                                      }
                                    }
                                  },
                                ),

                                // TextField(
                                //     controller: destinationLocationController,
                                //     // onChanged: (value) {
                                //     //   _debouncer.debounce(
                                //     //       const Duration(milliseconds: 1000),
                                //     //       () async {
                                //     //     await _viewModel.getCarrierFilter(
                                //     //         SharedPreferenceService.getString(
                                //     //                 SharedPreferenceService
                                //     //                     .AUTH_TOKEN) ??
                                //     //             "",
                                //     //         FiltersRequest(
                                //     //             location:
                                //     //                 sourceLocationController
                                //     //                     .text,
                                //     //             dropLocation:
                                //     //                 destinationLocationController
                                //     //                     .text,
                                //     //             minWeight: _viewModel.minWeight,
                                //     //             maxWeight: _viewModel.maxWeight,
                                //     //             minPrice: _viewModel.minPrice,
                                //     //             maxPrice: _viewModel.maxPrice,
                                //     //             date: DateFormat('yyyy-MM-dd')
                                //     //                 .format(_viewModel
                                //     //                     .selectedDate),
                                //     //             minRate: _viewModel.minRate,
                                //     //             maxRate: _viewModel.maxRate,
                                //     //             trailerTypes:
                                //     //                 _viewModel.trailerSelected,
                                //     //             companyNames: _viewModel
                                //     //                 .companiesSelected));
                                //     //   });
                                //     // },
                                //     decoration: InputDecoration(
                                //       hintText: "Enter Destination location",
                                //       helperStyle:
                                //           const TextStyle(color: grey2),
                                //       fillColor: kWhite,
                                //       suffixIcon: Padding(
                                //         padding: const EdgeInsets.all(15.0),
                                //         child: Image.asset(
                                //           "assets/icons/search.webp",
                                //           height: 10,
                                //         ),
                                //       ),
                                //       //underline border
                                //       focusedBorder: const UnderlineInputBorder(
                                //           borderSide: BorderSide(color: grey3)),
                                //       enabledBorder: const UnderlineInputBorder(
                                //           borderSide: BorderSide(color: grey3)),
                                //       border: const UnderlineInputBorder(
                                //           borderSide: BorderSide(color: grey3)),
                                //     )),
                              )
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Radius",
                                  style: TextStyle(color: kBlack),
                                ),
                                Text(
                                  "${_viewModel.dropRadius.toStringAsFixed(0)} mi",
                                  style: TextStyle(color: kBlack),
                                )
                              ]),
                          Slider(
                            activeColor: primaryColor,
                            thumbColor: primaryLightColor,
                            inactiveColor: grey3,
                            value: _viewModel.dropRadius,
                            max: 450,
                            onChanged: (double value) {
                              setState(() {
                                _viewModel.dropRadius = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(bottom: 15),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Trailer Types",
                              style: TextStyle(
                                  color: kBlack,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20)),
                          SizedBox(
                            height: 30,
                            child: RadioListTile<int>(
                                contentPadding: EdgeInsets.zero,
                                value: 0,
                                groupValue: _viewModel.loadType,
                                activeColor: primaryColor,
                                title: const Text(
                                  'Full Load',
                                  style: TextStyle(
                                      color: kBlack,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                onChanged: (int? value) {
                                  setState(() {
                                    _viewModel.loadType = value!;
                                  });
                                }),
                          ),
                          RadioListTile<int>(
                            contentPadding: EdgeInsets.zero,
                            value: 1,
                            groupValue: _viewModel.loadType,
                            activeColor: primaryColor,
                            title: const Text(
                              'Partial Load',
                              style: TextStyle(
                                  color: kBlack,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ),
                            controlAffinity: ListTileControlAffinity.trailing,
                            onChanged: (int? value) {
                              setState(() {
                                _viewModel.loadType = value!;
                              });
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Wrap(
                              spacing:
                                  10, // Horizontal spacing between children
                              runSpacing:
                                  10.0, // Vertical spacing between lines of children
                              children: [
                                ...List.generate(
                                    trailerTypes.length,
                                    (index) => Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.38,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 5),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: const Color(0xffEFDEFF)),
                                          child: Row(
                                            children: [
                                              Checkbox(
                                                  activeColor: primaryColor,
                                                  value: _viewModel
                                                      .trailerValues[index],
                                                  onChanged: (_) async {
                                                    setState(() {
                                                      _viewModel
                                                          .changeTrailerValue(
                                                              index);
                                                    });

                                                    if (_viewModel
                                                        .trailerValues[index]) {
                                                      _viewModel.addTrailer(
                                                          trailerTypes[index]);
                                                      log(_viewModel
                                                          .trailerSelected
                                                          .toString());
                                                    } else if (_viewModel
                                                                    .trailerValues[
                                                                index] ==
                                                            false &&
                                                        _viewModel
                                                            .trailerSelected
                                                            .contains(
                                                                trailerTypes[
                                                                    index])) {
                                                      _viewModel.removeTrailer(
                                                          trailerTypes[index]);
                                                      log(_viewModel
                                                          .trailerSelected
                                                          .toString());
                                                    }
                                                  }),
                                              Expanded(
                                                child: Text(
                                                  trailerTypes[index],
                                                  style: const TextStyle(
                                                      color: kBlack,
                                                      fontSize: 14),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )),
                              ]),
                        ],
                      ),
                    ),
                    Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(bottom: 15),
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(14)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text("Load Requirement",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: kBlack,
                                        fontSize: 20)),
                                const Spacer(),
                                TextButton.icon(
                                  label: Text("Edit",
                                      style: TextStyle(
                                          color: primaryColor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700)),
                                  icon: Image.asset(
                                    "assets/icons/edit.webp",
                                    height: 25,
                                  ),
                                  onPressed: () {
                                    showModalBottomSheet(
                                      context: context,
                                      isScrollControlled: true,
                                      builder: (BuildContext context) {
                                        return StatefulBuilder(
                                          builder: (context, setState) {
                                            return Container(
                                              padding: EdgeInsets.all(16),
                                              width: double.infinity,
                                              decoration: const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(20),
                                                    topRight:
                                                        Radius.circular(20)),
                                              ),
                                              child: Padding(
                                                padding: MediaQuery.of(context)
                                                    .viewInsets,
                                                child: SingleChildScrollView(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          const Text(
                                                            'Load Requirements',
                                                            style: TextStyle(
                                                                fontSize: 20,
                                                                color: kBlack,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700),
                                                          ),
                                                          IconButton(
                                                            onPressed: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            icon: Image.asset(
                                                              "assets/icons/close_circle.webp",
                                                              height: 30,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                          height: 10),
                                                      ...List.generate(
                                                        loadRequirements.length,
                                                        (index) => Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                                loadRequirements[
                                                                    index],
                                                                style: TextStyle(
                                                                    color:
                                                                        kBlack,
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w700)),
                                                            Theme(
                                                              data: ThemeData(
                                                                  useMaterial3:
                                                                      false),
                                                              child: Switch(
                                                                  activeColor:
                                                                      kWhite,
                                                                  thumbColor:
                                                                      MaterialStatePropertyAll(
                                                                          kWhite),
                                                                  activeTrackColor:
                                                                      primaryColor,
                                                                  inactiveTrackColor:
                                                                      grey3,
                                                                  value: _viewModel
                                                                          .loadRequirementsValues[
                                                                      index],
                                                                  onChanged:
                                                                      (_) {
                                                                    setState(
                                                                        () {
                                                                      _viewModel
                                                                          .changeLoadRequirementValue(
                                                                              index);
                                                                    });
                                                                    if (_viewModel
                                                                            .loadRequirementsValues[
                                                                        index]) {
                                                                      _viewModel
                                                                          .addLoadRequirement(
                                                                              loadRequirements[index]);

                                                                      log(_viewModel
                                                                          .loadRequirementsSelected
                                                                          .toString());
                                                                    } else if (_viewModel.loadRequirementsValues[index] ==
                                                                            false &&
                                                                        _viewModel
                                                                            .loadRequirementsSelected
                                                                            .contains(loadRequirements[index])) {
                                                                      _viewModel
                                                                          .removeLoadRequirement(
                                                                              loadRequirements[index]);

                                                                      log(_viewModel
                                                                          .loadRequirementsSelected
                                                                          .toString());
                                                                    }
                                                                  }),
                                                            )
                                                          ],
                                                        ),
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
                                )
                              ],
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
                                      _viewModel.loadRequirementsSelected
                                          .length, (index) {
                                    return Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 7, horizontal: 10),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          color: primaryLightColor),
                                      child: FittedBox(
                                        child: Text(
                                          _viewModel
                                              .loadRequirementsSelected[index],
                                          style: TextStyle(color: kBlack),
                                        ),
                                      ),
                                    );
                                  }),
                                ]),
                          ],
                        )),
                    // InkWell(
                    //   onTap: () async {
                    //     isLoading = true;
                    //     setState(() {});
                    //     await _viewModel.getCompanies(
                    //         SharedPreferenceService.getString(
                    //                 SharedPreferenceService.AUTH_TOKEN) ??
                    //             "");
                    //     isLoading = false;
                    //     setState(() {});
                    //     //open bottomsheet
                    //     // ignore: use_build_context_synchronously
                    //     showModalBottomSheet(
                    //       context: context,
                    //       isScrollControlled: true,
                    //       builder: (BuildContext context) {
                    //         return StatefulBuilder(
                    //           builder: (context, setState) {
                    //             return Container(
                    //               padding: const EdgeInsets.all(16),
                    //               width: double.infinity,
                    //               decoration: const BoxDecoration(
                    //                 color: Colors.white,
                    //                 borderRadius: BorderRadius.only(
                    //                     topLeft: Radius.circular(20),
                    //                     topRight: Radius.circular(20)),
                    //               ),
                    //               child: Padding(
                    //                 padding: MediaQuery.of(context).viewInsets,
                    //                 child: SingleChildScrollView(
                    //                   child: Column(
                    //                     mainAxisSize: MainAxisSize.min,
                    //                     crossAxisAlignment:
                    //                         CrossAxisAlignment.start,
                    //                     children: [
                    //                       Row(
                    //                         mainAxisAlignment:
                    //                             MainAxisAlignment.spaceBetween,
                    //                         children: [
                    //                           const Text(
                    //                             'Shippers',
                    //                             style: TextStyle(
                    //                                 fontSize: 20,
                    //                                 color: kBlack,
                    //                                 fontWeight:
                    //                                     FontWeight.w700),
                    //                           ),
                    //                           IconButton(
                    //                             onPressed: () {
                    //                               context.pop();
                    //                             },
                    //                             icon: Image.asset(
                    //                               "assets/icons/close_circle.webp",
                    //                               height: 30,
                    //                             ),
                    //                           )
                    //                         ],
                    //                       ),
                    //                       const SizedBox(height: 20),
                    //                       const TextField(
                    //                           decoration: InputDecoration(
                    //                               hintText: "Filter Shippers",
                    //                               helperStyle:
                    //                                   TextStyle(color: grey2))),
                    //                       const SizedBox(height: 20),
                    //                       ListView.builder(
                    //                         itemCount: _viewModel
                    //                                 .companiesListResponse
                    //                                 ?.data
                    //                                 .length ??
                    //                             0,
                    //                         physics:
                    //                             const NeverScrollableScrollPhysics(),
                    //                         shrinkWrap: true,
                    //                         itemBuilder: (context, index) {
                    //                           bool val = false;
                    //                           if (_viewModel.companiesSelected
                    //                               .contains(_viewModel
                    //                                   .companiesListResponse
                    //                                   ?.data[index]
                    //                                   .name)) {
                    //                             val = true;
                    //                           }
                    //                           return Column(
                    //                             children: [
                    //                               Row(children: [
                    //                                 CircleAvatar(
                    //                                   radius: 25,
                    //                                   backgroundImage:
                    //                                       NetworkImage(
                    //                                     "https://marketplace.canva.com/EAE0rNNM2Fg/1/0/1600w/canva-letter-c-trade-marketing-logo-design-template-r9VFYrbB35Y.jpg",
                    //                                   ),
                    //                                 ),
                    //                                 SizedBox(
                    //                                   width: 10,
                    //                                 ),
                    //                                 Expanded(
                    //                                   child: Column(
                    //                                       crossAxisAlignment:
                    //                                           CrossAxisAlignment
                    //                                               .start,
                    //                                       children: [
                    //                                         Text(
                    //                                           _viewModel
                    //                                                   .companiesListResponse
                    //                                                   ?.data[
                    //                                                       index]
                    //                                                   .name ??
                    //                                               "",
                    //                                           style: TextStyle(
                    //                                               color: kBlack,
                    //                                               fontSize: 16,
                    //                                               fontWeight:
                    //                                                   FontWeight
                    //                                                       .w700),
                    //                                         ),
                    //                                         Text(
                    //                                           "description",
                    //                                           style: TextStyle(
                    //                                               color: grey2,
                    //                                               fontSize: 14),
                    //                                         ),
                    //                                       ]),
                    //                                 ),
                    //                                 Spacer(),
                    //                                 Checkbox(
                    //                                     activeColor:
                    //                                         primaryColor,
                    //                                     value: val,
                    //                                     onChanged: (_) {
                    //                                       setState(() {
                    //                                         val = !val;
                    //                                       });
                    //                                       if (val) {
                    //                                         _viewModel
                    //                                             .addCompany(
                    //                                           _viewModel
                    //                                                   .companiesListResponse
                    //                                                   ?.data[
                    //                                                       index]
                    //                                                   .name ??
                    //                                               "",
                    //                                         );
                    //                                         log(_viewModel
                    //                                             .companiesSelected
                    //                                             .toString());
                    //                                       } else {
                    //                                         _viewModel
                    //                                             .removeCompany(
                    //                                           _viewModel
                    //                                                   .companiesListResponse
                    //                                                   ?.data[
                    //                                                       index]
                    //                                                   .name ??
                    //                                               "",
                    //                                         );
                    //                                         log(_viewModel
                    //                                             .companiesSelected
                    //                                             .toString());
                    //                                       }
                    //                                     })
                    //                               ]),
                    //                               Divider(color: grey2),
                    //                             ],
                    //                           );
                    //                         },
                    //                       ),
                    //                     ],
                    //                   ),
                    //                 ),
                    //               ),
                    //             );
                    //           },
                    //         );
                    //       },
                    //     );
                    //   },
                    //   child: Container(
                    //     width: double.infinity,
                    //     padding: EdgeInsets.all(12),
                    //     margin: EdgeInsets.only(bottom: 15),
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.circular(10),
                    //       color: kWhite,
                    //     ),
                    //     child: isLoading
                    //         ? Center(
                    //             child: Lottie.asset(
                    //               "assets/images/loading.json",
                    //               height: 50,
                    //             ),
                    //           )
                    //         : Row(
                    //             children: [
                    //               const Text("Shippers & Customers List",
                    //                   style: TextStyle(
                    //                     color: kBlack,
                    //                     fontSize: 20,
                    //                     fontWeight: FontWeight.w700,
                    //                   )),
                    //               Spacer(),
                    //               IconButton(
                    //                   onPressed: null,
                    //                   icon: Image.asset(
                    //                     "assets/icons/arrow_forward.webp",
                    //                     color: grey1,
                    //                     height: 20,
                    //                   ))
                    //             ],
                    //           ),
                    //   ),
                    // ),
                  
                  
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kWhite,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Costing",
                              style: TextStyle(
                                color: kBlack,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Price",
                                  style: TextStyle(color: kBlack),
                                ),
                                Text(
                                  "\$${_viewModel.minPrice.toStringAsFixed(0)}-\$${_viewModel.maxPrice.toStringAsFixed(0)}",
                                  style: TextStyle(color: kBlack),
                                )
                              ]),
                          RangeSlider(
                            values: RangeValues(
                                _viewModel.minPrice, _viewModel.maxPrice),
                            activeColor: primaryColor,
                            inactiveColor: grey3,
                            min: 20,
                            max: 18000,
                            onChanged: (RangeValues values) {
                              setState(() {
                                _viewModel.minPrice = values.start;
                                _viewModel.maxPrice = values.end;
                              });
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Rate per mile",
                                  style: TextStyle(color: kBlack),
                                ),
                                Text(
                                  "\$${_viewModel.minRate.toStringAsFixed(2)}-\$${_viewModel.maxRate.toStringAsFixed(2)}",
                                  style: TextStyle(color: kBlack),
                                )
                              ]),
                          RangeSlider(
                            values: RangeValues(
                                _viewModel.minRate, _viewModel.maxRate),
                            activeColor: primaryColor,
                            inactiveColor: grey3,
                            max: 500,
                            onChanged: (RangeValues values) {
                              setState(() {
                                _viewModel.minRate = values.start;
                                _viewModel.maxRate = values.end;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kWhite,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Filters",
                              style: TextStyle(
                                color: kBlack,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Trailer length",
                                  style: TextStyle(color: kBlack),
                                ),
                                Text(
                                  "${_viewModel.minLoadLength.toStringAsFixed(0)}ft - ${_viewModel.maxLoadLength.toStringAsFixed(0)}ft",
                                  style: TextStyle(color: kBlack),
                                )
                              ]),
                          RangeSlider(
                            values: RangeValues(_viewModel.minLoadLength,
                                _viewModel.maxLoadLength),
                            activeColor: primaryColor,
                            inactiveColor: grey3,
                            max: 100,
                            onChanged: (RangeValues values) {
                              setState(() {
                                _viewModel.minLoadLength = values.start;
                                _viewModel.maxLoadLength = values.end;
                              });
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Weight",
                                  style: TextStyle(color: kBlack),
                                ),
                                Text(
                                  "${_viewModel.minWeight.toStringAsFixed(0)}-${_viewModel.maxWeight.toStringAsFixed(0)} lbs",
                                  style: TextStyle(color: kBlack),
                                )
                              ]),
                          RangeSlider(
                            values: RangeValues(
                                _viewModel.minWeight, _viewModel.maxWeight),
                            activeColor: primaryColor,
                            inactiveColor: grey3,
                            max: 80000,
                            onChanged: (RangeValues values) async {
                              setState(() {
                                _viewModel.minWeight = values.start;
                                _viewModel.maxWeight = values.end;
                              });
                            },
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Distance",
                                  style: TextStyle(color: kBlack),
                                ),
                                Text(
                                  "${_viewModel.minLoadDistance.toStringAsFixed(0)}-${_viewModel.maxLoadDistance.toStringAsFixed(0)} mi+",
                                  style: TextStyle(color: kBlack),
                                )
                              ]),
                          RangeSlider(
                            values: RangeValues(_viewModel.minLoadDistance,
                                _viewModel.maxLoadDistance),
                            activeColor: primaryColor,
                            inactiveColor: grey3,
                            max: 4000,
                            onChanged: (RangeValues values) {
                              setState(() {
                                _viewModel.minLoadDistance = values.start;
                                _viewModel.maxLoadDistance = values.end;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 70),
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
              Center(
                child: Text("No Saved Filters",
                    style: TextStyle(color: grey1, fontSize: 16)),
              )
            else
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...List.generate(
                        _viewModel.savedFiltersListResponse?.data?.length ?? 0,
                        (index) => Container(
                            // height: 270,
                            width: double.infinity,
                            margin: EdgeInsets.only(bottom: 15),
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(14)),
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
                                    SizedBox(
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
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: kBlack,
                                                fontSize: 16),
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
                                                style: TextStyle(
                                                    color: grey2, fontSize: 14),
                                              ),
                                              SizedBox(
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
                                                style: TextStyle(
                                                    color: grey2, fontSize: 14),
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
                                const Text("Trailer Type",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: kBlack,
                                        fontSize: 16)),
                                SizedBox(
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
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 7,
                                                        horizontal: 10),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    color: primaryLightColor),
                                                child: FittedBox(
                                                  child: Text(
                                                    _viewModel
                                                            .savedFiltersListResponse
                                                            ?.data?[index]
                                                            .trailerTypes?[ind] ??
                                                        "",
                                                    style: TextStyle(
                                                        color: kBlack),
                                                  ),
                                                ),
                                              )),
                                    ]),
                              ],
                            )),
                      )
                    ],
                  ),
                ),
              ),
            // Tab 3: Save Search content

            if (isLoading)
              Center(
                child: Lottie.asset(
                  "assets/images/loading.json",
                  height: 100,
                ),
              )
            else if (_viewModel.recentFiltersResponse == null ||
                _viewModel.recentFiltersResponse?.data.length == 0)
              const Center(
                child: Text("No Recent Filters",
                    style: TextStyle(
                        fontSize: 16,
                        color: grey1,
                        fontWeight: FontWeight.bold)),
              ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...List.generate(
                      _viewModel.recentFiltersResponse?.data.length ?? 0,
                      (index) => Container(
                          // height: 270,
                          width: double.infinity,
                          margin: EdgeInsets.only(bottom: 15),
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14)),
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
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          _viewModel
                                                  .recentFiltersResponse
                                                  ?.data[index]
                                                  .pickupLocationName ??
                                              "Pickup Location",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: kBlack,
                                              fontSize: 16),
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
                                              "${_viewModel.recentFiltersResponse?.data[index].maxPrice?.toInt() ?? 0} mi",
                                              style: TextStyle(
                                                  color: grey2, fontSize: 14),
                                            ),
                                            SizedBox(
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
                                              "${_viewModel.recentFiltersResponse?.data[index].maxWeight?.toInt() ?? 0} lbs",
                                              style: TextStyle(
                                                  color: grey2, fontSize: 14),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Spacer(),
                                  InkWell(
                                    onTap: () async {
                                      await _viewModel.saveFilter(
                                        SharedPreferenceService.getString(
                                              SharedPreferenceService
                                                  .AUTH_TOKEN,
                                            ) ??
                                            "",
                                        _viewModel.recentFiltersResponse
                                                ?.data[index].id ??
                                            "",
                                      );
                                      await _viewModel.getRecentFilters(
                                          SharedPreferenceService.getString(
                                                SharedPreferenceService
                                                    .AUTH_TOKEN,
                                              ) ??
                                              "");
                                      setState(() {});
                                    },
                                    child: Image.asset(
                                      _viewModel.recentFiltersResponse
                                                  ?.data[index].isSaved ==
                                              true
                                          ? "assets/icons/saved_violet.webp"
                                          : "assets/icons/save_outlined.webp",
                                      height: 25,
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
                              const Text("Trailer Type",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: kBlack,
                                      fontSize: 16)),
                              SizedBox(
                                height: 10,
                              ),
                              Wrap(
                                  spacing:
                                      8.0, // Horizontal spacing between children
                                  runSpacing:
                                      10.0, // Vertical spacing between lines of children
                                  children: [
                                    if (_viewModel
                                            .recentFiltersResponse
                                            ?.data[index]
                                            .trailerTypes
                                            ?.isNotEmpty ??
                                        false)
                                      ...List.generate(
                                          _viewModel
                                                  .recentFiltersResponse
                                                  ?.data[index]
                                                  .trailerTypes
                                                  ?.length ??
                                              0,
                                          (inx) => Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 7,
                                                        horizontal: 10),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            25),
                                                    color: primaryLightColor),
                                                child: FittedBox(
                                                  child: Text(
                                                    _viewModel
                                                            .recentFiltersResponse
                                                            ?.data[index]
                                                            .trailerTypes?[inx] ??
                                                        "",
                                                    style: TextStyle(
                                                        color: kBlack),
                                                  ),
                                                ),
                                              )),
                                  ]),
                            ],
                          )),
                    ),
                    // NumberPaginator(
                    //   numberPages:
                    //       _viewModel.recentFiltersResponse!.data.totalPages,
                    //   onPageChange: (int index) async {
                    //     print("Page changed to: $index");
                    //     setState(() {
                    //       _currentPage = index;
                    //     });

                    //     await _viewModel.getRecentFilters(
                    //         SharedPreferenceService.getString(
                    //                 SharedPreferenceService.AUTH_TOKEN) ??
                    //             "",
                    //         RecentFiltersRequest(page: _currentPage + 1));
                    //   },
                    //   initialPage: _currentPage - 1,
                    //   config: NumberPaginatorUIConfig(
                    //     // default height is 48
                    //     // height: 64,
                    //     // buttonShape: BeveledRectangleBorder(
                    //     //   borderRadius: BorderRadius.circular(8),
                    //     // ),
                    //     buttonSelectedForegroundColor: kWhite,
                    //     buttonUnselectedForegroundColor: primaryColor,
                    //     buttonUnselectedBackgroundColor: primaryLightColor,
                    //     buttonSelectedBackgroundColor: primaryColor,
                    //   ),
                    // )
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
