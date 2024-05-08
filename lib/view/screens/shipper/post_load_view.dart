// ignore_for_file: require_trailing_commas, prefer_const_constructors, avoid_dynamic_calls

import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:shipload_app/core/constants.dart';
import 'package:shipload_app/data/remote/shipper/models/create_load.dart';
import 'package:shipload_app/helpers/base_screen_view.dart';
import 'package:shipload_app/routes/app_routes.dart';
import 'package:shipload_app/services/shared_preference_service.dart';
import 'package:shipload_app/utils/colors.dart';
import 'package:shipload_app/view/components/customButton.dart';
import 'package:shipload_app/view/screens/shipper/shipper_view_model.dart';

class PostLoadView extends ConsumerStatefulWidget {
  const PostLoadView({super.key});

  @override
  ConsumerState<PostLoadView> createState() => _PostLoadViewState();
}

class _PostLoadViewState extends ConsumerState<PostLoadView>
    with BaseScreenView {
  int step = 0;
  int stop = 1;
  int loadType = 0;
  bool uploading = false;
  String fileName = "No file selected";
  List<double> pickupLocationCoordinates = [];
  List<double> dropLocationCoordinates = [];
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
  final emailController = TextEditingController();
  final loadLengthController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final quantityController = TextEditingController();
  final amountController = TextEditingController();
  final ratePerMileController = TextEditingController();

  final formKey = GlobalKey<FormState>();

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
        formKey.currentState!.validate();
      });
    }
  }

  List<String> trailerSelected = [];
  List<ActiveShipmentStop> activeShipmentStops = [];
  List<StopsData> stopsData = [
    StopsData(
        pickupLocation: TextEditingController(),
        notes: TextEditingController(),
        coordinates: [])
  ];

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
    emailController.text = _viewModel.profileDetailsResponse?.data.email ?? "";
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
            title: const Text(
              "Post a Load",
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
                      //VALIDATE
                      if (formKey.currentState!.validate()) {
                        step++;
                        setState(() {});
                      }
                    } else {
                      //submit api
                      for (int i = 0; i < stopsData.length; i++) {
                        if (stopsData[i].pickupLocation.text.isNotEmpty) {
                          activeShipmentStops.add(ActiveShipmentStop(
                            pickupLocation: PickupLocation(
                                type: "Point",
                                coordinates: stopsData[i].coordinates,
                                pickupLocationName:
                                    stopsData[i].pickupLocation.text),
                            notes: stopsData[i].notes.text,
                          ));
                        }
                      }
                      isLoading = true;
                      setState(() {});
                      print("Calling api>>>>>>>>>>>>>>>>>>>>>>>>>>>");

                      await _viewModel.createLoad(
                          CreateLoadRequest(
                            pickupLocation: PickupLocation(
                                type: "Point",
                                coordinates: pickupLocationCoordinates,
                                pickupLocationName: pickupLocationController.text),
                                dropLocation: DropLocation(type: "Point",
                                coordinates: dropLocationCoordinates,
                                dropLocationName: dropLocationController.text),
                                packageType: packageTypeController.text,
                                quantity: double.parse(quantityController.text),
                                amount: double.parse(amountController.text),
                                companyName: _viewModel.profileDetailsResponse?.data.companyName ??"",
                                corporateEmail: emailController.text,
                                phoneNumber: phoneNumberController.text,
                                loadLength: double.parse(loadLengthController.text),
                                loadType: loadType == 0 ? "Full Load" : "Partial Load",
                                loadRequirement: _viewModel.loadRequirements,
                                ratePerMile: 0.0,
                                pickupDate: DateFormat('yyyy-MM-dd').format(pickupDate!),
                                dropDate: DateFormat('yyyy-MM-dd').format(dropDate!),
                                trailerType: trailerSelected,
                                activeShipmentStops: activeShipmentStops,
                                loadDocumentUrl: fileName != "No file selected" ? fileName : "",
                          ),
                          SharedPreferenceService.getString( SharedPreferenceService.AUTH_TOKEN) ??"");
                      isLoading = false;
                      // await _viewModel.getAllLoadsbyId(
                      //     SharedPreferenceService.getString(
                      //             SharedPreferenceService.AUTH_TOKEN) ??
                      //         "");
                      setState(() {});
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
                        'description': description.toString().split(", USA")[0],
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
                    "https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=${AppConstants.apiKey}&types=(cities)&components=country:us";
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
                        'description': description.toString().split(", USA")[0],
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
            //     controller: companyNameController,
            //     readOnly: true,
            //     decoration: InputDecoration(
            //       fillColor: kWhite,
            //       hintText: "Name of your shipping company",
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
            const Text("Email",
                style: TextStyle(
                    color: grey1, fontSize: 16, fontWeight: FontWeight.w500)),
            TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  fillColor: kWhite,
                  hintText: "Enter Email",
                )),
            const SizedBox(
              height: 15,
            ),
            const Text("Quantity",
                style: TextStyle(
                    color: grey1, fontSize: 16, fontWeight: FontWeight.w500)),
            TextField(
                controller: quantityController,
                keyboardType: TextInputType.number,
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
                          child: Text("lbs", style: TextStyle(color: kWhite))),
                    ))),
            const SizedBox(
              height: 15,
            ),
            const Text("Length",
                style: TextStyle(
                    color: grey1, fontSize: 16, fontWeight: FontWeight.w500)),
            TextField(
                controller: loadLengthController,
                maxLength: 2,
                keyboardType: TextInputType.number,
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
                controller: amountController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  fillColor: kWhite,
                  hintText: "\$",
                )),
            const SizedBox(
              height: 15,
            ),
            Form(
              key: formKey,
              child: Row(
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
                            readOnly: true,
                            validator: (value) {
                              if (pickupDate == null) {
                                return 'Please select Pickup date';
                              }
                              return null;
                            },
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
                            readOnly: true,
                            validator: (value) {
                              if (dropDate == null) {
                                return 'Please select Drop date';
                              }
                            },
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
            ),
            const SizedBox(
              height: 15,
            ),
            // Container(
            //   width: double.infinity,
            //   margin: EdgeInsets.only(bottom: 15),
            //   padding: EdgeInsets.all(16),
            //   decoration: BoxDecoration(
            //       color: Colors.white, borderRadius: BorderRadius.circular(14)),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Row(children: [
            //         const Text("Load Documents",
            //             style: TextStyle(
            //                 fontWeight: FontWeight.w700,
            //                 color: kBlack,
            //                 fontSize: 20)),
            //         const Spacer(),
            //         if (uploading)
            //           SizedBox(
            //               height: 20,
            //               width: 20,
            //               child: CircularProgressIndicator(
            //                 color: primaryColor,
            //                 strokeWidth: 2,
            //               ))
            //         else
            //           TextButton.icon(
            //               label: Text("Edit",
            //                   style: TextStyle(
            //                       color: primaryColor,
            //                       fontSize: 16,
            //                       fontWeight: FontWeight.w700)),
            //               icon: Image.asset(
            //                 "assets/icons/edit.webp",
            //                 height: 25,
            //               ),
            //               onPressed: () async {
            //                 FilePickerResult? result =
            //                     await FilePicker.platform.pickFiles();

            //                 if (result != null) {
            //                   File file = File(result.files.single.path!);
            //                   uploading = true;
            //                   setState(() {});
            //                   fileName = await uploadFile(file);
            //                   log(fileName);
            //                   uploading = false;
            //                   setState(() {});
            //                 } else {
            //                   // User canceled the picker
            //                 }
            //                 // log(fileName);
            //               })
            //       ]),
            //       // const SizedBox(
            //       //   height: 5,
            //       // ),
            //       if (uploading)
            //         SizedBox.shrink()
            //       else
            //         TextButton(
            //           onPressed: fileName != "No file selected"
            //               ? () {
            //                   if (fileName != "No file selected") {
            //                     launchUrl(Uri.parse(fileName));
            //                   }
            //                 }
            //               : null,
            //           child:
            //               Text(fileName, style: TextStyle(color: primaryColor)),
            //         )
            //     ],
            //   ),
            // ),
            // const SizedBox(
            //   height: 15,
            // ),
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
                                                        loadRequirements[index],
                                                        style: TextStyle(
                                                            color: kBlack,
                                                            fontSize: 16,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700)),
                                                    Theme(
                                                      data: ThemeData(
                                                          useMaterial3: false),
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
                                                              _viewModel.addLoadRequirement(
                                                                  loadRequirements[
                                                                      index]);

                                                              log(_viewModel
                                                                  .loadRequirementsSelected
                                                                  .toString());
                                                            } else if (loadRequirementsValues[
                                                                        index] ==
                                                                    false &&
                                                                _viewModel
                                                                    .loadRequirementsSelected
                                                                    .contains(
                                                                        loadRequirements[
                                                                            index])) {
                                                              _viewModel.removeLoadRequirement(
                                                                  loadRequirements[
                                                                      index]);

                                                              log(_viewModel
                                                                  .loadRequirementsSelected
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
                          ...List.generate(
                              _viewModel.loadRequirementsSelected.length,
                              (index) {
                            return Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 7, horizontal: 10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: primaryLightColor),
                              child: FittedBox(
                                child: Text(
                                  _viewModel.loadRequirementsSelected[index],
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
                    fontWeight: FontWeight.w700, color: kBlack, fontSize: 20)),
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
                runSpacing: 10.0, // Vertical spacing between lines of children
                children: [
                  ...List.generate(
                      trailerTypes.length,
                      (index) => Container(
                            width: MediaQuery.of(context).size.width * 0.42,
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xffEFDEFF)),
                            child: Row(
                              children: [
                                Checkbox(
                                    activeColor: primaryColor,
                                    value: trailerValues[index],
                                    onChanged: (_) {
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
                                          trailerSelected
                                              .contains(trailerTypes[index])) {
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
              // TextField(
              //     controller: stopsData[index].pickupLocation,
              //     decoration: InputDecoration(
              //       fillColor: kWhite,
              //       hintText: "Enter your pickup location",
              //     )),
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
                      coordinates: []));

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

class Document extends StatefulWidget {
  const Document({super.key});

  @override
  State<Document> createState() => _DocumentState();
}

class _DocumentState extends State<Document> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Upload Load Documents",
                style: TextStyle(
                  color: kBlack,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                )),
            const SizedBox(
              height: 10,
            ),
            const Text(
                "Horem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.",
                style: TextStyle(
                    color: grey1, fontSize: 16, fontWeight: FontWeight.w500)),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kWhite,
              ),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/icons/load_doc.webp",
                    height: 50,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Only DOC & PDF are accepted",
                      style: TextStyle(color: grey2)),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    color: grey3,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: primaryColor),
                    child: const Text(
                      "Browse Files",
                      style: TextStyle(color: kWhite, fontSize: 16),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Skip Document",
                    style: TextStyle(color: primaryColor),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Text("Upload Load Documents",
                    style: TextStyle(
                      color: kBlack,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    )),
                Spacer(),
                Text("\$5",
                    style: TextStyle(
                      color: kBlack,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text("Card Number",
                style: TextStyle(
                    color: grey1, fontSize: 16, fontWeight: FontWeight.w500)),
            TextField(
                decoration: InputDecoration(
              fillColor: kWhite,
              hintText: "Ex- 1245 1245 2356 8956",
              suffixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  "https://w7.pngwing.com/pngs/397/885/png-transparent-logo-mastercard-product-font-mastercard-text-orange-logo.png",
                  height: 15,
                ),
              ),
            )),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                      Text("Card Number",
                          style: TextStyle(
                              color: grey1,
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                      TextField(
                          decoration: InputDecoration(
                        fillColor: kWhite,
                        hintText: "Ex- 09/25",
                      )),
                    ])),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                      Text("CVV",
                          style: TextStyle(
                              color: grey1,
                              fontSize: 16,
                              fontWeight: FontWeight.w500)),
                      TextField(
                          decoration: InputDecoration(
                        fillColor: kWhite,
                        hintText: "Ex- 023",
                      )),
                    ]))
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Align(
                child: TextButton(
              onPressed: () {},
              child: const Text(
                "Skip Payment & Post Load",
                style: TextStyle(color: primaryColor),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class StopsData {
  final TextEditingController pickupLocation;
  List<double> coordinates;

  final TextEditingController notes;

  StopsData({
    required this.pickupLocation,
    required this.notes,
    required this.coordinates,
  });
}
