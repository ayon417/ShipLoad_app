// ignore_for_file: avoid_dynamic_calls

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tucking_draggable_scrollable_sheet/flutter_tucking_draggable_scrollable_sheet.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:shipload_app/core/constants.dart';
import 'package:shipload_app/helpers/base_screen_view.dart';
import 'package:shipload_app/routes/app_routes.dart';
import 'package:shipload_app/services/shared_preference_service.dart';
import 'package:shipload_app/utils/colors.dart';
import 'package:shipload_app/view/components/customButton.dart';
import 'package:shipload_app/view/screens/shipper/shipper_view_model.dart';
import 'package:url_launcher/url_launcher.dart';

class CarrierLoadDetailView extends ConsumerStatefulWidget {
  final data;
  const CarrierLoadDetailView({super.key, required this.data});

  @override
  ConsumerState<CarrierLoadDetailView> createState() =>
      _CarrierLoadDetailViewState();
}

class _CarrierLoadDetailViewState extends ConsumerState<CarrierLoadDetailView>
    with BaseScreenView {
  late ShipperViewModel _viewModel;
  PolylinePoints polylinePoints = PolylinePoints();
  late PolylineResult result;
  bool isLoading = false;
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

  late GoogleMapController mapController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _viewModel = ref.read(shipperViewModel)..attachView(this);
    _originLatitude = widget.data.pickupLocation.coordinates[1];
    _originLongitude = widget.data.pickupLocation.coordinates[0];
    _destLatitude = widget.data.dropLocation.coordinates[1];
    _destLongitude = widget.data.dropLocation.coordinates[0];

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Geolocator.requestPermission().then((value) {
        print("Pickup: $_originLatitude, $_originLongitude");
        print("Destination $_destLatitude, $_destLongitude");

        // origin marker
        _addMarker(
          LatLng(_originLatitude, _originLongitude),
          "origin",
          BitmapDescriptor.defaultMarker,
        );

        // / destination marker
        _addMarker(
          LatLng(_destLatitude, _destLongitude),
          "destination",
          BitmapDescriptor.defaultMarkerWithHue(90),
        );
        _getPolyline();
      });
    });
  }

  void _onMapCreated(GoogleMapController controller) async {
    mapController = controller;
  }

  _getPolyline() async {
    final PolylineResult result =
        await polylinePoints.getRouteBetweenCoordinates(
      AppConstants.apiKey,
      PointLatLng(_originLatitude, _originLongitude),
      PointLatLng(_destLatitude, _destLongitude),
      // wayPoints: [PolylineWayPoint(location: "Sabo, Yaba Lagos Nigeria")]
    );
    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    }
    _addPolyLine();
    setState(() {});
  }

  // double _originLatitude = 6.5212402;
  // double _originLongitude = 3.3679965;
  // double _destLatitude = 6.849660;
  // double _destLongitude = 3.648190;

  double _originLatitude = 22.5735;
  double _originLongitude = 88.4331;
  double _destLatitude = 22.7248;
  double _destLongitude = 88.4789;

  Map<MarkerId, Marker> markers = {};
  Map<PolylineId, Polyline> polylines = {};
  List<LatLng> polylineCoordinates = [];

  _addPolyLine() {
    const PolylineId id = PolylineId("poly");
    final Polyline polyline = Polyline(
      polylineId: id,
      color: primaryColor,
      points: polylineCoordinates,
      width: 5,
    );
    polylines[id] = polyline;
    setState(() {});
  }

  _addMarker(LatLng position, String id, BitmapDescriptor descriptor) {
    final MarkerId markerId = MarkerId(id);
    final Marker marker =
        Marker(markerId: markerId, icon: descriptor, position: position);
    markers[markerId] = marker;
  }

  int stops = 2;
  bool saved = true;
  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(shipperViewModel);

    return Scaffold(
      backgroundColor: primaryLightColor,
      appBar: AppBar(
        backgroundColor: primaryDarkColor,
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
        title: Text(
          "Load ${widget.data.loadId ?? ""}",
          style: const TextStyle(
            color: kWhite,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      bottomSheet: Container(
        height: 80,
        width: double.infinity,
        color: kWhite,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CustomButton(
            onTap: () async {
              Uri phoneno = Uri.parse('tel:${widget.data.phoneNumber}');

              if (await launchUrl(phoneno)) {
                //dialer opened
              } else {
                //dailer is not opened
              }
            },
            text: "Connect to Call",
          ),
        ),
      ),
      body: TuckingDraggableScrollableSheet(
        // controller: DraggableScrollableController(),
        tucking: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child:
              //  isLoading
              //     ? Center(
              //         child: CircularProgressIndicator(),
              //       )
              //     :
              GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(_originLatitude, _originLongitude),
              zoom: 4,
            ),
            myLocationEnabled: true,
            onMapCreated: _onMapCreated,
            markers: Set<Marker>.of(markers.values),
            polylines: Set<Polyline>.of(polylines.values),
          ),
        ),
        sheetBuilder: (context, controller) => ListView.builder(
          controller: controller,
          itemCount: 1,
          itemBuilder: (context, index) {
            return Container(
              color: primaryLightColor,
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kWhite,
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
                                backgroundImage: SharedPreferenceService
                                            .getString(
                                                SharedPreferenceService.ROLE) ==
                                        "carrier"
                                    ? widget.data.createdBy?.first
                                                .profilePicUrl !=
                                            ""
                                        ? NetworkImage(widget.data.createdBy
                                                ?.first.profilePicUrl ??
                                            "")
                                        : const NetworkImage(
                                            "https://shipload-assets.s3.us-east-2.amazonaws.com/1706705145392-truck.png")
                                    : NetworkImage(_viewModel
                                            .profileDetailsResponse
                                            ?.data
                                            ?.profilePicUrl ??
                                        "")),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "${widget.data.companyName} ",
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kBlack,
                                fontSize: 16,
                              ),
                            ),
                            // const Spacer(),
                            // InkWell(
                            //   onTap: () {
                            //     setState(() {
                            //       saved = !saved;
                            //     });
                            //   },
                            //   child: widget.data.isSaved
                            //       ? Image.asset(
                            //           "assets/icons/saved_violet.webp",
                            //           height: 25,
                            //         )
                            //       : Image.asset(
                            //           "assets/icons/save_outlined.webp",
                            //           color: primaryColor,
                            //           height: 25,
                            //         ),
                            // )
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              "\$${widget.data.amount}",
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
                              "\$${((widget.data.amount ?? 0) / (widget.data.loadDistance ?? 1)).toStringAsFixed(2)}/mi",
                              style: const TextStyle(
                                color: grey1,
                                fontSize: 14,
                              ),
                            ),
                            const Spacer(),
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
                                  formatTimeDifference(
                                    widget.data?.createdAt?.toLocal() ??
                                        DateTime.now(),
                                  ),
                                  style: const TextStyle(
                                    color: grey2,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      launchUrl(
                          Uri.parse("mailto:${widget.data.corporateEmail}"));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kWhite,
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/emailOtp.png",
                            height: 50,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "${widget.data.corporateEmail}",
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              color: kBlack,
                              fontSize: 16,
                            ),
                          ),
                          // Spacer(),
                          // Image.asset(
                          //   "assets/icons/saved_violet.webp",
                          //   height: 25,
                          // )
                        ],
                      ),
                    ),
                  ),
                  if (widget.data.loadDocumentUrl != null &&
                      widget.data.loadDocumentUrl.isNotEmpty)
                    InkWell(
                      onTap: () {
                        launchUrl(Uri.parse(widget.data.loadDocumentUrl));
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 15),
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kWhite,
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/icons/load_doc.webp",
                              height: 50,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Expanded(
                              child: Text(
                                "Download Load Documents",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: kBlack,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              "assets/icons/download.webp",
                              height: 25,
                            ),
                            const Text(
                              "Download",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: primaryColor,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  else
                    const SizedBox.shrink(),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 15),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kWhite,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Location Details",
                          style: TextStyle(
                            color: kBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/icons/location_red.webp",
                              height: 15,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "Pickup",
                              style: TextStyle(
                                color: kBlack,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "${widget.data.pickupLocation.pickupLocationName}  |  ${DateFormat("MMM dd").format(widget.data.pickupDate.toLocal())}",
                          style: const TextStyle(
                            color: grey1,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/icons/location_green.webp",
                              height: 15,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "Destination",
                              style: TextStyle(
                                color: kBlack,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "${widget.data.dropLocation.dropLocationName}  |  ${DateFormat("MMM dd").format(widget.data.dropDate.toLocal())}",
                          style: const TextStyle(
                            color: grey1,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: widget.data.activeShipmentStops.isNotEmpty,
                    child: Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(bottom: 15),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kWhite,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Stops",
                            style: TextStyle(
                              color: kBlack,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ...List.generate(
                            widget.data.activeShipmentStops.length ?? 0,
                            (index) => Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: primaryColor,
                                      radius: 10,
                                      child: Text("${index + 1}"),
                                    ),
                                    Container(
                                      height: index ==
                                              widget.data.activeShipmentStops
                                                      .length -
                                                  1
                                          ? 0
                                          : 100,

                                      //need the height same as the adjacent column
                                      width: 1,
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "${widget.data.activeShipmentStops[index].pickupLocation.pickupLocationName}",
                                          style: const TextStyle(
                                            color: kBlack,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "${widget.data.loadDistance.toStringAsFixed(0)} mi",
                                              style: const TextStyle(
                                                color: kBlack,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Text(
                                              "\$${((widget.data.amount ?? 0) / (widget.data.loadDistance ?? 1)).toStringAsFixed(2)}/mi",
                                              style: const TextStyle(
                                                color: kBlack,
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                        // const Text(
                                        //   "Live Pickup",
                                        //   style: TextStyle(
                                        //     color: kBlack,
                                        //     fontWeight: FontWeight.bold,
                                        //     fontSize: 14,
                                        //   ),
                                        // ),
                                        // Text(
                                        //   DateFormat('MMM d | EEEE').format(
                                        //       _viewModel
                                        //               .filtersResponse
                                        //               ?.data[widget.index]
                                        //               .activeShipmentStops[index]
                                        //               .estimatePickupDate ??
                                        //           DateTime.now()),
                                        //   style: TextStyle(
                                        //     color: grey1,
                                        //     fontSize: 14,
                                        //   ),
                                        // ),
                                        if (widget
                                                .data
                                                .activeShipmentStops[index]
                                                .notes ==
                                            "")
                                          const SizedBox.shrink()
                                        else
                                          const Text(
                                            "Notes",
                                            style: TextStyle(
                                              color: kBlack,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        Text(
                                          "${widget.data.activeShipmentStops[index].notes}",
                                          style: const TextStyle(
                                            color: grey1,
                                            fontSize: 14,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (widget.data.loadRequirement.isNotEmpty)
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.only(bottom: 15),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kWhite,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Load Requirements",
                            style: TextStyle(
                              color: kBlack,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
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
                                widget.data.loadRequirement.length ?? 0,
                                (index) => Container(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 7,
                                    horizontal: 10,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: primaryLightColor,
                                  ),
                                  child: FittedBox(
                                    child: Text(
                                      widget.data.loadRequirement[index] ?? '',
                                      style: const TextStyle(
                                        color: kBlack,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    )
                  else
                    const SizedBox.shrink(),
                  Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kWhite,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Details",
                          style: TextStyle(
                            color: kBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/icons/road.webp",
                                        height: 20,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text(
                                        "Distance",
                                        style: TextStyle(
                                          color: grey1,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "${widget.data.loadDistance.toStringAsFixed(0)} mi",
                                    style: const TextStyle(
                                      color: kBlack,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/icons/price.webp",
                                        height: 20,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text(
                                        "Price",
                                        style: TextStyle(
                                          color: grey1,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "\$${widget.data.amount}",
                                    style: const TextStyle(
                                      color: kBlack,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/icons/truck.webp",
                                        height: 20,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text(
                                        "Trailer Type",
                                        style: TextStyle(
                                          color: grey1,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    widget.data.trailerType?.isEmpty == true
                                        ? ""
                                        : "${widget.data.trailerType.first}",
                                    style: const TextStyle(
                                      color: kBlack,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/icons/deadhead.webp",
                                        height: 20,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text(
                                        "Deadhead",
                                        style: TextStyle(
                                          color: grey1,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "${widget.data?.deadHead?.toStringAsFixed(0) ?? "NA"} mi",
                                    style: const TextStyle(
                                      color: kBlack,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/icons/rate_pm.webp",
                                        height: 20,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text(
                                        "Rate/ mi",
                                        style: TextStyle(
                                          color: grey1,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "\$${((widget.data.amount ?? 0) / (widget.data.loadDistance ?? 1)).toStringAsFixed(2)}/mi",
                                    style: const TextStyle(
                                      color: kBlack,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/icons/stops.webp",
                                        height: 20,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text(
                                        "Stops",
                                        style: TextStyle(
                                          color: grey1,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "${widget.data.activeShipmentStops.length}",
                                    style: const TextStyle(
                                      color: kBlack,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 15),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kWhite,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Load",
                          style: TextStyle(
                            color: kBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/icons/weight.webp",
                                        height: 20,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text(
                                        "Weight",
                                        style: TextStyle(
                                          color: grey1,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "${widget.data.quantity.toStringAsFixed(0)} lbs",
                                    style: const TextStyle(
                                      color: kBlack,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/icons/package_type.webp",
                                        height: 20,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text(
                                        "Commodity",
                                        style: TextStyle(
                                          color: grey1,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "${widget.data.packageType}",
                                    style: const TextStyle(
                                      color: kBlack,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/icons/load_type.png",
                                        height: 20,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text(
                                        "Type",
                                        style: TextStyle(
                                          color: grey1,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "${widget.data.loadType}",
                                    style: const TextStyle(
                                      color: kBlack,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  )
                ],
              ),
            );
          },
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
