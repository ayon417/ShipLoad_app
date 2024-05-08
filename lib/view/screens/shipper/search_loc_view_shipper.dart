// ignore_for_file: avoid_dynamic_calls

import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:shipload_app/core/constants.dart';
import 'package:shipload_app/data/remote/shipper/models/shipper_get_all_loads.dart';
import 'package:shipload_app/helpers/base_screen_view.dart';
import 'package:shipload_app/routes/app_routes.dart';
import 'package:shipload_app/services/shared_preference_service.dart';
import 'package:shipload_app/utils/colors.dart';
import 'package:shipload_app/view/components/customButton.dart';
import 'package:shipload_app/view/screens/shipper/shipper_view_model.dart';

import '../../../utils/logger.dart';

class SearchLocationViewShipper extends ConsumerStatefulWidget {
  const SearchLocationViewShipper({Key? key}) : super(key: key);

  @override
  ConsumerState<SearchLocationViewShipper> createState() =>
      _SearchLocationViewShipperState();
}

class _SearchLocationViewShipperState
    extends ConsumerState<SearchLocationViewShipper> with BaseScreenView {
  late ShipperViewModel _viewModel;
  //get map controller to access map
  Completer<GoogleMapController> _googleMapController = Completer();
  CameraPosition? _cameraPosition;
  late LatLng _defaultLatLng;
  late LatLng _draggedLatlng;
  String _draggedAddress = "";
  double lat = 0;
  double long = 0;
  bool isLoading = false;
  final locationController = TextEditingController();
  // @override
  // void initState() {
  //   _init();
  //   super.initState();
  // }

  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(shipperViewModel)..attachView(this);
    _init();
  }

  _init() {
    //set default latlng for camera position
    _defaultLatLng = const LatLng(11, 104);
    _draggedLatlng = _defaultLatLng;
    _cameraPosition = CameraPosition(
      target: _defaultLatLng, zoom: 17.5, // number of map view
    );

    //map will redirect to my current location when loaded
    _gotoUserCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(shipperViewModel);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryDarkColor,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: kWhite,
          ),
          onPressed: () {
            context.pop();
          },
        ),
        title: const Text(
          "Search Location",
          style: TextStyle(
            color: kWhite,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: _buildBody(),
      bottomSheet: _showDraggedAddress(),
      //get a float button to click and go to current location
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          _gotoUserCurrentPosition();
        },
        child: const Icon(Icons.location_on),
      ),
    );
  }

  Widget _buildBody() {
    return Stack(
      children: [
        _getMap(),
        _getCustomPin(),
        Positioned(
          top: 15,
          left: 15,
          right: 15,
          child: TypeAheadField(
            textFieldConfiguration: TextFieldConfiguration(
              // cursorRadius: Radius.zero,
              // autofocus: true,
              controller: locationController,
              onChanged: (value) {
                _viewModel.locationCoordinates = [];
                _viewModel.locationFilterName = "";
                _viewModel.applyLocation = false;
              },

              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/icons/search.webp",
                    color: primaryColor,
                    height: 15,
                  ),
                ),
                hintText: "Search for area...",
                helperStyle: const TextStyle(color: grey2),
                border: const OutlineInputBorder(),
              ),
            ),
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
              );
            },
            onSuggestionSelected: (suggestion) async {
              final selectedSuggestion = suggestion;
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
                  final double latitude = result['geometry']['location']['lat'];
                  final double longitude =
                      result['geometry']['location']['lng'];

                  // Use the latitude and longitude values as needed
                  print('Latitude: $latitude, Longitude: $longitude');
                  _viewModel.locationCoordinates = [longitude, latitude];
                  _gotoSpecificPosition(LatLng(latitude, longitude));

                  _viewModel.locationFilterName = suggestion['description'];
                  locationController.text = suggestion['description'];
                  setState(() {});
                }
              }
            },
          ),
        )
      ],
    );
  }

  Widget _showDraggedAddress() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/icons/location_green.webp",
                height: 20,
                color: primaryColor,
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  _draggedAddress,
                  style: const TextStyle(
                    color: kBlack,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          CustomLoadingButton(
            loading: isLoading,
            onTap: () async {
              _viewModel.applyLocation = true;
              _viewModel.getAllLoadsbyId(
                SharedPreferenceService.getString(
                      SharedPreferenceService.AUTH_TOKEN,
                    ) ??
                    "",
                ShipperLoadsRequest(
                  locationFilter: _viewModel.applyLocation,
                  pickupLocation: _viewModel.locationCoordinates,
                ),
              );
              isLoading = false;
              setState(() {});
              context.pop();
            },
            text: "Confirm Location",
          ),
        ],
      ),
    );
  }

  Widget _getMap() {
    return GoogleMap(
      initialCameraPosition:
          _cameraPosition!, //initialize camera position for map
      mapType: MapType.normal,
      onCameraIdle: () {
        //this function will trigger when user stop dragging on map
        //every time user drag and stop it will display address
        _getAddress(_draggedLatlng);
      },
      onCameraMove: (cameraPosition) {
        //this function will trigger when user keep dragging on map
        //every time user drag this will get value of latlng
        _draggedLatlng = cameraPosition.target;
      },
      onMapCreated: (GoogleMapController controller) {
        //this function will trigger when map is fully loaded
        if (!_googleMapController.isCompleted) {
          //set controller to google map when it is fully loaded
          _googleMapController.complete(controller);
        }
      },
    );
  }

  Widget _getCustomPin() {
    return Center(
      child: Image.asset("assets/icons/location.png", height: 50),
    );
  }

  //get address from dragged pin
  Future _getAddress(LatLng position) async {
    //this will list down all address around the position
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    lat = position.latitude;
    long = position.longitude;
    Placemark address = placemarks[0]; // get only first and closest address
    String addresStr = "${address.administrativeArea}, ${address.country}";
    _viewModel.locationCoordinates = [position.longitude, position.latitude];
    _viewModel.locationFilterName = addresStr;
    setState(() {
      _draggedAddress = addresStr;
    });
  }

  //get user's current location and set the map's camera to that location
  Future _gotoUserCurrentPosition() async {
    Position currentPosition = await _determineUserCurrentPosition();
    _gotoSpecificPosition(
      LatLng(currentPosition.latitude, currentPosition.longitude),
    );
    lat = currentPosition.latitude;
    long = currentPosition.longitude;
  }

  //go to specific position by latlng
  Future _gotoSpecificPosition(LatLng position) async {
    GoogleMapController mapController = await _googleMapController.future;
    mapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(target: position, zoom: 17.5),
      ),
    );
    //every time that we dragged pin , it will list down the address here
    await _getAddress(position);
  }

  Future _determineUserCurrentPosition() async {
    LocationPermission locationPermission;
    bool isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
    //check if user enable service for location permission
    if (!isLocationServiceEnabled) {
      print("user don't enable location permission");
    }

    locationPermission = await Geolocator.checkPermission();

    //check if user denied location and retry requesting for permission
    if (locationPermission == LocationPermission.denied) {
      locationPermission = await Geolocator.requestPermission();
      if (locationPermission == LocationPermission.denied) {
        print("user denied location permission");
      }
    }

    //check if user denied permission forever
    if (locationPermission == LocationPermission.deniedForever) {
      print("user denied permission forever");
    }

    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.best,
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
