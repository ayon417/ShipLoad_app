// ignore_for_file: require_trailing_commas, prefer_const_constructors, avoid_dynamic_calls

import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:shipload_app/core/constants.dart';
import 'package:shipload_app/data/remote/shipper/models/edit_load_model.dart';
import 'package:shipload_app/data/remote/shipper/models/is_covered.dart'
    as isCovered;
import 'package:shipload_app/helpers/base_screen_view.dart';
import 'package:shipload_app/routes/app_routes.dart';
import 'package:shipload_app/services/shared_preference_service.dart';
import 'package:shipload_app/utils/colors.dart';
import 'package:shipload_app/view/components/customButton.dart';
import 'package:shipload_app/view/screens/shipper/shipper_view_model.dart';
// import 'package:shipload_app/data/remote/shipper/models/shipper_get_all_loads.dart'
//     as load;

class EditLoadView extends ConsumerStatefulWidget {
  final dynamic data;
  final bool isRepost;
  const EditLoadView({super.key, required this.data, required this.isRepost});

  @override
  ConsumerState<EditLoadView> createState() => _EditLoadViewState();
}

class _EditLoadViewState extends ConsumerState<EditLoadView>
    with BaseScreenView {
  int step = 0;
  int stop = 0;
  int loadType = 0;
  List<double> pickupLocationCoordinates = [];
  List<double> dropLocationCoordinates = [];
  final formkey = GlobalKey<FormState>();
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

  List<bool> trailerValues = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
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

  List<bool> loadRequirementsValues = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  final pickupLocationController = TextEditingController();
  final dropLocationController = TextEditingController();
  final packageTypeController = TextEditingController();
  // final companyNameController = TextEditingController();
  // final corporateEmailController = TextEditingController();
  final loadLengthController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final quantityController = TextEditingController();
  final amountController = TextEditingController();
  // final ratePerMileController = TextEditingController();

  DateTime? pickupDate;
  DateTime? dropDate;
  bool isLoading = false;

  Future<void> _selectDate(
      BuildContext context, DateTime? selectedDate, bool isPickup) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        if (isPickup) {
          pickupDate = picked;
        } else
          dropDate = picked;
      });
    }
  }

  List<String> trailerSelected = [];

  List<String> loadRequirementsSelected = [];
  List<ActiveShipmentStop> activeShipmentStops = [];
  List<StopsData> stopsData = [];

  Widget stepView() {
    switch (step) {
      case 0:
        return loadDetails(trailerSelected);
      case 1:
        return stopWidget();
      // case 2:
      //   return const Document();
      // case 3:
      //   return const Payment();
      default:
        return Container();
    }
  }

  late ShipperViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(shipperViewModel)..attachView(this);
    _viewModel.clearLoadRequirements();
    stop = widget.data.activeShipmentStops!.length;
    pickupLocationController.text =
        widget.data.pickupLocation?.pickupLocationName ?? "";
    dropLocationController.text =
        widget.data.dropLocation?.dropLocationName ?? "";
    packageTypeController.text = widget.data.packageType ?? "";
    // companyNameController.text = widget.data.companyName ?? "";
    // corporateEmailController.text = widget.data.corporateEmail ?? "";
    loadLengthController.text = widget.data.loadLength.toString();
    phoneNumberController.text = widget.data.phoneNumber ?? "";
    quantityController.text = widget.data.quantity.toString();
    amountController.text = widget.data.amount.toString();
    // ratePerMileController.text = widget.data.ratePerMile.toString();
    pickupDate =
        widget.isRepost ? null : widget.data.pickupDate ?? DateTime.now();
    dropDate = widget.isRepost ? null : widget.data.dropDate ?? DateTime.now();
    loadRequirementsSelected.addAll(widget.data.loadRequirement ?? []);
    trailerSelected.addAll(widget.data.trailerType ?? []);
    loadType = widget.data.loadType == "Full Load" ? 0 : 1;
    stop = widget.data.activeShipmentStops!.length;
    pickupLocationCoordinates =
        widget.data.pickupLocation?.coordinates ?? [0.0, 0.0];
    dropLocationCoordinates =
        widget.data.dropLocation?.coordinates ?? [0.0, 0.0];
    for (int i = 0; i < widget.data.activeShipmentStops!.length; i++) {
      stopsData.add(StopsData(
          pickupLocation: TextEditingController(
              text: widget.data.activeShipmentStops![i].pickupLocation
                  .pickupLocationName),
          coordinates:
              widget.data.activeShipmentStops![i].pickupLocation.coordinates,
          notes: TextEditingController(
              text: widget.data.activeShipmentStops![i].notes)));
    }
    for (String requirement in loadRequirementsSelected) {
      int index = loadRequirements.indexOf(requirement);
      if (index != -1) {
        loadRequirementsValues[index] = true;
      }
    }

    for (String trailer in trailerSelected) {
      int index = trailerTypes.indexOf(trailer);
      if (index != -1) {
        trailerValues[index] = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(shipperViewModel);
    return WillPopScope(
      onWillPop: () async {
        if (step == 0) {
          return true;
        } else {
          step--;

          setState(() {});
        }
        return false;
      },
      child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 85,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                color: kWhite,
              ),
              onPressed: () {
                if (step == 0) {
                  context.pop();
                } else {
                  step--;
                  setState(() {});
                }
              },
            ),
            backgroundColor: primaryDarkColor,
            automaticallyImplyLeading: false,
            title: Text(
              widget.isRepost ? "Repost Load" : "Edit Load",
              style: TextStyle(
                color: kWhite,
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            centerTitle: true,
          ),
          backgroundColor: primaryLightColor,
          bottomSheet: Container(
            height: 80,
            width: double.infinity,
            color: kWhite,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomLoadingButton(
                  loading: isLoading,
                  onTap: () async {
                    if (step < 1) {
                      if (formkey.currentState!.validate()) {
                        step++;
                        setState(() {});
                      }
                    } else {
                      //submit api
                      for (int i = 0; i < stopsData.length; i++) {
                        activeShipmentStops.add(ActiveShipmentStop(
                          pickupLocation: PickupLocation(
                              type: "Point",
                              coordinates: stopsData[i].coordinates,
                              pickupLocationName:
                                  stopsData[i].pickupLocation.text),
                          notes: stopsData[i].notes.text,
                        ));
                      }
                      isLoading = true;
                      setState(() {});

                      await _viewModel.editLoad(
                          SharedPreferenceService.getString(
                                  SharedPreferenceService.AUTH_TOKEN) ??
                              "",
                          EditLoadRequest(
                            pickupLocation: PickupLocation(
                                type: "Point",
                                coordinates: pickupLocationCoordinates,
                                pickupLocationName:
                                    pickupLocationController.text),
                            dropLocation: DropLocation(
                                type: "Point",
                                coordinates: dropLocationCoordinates,
                                dropLocationName: dropLocationController.text),
                            packageType: packageTypeController.text,
                            quantity: double.parse(quantityController.text),
                            amount: double.parse(amountController.text),
                            companyName: widget.data.companyName ?? "",
                            corporateEmail: widget.data.corporateEmail ?? "",
                            phoneNumber: phoneNumberController.text,
                            loadLength: double.parse(loadLengthController.text),
                            loadType:
                                loadType == 0 ? "Full Load" : "Partial Load",
                            loadRequirement: loadRequirementsSelected,
                            isCovered:
                                widget.isRepost ? false : widget.data.isCovered,
                            isSaved: widget.data.isSaved,
                            isPaid: widget.data.isPaid,
                            createdBy: widget.data.createdBy,
                            id: widget.data.id,
                            ratePerMile: 0.0,
                            pickupDate:
                                DateFormat('yyyy-MM-dd').format(pickupDate!),
                            dropDate:
                                DateFormat('yyyy-MM-dd').format(dropDate!),
                            trailerType: trailerSelected,
                            activeShipmentStops: activeShipmentStops,
                            loadDocumentUrl: widget.data.loadDocumentUrl,
                            loadDistance: widget.data.loadDistance,
                            loadId: widget.data.loadId,
                            createdAt: widget.data.createdAt,
                            updatedAt: widget.data.updatedAt,
                          ),
                          widget.data.id ?? "",
                          widget.isRepost ? true : false);
                      if (widget.isRepost) {
                        _viewModel.isCovered(
                            isCovered.IsCoveredRequest(isCovered: false),
                            widget.data.id,
                            SharedPreferenceService.getString(
                                    SharedPreferenceService.AUTH_TOKEN) ??
                                "",
                            context);
                      }
                      isLoading = false;

                      context.pop();
                    }
                  },
                  text: step == 0 ? "Next" : "Submit"),
            ),
          ),
          body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              // EasyStepper(
              //   activeStep: step,
              //   lineLength: 65,
              //   lineSpace: 0,
              //   lineType: LineType.normal,
              //   defaultLineColor: const Color(0xffC7A7E2),
              //   finishedLineColor: primaryColor,
              //   activeStepTextColor: Colors.black87,
              //   finishedStepTextColor: Colors.black87,
              //   internalPadding: 10,
              //   showLoadingAnimation: false,
              //   stepRadius: 12,
              //   showStepBorder: false,
              //   lineDotRadius: 1.5,
              //   steps: [
              //     EasyStep(
              //       customStep: CircleAvatar(
              //         radius: 12,
              //         backgroundColor:
              //             step >= 0 ? primaryColor : const Color(0xffC7A7E2),
              //         child: const Text("1", style: TextStyle(color: kWhite)),
              //       ),
              //       title: 'Load Details',
              //     ),
              //     EasyStep(
              //       customStep: CircleAvatar(
              //         radius: 12,
              //         backgroundColor:
              //             step >= 1 ? primaryColor : const Color(0xffC7A7E2),
              //         child: const Text("2", style: TextStyle(color: kWhite)),
              //       ),
              //       title: 'Stops',
              //     ),
              //     EasyStep(
              //       customStep: CircleAvatar(
              //         radius: 12,
              //         backgroundColor:
              //             step >= 2 ? primaryColor : const Color(0xffC7A7E2),
              //         child: const Text("3", style: TextStyle(color: kWhite)),
              //       ),
              //       title: 'Document',
              //     ),
              //     EasyStep(
              //       customStep: CircleAvatar(
              //         radius: 12,
              //         backgroundColor:
              //             step >= 3 ? primaryColor : const Color(0xffC7A7E2),
              //         child: const Text("4", style: TextStyle(color: kWhite)),
              //       ),
              //       title: 'Payment',
              //     ),
              //   ],
              //   onStepReached: (index) => setState(() => step = index),
              // ),

              stepView(),
            ]),
          )),
    );
  }

  Widget loadDetails(List<String> selectedVals) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Load Details",
                  style: TextStyle(
                    color: kBlack,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  )),
              const SizedBox(
                height: 15,
              ),
              const Text("Pickup Location",
                  style: TextStyle(
                      color: grey1, fontSize: 16, fontWeight: FontWeight.w500)),
              TypeAheadField(
                textFieldConfiguration: TextFieldConfiguration(
                  controller: pickupLocationController,
                  decoration: InputDecoration(
                    hintText: "Enter your pickup location",
                    helperStyle: const TextStyle(color: grey2),
                    border: const OutlineInputBorder(),
                  ),
                ),
                suggestionsCallback: (pattern) async {
                  final String apiUrl =
                      "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$pattern&key=${AppConstants.apiKey}&types=(cities)&components=country:us";

                  final response = await Dio().get(apiUrl);

                  log(
                    response.data.toString(),
                  );

                  if (response.statusCode == 200) {
                    final data = response.data;
                    if (data['status'] == 'OK') {
                      final predictions = data['predictions'];
                      final List<Map<String, dynamic>> suggestions = [];
                      for (var prediction in predictions) {
                        final description = prediction['description'];
                        final placeId = prediction['place_id'];

                        final suggestion = {
                          'description':
                              description.toString().split(", USA")[0],
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
                  pickupLocationController.text = suggestion['description'];

                  final String placeId = selectedSuggestion['place_id'];

                  // Make an API call to get the details of the selected place using the place ID

                  final String detailsApiUrl =
                      "https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=${AppConstants.apiKey}&components=country:us";
                  // Perform an HTTP request to retrieve the place details
                  final detailsResponse = await Dio().get(detailsApiUrl);

                  if (detailsResponse.statusCode == 200) {
                    final detailsData = detailsResponse.data;
                    if (detailsData['status'] == 'OK') {
                      final result = detailsData['result'];
                      final double latitude =
                          result['geometry']['location']['lat'];
                      final double longitude =
                          result['geometry']['location']['lng'];

                      // Use the latitude and longitude values as needed
                      print('Latitude: $latitude, Longitude: $longitude');
                      pickupLocationCoordinates = [longitude, latitude];
                      setState(() {});
                    }
                  }
                },
              ),

              // TextField(
              //     controller: pickupLocationController,
              //     decoration: InputDecoration(
              //       fillColor: kWhite,
              //       hintText: "Enter your pickup location",
              //     )),
              const SizedBox(
                height: 15,
              ),
              const Text("Drop Location",
                  style: TextStyle(
                      color: grey1, fontSize: 16, fontWeight: FontWeight.w500)),
              // TextField(
              //     controller: dropLocationController,
              //     decoration: InputDecoration(
              //       fillColor: kWhite,
              //       hintText: "Enter your drop location",
              //     )),
              TypeAheadField(
                textFieldConfiguration: TextFieldConfiguration(
                  controller: dropLocationController,
                  // style: DefaultTextStyle.of(context).style.copyWith(
                  //       fontSize: 14,
                  //       color: kBlack,
                  //     ),
                  decoration: InputDecoration(
                    hintText: "Enter your drop location",
                    helperStyle: const TextStyle(color: grey2),
                    border: const OutlineInputBorder(),
                  ),
                ),
                suggestionsCallback: (pattern) async {
                  final String apiUrl =
                      "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$pattern&key=${AppConstants.apiKey}&types=(cities)&components=country:us";

                  final response = await Dio().get(apiUrl);

                  log(
                    response.data.toString(),
                  );

                  if (response.statusCode == 200) {
                    final data = response.data;
                    if (data['status'] == 'OK') {
                      final predictions = data['predictions'];
                      final List<Map<String, dynamic>> suggestions = [];
                      for (var prediction in predictions) {
                        final description = prediction['description'];
                        final placeId = prediction['place_id'];

                        final suggestion = {
                          'description':
                              description.toString().split(", USA")[0],
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
                  dropLocationController.text = suggestion['description'];

                  final String placeId = selectedSuggestion['place_id'];

                  // Make an API call to get the details of the selected place using the place ID

                  final String detailsApiUrl =
                      "https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=${AppConstants.apiKey}&components=country:us";
                  // Perform an HTTP request to retrieve the place details
                  final detailsResponse = await Dio().get(detailsApiUrl);

                  if (detailsResponse.statusCode == 200) {
                    final detailsData = detailsResponse.data;
                    if (detailsData['status'] == 'OK') {
                      final result = detailsData['result'];
                      final double latitude =
                          result['geometry']['location']['lat'];
                      final double longitude =
                          result['geometry']['location']['lng'];

                      // Use the latitude and longitude values as needed
                      print('Latitude: $latitude, Longitude: $longitude');
                      dropLocationCoordinates = [longitude, latitude];
                      setState(() {});
                    }
                  }
                },
              ),
              const SizedBox(
                height: 15,
              ),
              const Text("Commodity",
                  style: TextStyle(
                      color: grey1, fontSize: 16, fontWeight: FontWeight.w500)),
              TextField(
                  controller: packageTypeController,
                  decoration: InputDecoration(
                    fillColor: kWhite,
                    hintText: "Type of Commodity ex: Woods",
                  )),
              const SizedBox(
                height: 15,
              ),
              // const Text("Company Name",
              //     style: TextStyle(
              //         color: grey1, fontSize: 16, fontWeight: FontWeight.w500)),
              // TextField(
              //     readOnly: true,
              //     controller: companyNameController,
              //     decoration: InputDecoration(
              //       fillColor: kWhite,
              //       hintText: "Name of your shipping company",
              //     )),
              // const SizedBox(
              //   height: 15,
              // ),
              // const Text("Corporate Email",
              //     style: TextStyle(
              //         color: grey1, fontSize: 16, fontWeight: FontWeight.w500)),
              // TextField(
              //     controller: corporateEmailController,
              //     readOnly: true,
              //     keyboardType: TextInputType.emailAddress,
              //     decoration: InputDecoration(
              //       fillColor: kWhite,
              //       hintText: "Enter Corporate Email",
              //     )),
              // const SizedBox(
              //   height: 15,
              // ),
              const Text("Phone Number",
                  style: TextStyle(
                      color: grey1, fontSize: 16, fontWeight: FontWeight.w500)),
              TextField(
                  controller: phoneNumberController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    fillColor: kWhite,
                    hintText: "Enter Your Phone Number",
                  )),
              const SizedBox(
                height: 15,
              ),
              const Text("Quantity",
                  style: TextStyle(
                      color: grey1, fontSize: 16, fontWeight: FontWeight.w500)),
              TextField(
                  keyboardType: TextInputType.number,
                  controller: quantityController,
                  decoration: InputDecoration(
                      fillColor: kWhite,
                      hintText: "Weight",
                      suffixIcon: Container(
                        height: 30,
                        width: 50,
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                            child:
                                Text("lbs", style: TextStyle(color: kWhite))),
                      ))),
              const SizedBox(
                height: 15,
              ),
              const Text("Length",
                  style: TextStyle(
                      color: grey1, fontSize: 16, fontWeight: FontWeight.w500)),
              TextField(
                  keyboardType: TextInputType.number,
                  controller: loadLengthController,
                  maxLength: 2,
                  decoration: InputDecoration(
                      fillColor: kWhite,
                      hintText: "Length of Load in feet",
                      counter: SizedBox.shrink())),
              const SizedBox(
                height: 15,
              ),
              Text("Amount*",
                  style: TextStyle(
                      color: grey1, fontSize: 16, fontWeight: FontWeight.w500)),
              TextField(
                  keyboardType: TextInputType.number,
                  controller: amountController,
                  decoration: InputDecoration(
                    fillColor: kWhite,
                    hintText: "\$",
                  )),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        const Text("Pickup Date",
                            style: TextStyle(
                                color: grey1,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                        TextFormField(
                            validator: (value) {
                              if (pickupDate == null) {
                                return 'Please select Pickup date';
                              } else {
                                return null;
                              }
                            },
                            readOnly: true,
                            decoration: InputDecoration(
                              fillColor: kWhite,
                              hintText: pickupDate == null
                                  ? "DD/MM/YYYY"
                                  : DateFormat('yyyy-MM-dd')
                                      .format(pickupDate!),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  _selectDate(context, pickupDate, true);
                                  setState(() {});
                                },
                                icon: Image.asset(
                                  "assets/icons/calendar.webp",
                                  height: 20,
                                ),
                              ),
                            )),
                      ])),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        const Text("Drop Date",
                            style: TextStyle(
                                color: grey1,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                        TextFormField(
                            validator: (value) {
                              if (dropDate == null) {
                                return 'Please select Drop date';
                              } else {
                                return null;
                              }
                            },
                            readOnly: true,
                            decoration: InputDecoration(
                              fillColor: kWhite,
                              hintText: dropDate == null
                                  ? "DD/MM/YYYY"
                                  : DateFormat('yyyy-MM-dd').format(dropDate!),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  _selectDate(context, dropDate, false);
                                  setState(() {});
                                },
                                icon: Image.asset(
                                  "assets/icons/calendar.webp",
                                  height: 20,
                                ),
                              ),
                            )),
                      ]))
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
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
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20)),
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
                                                      'Load Requirements',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          color: kBlack,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    ),
                                                    IconButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      icon: Image.asset(
                                                        "assets/icons/close_circle.webp",
                                                        height: 30,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                const SizedBox(height: 10),
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
                                                              color: kBlack,
                                                              fontSize: 16,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w700)),
                                                      Theme(
                                                        data: ThemeData(
                                                            useMaterial3:
                                                                false),
                                                        child: Switch(
                                                            activeColor: kWhite,
                                                            thumbColor:
                                                                MaterialStatePropertyAll(
                                                                    kWhite),
                                                            activeTrackColor:
                                                                primaryColor,
                                                            inactiveTrackColor:
                                                                grey3,
                                                            value:
                                                                loadRequirementsValues[
                                                                    index],
                                                            onChanged: (_) {
                                                              setState(() {
                                                                loadRequirementsValues[
                                                                        index] =
                                                                    !loadRequirementsValues[
                                                                        index];
                                                              });
                                                              if (loadRequirementsValues[
                                                                  index]) {
                                                                loadRequirementsSelected.add(
                                                                    loadRequirements[
                                                                        index]);

                                                                log(loadRequirementsSelected
                                                                    .toString());
                                                              } else if (loadRequirementsValues[
                                                                          index] ==
                                                                      false &&
                                                                  loadRequirementsSelected
                                                                      .contains(
                                                                          loadRequirements[
                                                                              index])) {
                                                                loadRequirementsSelected.remove(
                                                                    loadRequirements[
                                                                        index]);

                                                                log(loadRequirementsSelected
                                                                    .toString());
                                                              }
                                                            }),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                // const SizedBox(
                                                //   height: 20,
                                                // ),
                                                // CustomButton(
                                                //     text: "Save",
                                                //     onTap: () {
                                                //       setState(() {});
                                                //       Navigator.pop(context);
                                                //     })
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
                          spacing: 8.0, // Horizontal spacing between children
                          runSpacing:
                              10.0, // Vertical spacing between lines of children
                          children: [
                            ...List.generate(loadRequirementsSelected.length,
                                (index) {
                              return Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 7, horizontal: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: primaryLightColor),
                                child: FittedBox(
                                  child: Text(
                                    loadRequirementsSelected[index],
                                    style: TextStyle(color: kBlack),
                                  ),
                                ),
                              );
                            }),
                          ]),
                    ],
                  )),
              const Text("Trailer Types",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: kBlack,
                      fontSize: 20)),
              // const SizedBox(
              //   height: 10,
              // ),
              SizedBox(
                height: 30,
                child: RadioListTile<int>(
                    contentPadding: EdgeInsets.zero,
                    value: 0,
                    groupValue: loadType,
                    activeColor: primaryColor,
                    title: const Text(
                      'Full Load',
                      style: TextStyle(
                          color: kBlack,
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                    controlAffinity: ListTileControlAffinity.trailing,
                    onChanged: (int? value) {
                      setState(() {
                        loadType = value!;
                      });
                    }),
              ),
              RadioListTile<int>(
                contentPadding: EdgeInsets.zero,
                value: 1,
                groupValue: loadType,
                activeColor: primaryColor,
                title: const Text(
                  'Partial Load',
                  style: TextStyle(
                      color: kBlack, fontSize: 16, fontWeight: FontWeight.w700),
                ),
                controlAffinity: ListTileControlAffinity.trailing,
                onChanged: (int? value) {
                  setState(() {
                    loadType = value!;
                  });
                },
              ),
              // SizedBox(
              //   height: 15,
              // ),
              Wrap(
                  spacing: MediaQuery.of(context).size.width *
                      0.03, // Horizontal spacing between children
                  runSpacing:
                      10.0, // Vertical spacing between lines of children
                  children: [
                    ...List.generate(
                        trailerTypes.length,
                        (index) => Container(
                              width: MediaQuery.of(context).size.width * 0.42,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xffEFDEFF)),
                              child: Row(
                                children: [
                                  Checkbox(
                                      activeColor: primaryColor,
                                      value: trailerValues[index],
                                      onChanged: (val) {
                                        setState(() {
                                          trailerValues[index] =
                                              !trailerValues[index];
                                        });
                                        if (trailerValues[index]) {
                                          trailerSelected
                                              .add(trailerTypes[index]);
                                          log(trailerSelected.toString());
                                        } else if (trailerValues[index] ==
                                                false &&
                                            trailerSelected.contains(
                                                trailerTypes[index])) {
                                          trailerSelected
                                              .remove(trailerTypes[index]);
                                          log(trailerSelected.toString());
                                        }
                                        setState(() {});
                                      }),
                                  Expanded(
                                    child: Text(
                                      trailerTypes[index],
                                      style: const TextStyle(
                                          color: kBlack, fontSize: 14),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                  ]),
              const SizedBox(
                height: 90,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget stopWidget() {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: stop,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Stop ${index + 1}",
                  style: TextStyle(
                    color: kBlack,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  )),
              const SizedBox(
                height: 15,
              ),
              const Text("Pickup Location",
                  style: TextStyle(
                      color: grey1, fontSize: 16, fontWeight: FontWeight.w500)),
              TypeAheadField(
                textFieldConfiguration: TextFieldConfiguration(
                  controller: stopsData[index].pickupLocation,
                  decoration: InputDecoration(
                    hintText: "Enter your pickup location",
                    helperStyle: const TextStyle(color: grey2),
                    border: const OutlineInputBorder(),
                  ),
                ),
                suggestionsCallback: (pattern) async {
                  final String apiUrl =
                      "https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$pattern&key=${AppConstants.apiKey}&types=(cities)&components=country:us";

                  final response = await Dio().get(apiUrl);

                  log(
                    response.data.toString(),
                  );

                  if (response.statusCode == 200) {
                    final data = response.data;
                    if (data['status'] == 'OK') {
                      final predictions = data['predictions'];
                      final List<Map<String, dynamic>> suggestions = [];
                      for (var prediction in predictions) {
                        final description = prediction['description'];
                        final placeId = prediction['place_id'];

                        final suggestion = {
                          'description':
                              description.toString().split(", USA")[0],
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
                  stopsData[index].pickupLocation.text =
                      suggestion['description'];

                  final String placeId = selectedSuggestion['place_id'];

                  // Make an API call to get the details of the selected place using the place ID

                  final String detailsApiUrl =
                      "https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=${AppConstants.apiKey}&components=country:us";
                  // Perform an HTTP request to retrieve the place details
                  final detailsResponse = await Dio().get(detailsApiUrl);

                  if (detailsResponse.statusCode == 200) {
                    final detailsData = detailsResponse.data;
                    if (detailsData['status'] == 'OK') {
                      final result = detailsData['result'];
                      final double latitude =
                          result['geometry']['location']['lat'];
                      final double longitude =
                          result['geometry']['location']['lng'];

                      // Use the latitude and longitude values as needed
                      print('Latitude: $latitude, Longitude: $longitude');
                      stopsData[index].coordinates = [longitude, latitude];
                      // pickupLocationCoordinates = [longitude, latitude];
                      setState(() {});
                    }
                  }
                },
              ),
              const SizedBox(
                height: 15,
              ),
              const Text("Notes",
                  style: TextStyle(
                      color: grey1, fontSize: 16, fontWeight: FontWeight.w500)),
              TextField(
                  maxLines: 6,
                  controller: stopsData[index].notes,
                  decoration: InputDecoration(
                    fillColor: kWhite,
                    hintText: "Your notes",
                  )),
              const SizedBox(
                height: 15,
              ),
              Align(
                  child: InkWell(
                onTap: () {
                  stop++;

                  setState(() {});
                  stopsData.add(StopsData(
                    pickupLocation: TextEditingController(),
                    notes: TextEditingController(),
                  ));

                  log(stopsData.toString());
                },
                child: Visibility(
                  visible: index == stop - 1,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: primaryColor),
                    child: const Text(
                      "Add Another Stop",
                      style: TextStyle(color: kWhite),
                    ),
                  ),
                ),
              )),
              SizedBox(
                height: index == stop - 1 ? 90 : 0,
              )
            ],
          ),
        );
      },
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

class StopsData {
  final TextEditingController pickupLocation;
  List<double> coordinates;
  final TextEditingController notes;

  StopsData({
    required this.pickupLocation,
    required this.notes,
    this.coordinates = const [],
  });
}
