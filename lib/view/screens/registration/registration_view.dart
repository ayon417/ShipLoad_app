// ignore_for_file: unnecessary_await_in_return, avoid_dynamic_calls, avoid_print

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:shipload_app/core/constants.dart';
import 'package:shipload_app/data/remote/auth/models/sign_up.dart';
import 'package:shipload_app/helpers/base_screen_view.dart';
import 'package:shipload_app/routes/app_routes.dart';
import 'package:shipload_app/utils/app_sizes.dart';
import 'package:shipload_app/utils/colors.dart';
import 'package:shipload_app/view/screens/signin/auth_view_model.dart';

class RegistrationView extends ConsumerStatefulWidget {
  const RegistrationView({super.key});

  @override
  ConsumerState<RegistrationView> createState() => _RegistrationViewState();
}

class _RegistrationViewState extends ConsumerState<RegistrationView>
    with BaseScreenView {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController companyController = TextEditingController();
  final TextEditingController mcNumberController = TextEditingController();
  final TextEditingController websiteController = TextEditingController();
  // final TextEditingController corporateEnailController =
  //     TextEditingController();
  late AuthViewModel _viewModel;

  bool _isLoading = false;

  Future<Position> _determinePosition() async {
    setState(() {
      _isLoading = true;
    });
    bool serviceEnabled;
    LocationPermission permission;

    // Check if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled; don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }

  Future<void> _getCountryFromPosition(Position position) async {
    try {
      final List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );
      final Placemark place = placemarks[0];
      setState(() {
        addressController.text = place.country ?? "Unknown";
      });
    } catch (e) {
      setState(() {
        addressController.text = '';
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(authViewModel)..attachView(this);
    _determinePosition().then((Position position) {
      setState(() {
        _isLoading = false;
      });
      _getCountryFromPosition(position);
    }).catchError((e) {
      setState(() {
        addressController.text = '';
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    phoneController.dispose();
    companyController.dispose();
    mcNumberController.dispose();
    websiteController.dispose();
    // corporateEnailController.dispose();
  }

  int user = 0;
  bool obscureText = true;
  bool isLoading = false;
  //formkey
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(authViewModel);
    return Scaffold(
      backgroundColor: primaryLightColor,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(height: 70),
              Center(
                child: Image.asset(
                  "assets/images/logo_circular.png",
                  height: 152,
                  width: 152,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                // height: MediaQuery.of(context).size.height - 100,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 30),
                      const Align(
                        // ignore: avoid_redundant_argument_values
                        alignment: Alignment.center,
                        child: Text(
                          'Welcome to Ship!',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            height: 0.83,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Color(0xffF2F6F9),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    user = 0;
                                  });
                                },
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: user == 0
                                        ? primaryColor
                                        : const Color(0xffF2F6F9),
                                    borderRadius: BorderRadius.circular(14),
                                    border: Border.all(
                                      color: const Color(0xffF2F6F9),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "I’m Carrier",
                                      style: TextStyle(
                                        color:
                                            user == 0 ? Colors.white : kBlack,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    user = 1;
                                  });
                                },
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: user == 1
                                        ? primaryColor
                                        : const Color(0xffF2F6F9),
                                    borderRadius: BorderRadius.circular(14),
                                    border: Border.all(
                                      color: const Color(0xffF2F6F9),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "I’m Shipper",
                                      style: TextStyle(
                                        color:
                                            user == 1 ? Colors.white : kBlack,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Full Name',
                        style: TextStyle(
                          color: Color(0xFF707070),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 1.43,
                        ),
                      ),
                      const SizedBox(height: 4),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your full name';
                          }
                          return null;
                        },
                        controller: nameController,
                        decoration:
                            const InputDecoration(hintText: "Enter Your Name"),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        'Company Name',
                        style: TextStyle(
                          color: Color(0xFF707070),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 1.43,
                        ),
                      ),
                      const SizedBox(height: 4),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your company name';
                          }
                          return null;
                        },
                        controller: companyController,
                        decoration: const InputDecoration(
                          hintText: "Enter Company Your Name",
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Visibility(
                        visible: user == 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'MC Number',
                              style: TextStyle(
                                color: Color(0xFF707070),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                height: 1.43,
                              ),
                            ),
                            const SizedBox(height: 4),
                            TextFormField(
                              keyboardType: TextInputType.number,
                              maxLength: 7,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              validator: (value) {
                                if ((value == null || value.isEmpty) &&
                                    user == 0) {
                                  return 'Please enter your MC number';
                                }
                                return null;
                              },
                              controller: mcNumberController,
                              decoration: const InputDecoration(
                                hintText: "Enter Your MC Number",
                                counter: SizedBox.shrink(),
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        'Phone Number',
                        style: TextStyle(
                          color: Color(0xFF707070),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 1.43,
                        ),
                      ),
                      const SizedBox(height: 4),
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your phone number';
                          }
                          return null;
                        },
                        controller: phoneController,
                        decoration: const InputDecoration(
                          hintText: "Enter Your Phone Number",
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        'Location',
                        style: TextStyle(
                          color: Color(0xFF707070),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 1.43,
                        ),
                      ),
                      const SizedBox(height: 4),
                      SizedBox(
                        child: _isLoading
                            ? const Center(
                                child: CircularProgressIndicator(
                                  color: primaryColor,
                                ),
                              )
                            : TypeAheadField(
                                textFieldConfiguration: TextFieldConfiguration(
                                  controller: addressController,
                                  decoration: const InputDecoration(
                                    hintText: "Enter your pickup location",
                                    helperStyle: TextStyle(color: grey2),
                                    border: OutlineInputBorder(),
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
                                      final List<Map<String, dynamic>>
                                          suggestions = [];
                                      for (final prediction in predictions) {
                                        final description =
                                            prediction['description'];
                                        final placeId = prediction['place_id'];
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
                                  addressController.text =
                                      suggestion['description'];

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
                                          result['geometry']['location']['lat'];
                                      final double longitude =
                                          result['geometry']['location']['lng'];

                                      // Use the latitude and longitude values as needed
                                      print(
                                          'Latitude: $latitude, Longitude: $longitude');
                                      // stopsData[index].coordinates = [longitude, latitude];
                                      // pickupLocationCoordinates = [longitude, latitude];
                                      setState(() {});
                                    }
                                  }
                                },
                              ),
                        // : TextFormField(
                        //   validator: (value) {
                        //     if (value == null || value.isEmpty) {
                        //       return 'Please enter your country name';
                        //     }
                        //     return null;
                        //   },
                        //   controller: addressController,
                        //   decoration: const InputDecoration(
                        //     hintText: "Enter Your Country Name",
                        //   ),
                        // ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Visibility(
                        visible: user == 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // const Text(
                            //   'Corporate Email',
                            //   style: TextStyle(
                            //     color: Color(0xFF707070),
                            //     fontSize: 14,
                            //     fontWeight: FontWeight.w500,
                            //     height: 1.43,
                            //   ),
                            // ),
                            // const SizedBox(height: 4),
                            // TextFormField(
                            //   keyboardType: TextInputType.emailAddress,
                            //   validator: (value) {
                            //     if ((value == null || value.isEmpty) &&
                            //         user == 1) {
                            //       return 'Please enter your corporate email';
                            //     }
                            //     return null;
                            //   },
                            //   controller: emailController,
                            //   decoration: const InputDecoration(
                            //     hintText: "Enter Your Corporate Email",
                            //   ),
                            // ),
                            // const SizedBox(
                            //   height: 16,
                            // ),
                            const Text(
                              'Website',
                              style: TextStyle(
                                color: Color(0xFF707070),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                height: 1.43,
                              ),
                            ),
                            const SizedBox(height: 4),
                            TextFormField(
                              validator: (value) {
                                if ((value == null || value.isEmpty) &&
                                    user == 1) {
                                  return 'Please enter your website link';
                                }
                                return null;
                              },
                              controller: websiteController,
                              decoration: const InputDecoration(
                                hintText: "Enter Your Website Link",
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        'Email',
                        style: TextStyle(
                          color: Color(0xFF707070),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 1.43,
                        ),
                      ),
                      const SizedBox(height: 4),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                        controller: emailController,
                        decoration: const InputDecoration(
                          hintText: "Enter your Email Id",
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        'Password',
                        style: TextStyle(
                          color: Color(0xFF707070),
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 1.43,
                        ),
                      ),
                      const SizedBox(height: 4),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password cannot be empty';
                          } else if (value.length < 8) {
                            return 'Password must be at least 8 characters long';
                          }
                          return null;
                        },
                        obscureText: obscureText,
                        controller: passwordController,
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                obscureText = !obscureText;
                              });
                            },
                            child: !obscureText
                                ? const Icon(
                                    Icons.visibility_off,
                                    size: 25,
                                  )
                                : const Icon(
                                    Icons.remove_red_eye,
                                    color: kBlack,
                                    size: 25,
                                  ),
                          ),
                        ),
                      ),
                      gapH32,
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              isLoading = true;
                              setState(() {});
                              await _viewModel.register(
                                user == 0
                                    ? SignUpRequest(
                                        fullName: nameController.text,
                                        companyName: companyController.text,
                                        mcNumber: mcNumberController.text,
                                        phoneNumber: phoneController.text,
                                        email: emailController.text,
                                        password: passwordController.text,
                                        role: user == 0 ? "carrier" : "shipper",
                                        location: addressController.text,
                                        companyWebsite: "",
                                        corporateEmail: "",
                                      )
                                    : SignUpRequest(
                                        fullName: nameController.text,
                                        phoneNumber: phoneController.text,
                                        email: emailController.text,
                                        password: passwordController.text,
                                        companyWebsite: websiteController.text,
                                        companyName: companyController.text,
                                        corporateEmail: emailController.text,
                                        role: user == 0 ? "carrier" : "shipper",
                                        location: addressController.text,
                                        mcNumber: "",
                                      ),
                                context,
                              );
                              isLoading = false;
                              setState(() {});
                            }
                          },
                          style: ButtonStyle(
                            shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            backgroundColor:
                                MaterialStateProperty.all(primaryColor),
                          ),
                          child: Center(
                            child: isLoading
                                ? const SizedBox(
                                    height: 25,
                                    width: 25,
                                    child: CircularProgressIndicator(
                                      color: kWhite,
                                      strokeWidth: 2,
                                    ),
                                  )
                                : const Text(
                                    "Continue",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                      gapH20,
                      Center(
                        child: Text.rich(
                          TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Already have an account ? ',
                                style: TextStyle(
                                  color: Color(0xFF5D5D5D),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TextSpan(
                                text: 'Sign in',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    context.pushNamed(
                                      AppRoute.signinView.name,
                                    );
                                  },
                                style: const TextStyle(
                                  color: primaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 16),
                      const SizedBox(width: 10),
                      const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: 'I acknowledge Ship’s ',
                              style: TextStyle(
                                color: Color(0xFF858585),
                                fontSize: 12,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w400,
                                height: 1.40,
                              ),
                            ),
                            TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(
                                color: Color(0xFF953AE4),
                                fontSize: 12,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w400,
                                height: 1.40,
                              ),
                            ),
                            TextSpan(
                              text: ' and agree to the ',
                              style: TextStyle(
                                color: Color(0xFF858585),
                                fontSize: 12,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w400,
                                height: 1.40,
                              ),
                            ),
                            TextSpan(
                              text: 'Terms of Service',
                              style: TextStyle(
                                color: Color(0xFF953AE4),
                                fontSize: 12,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w400,
                                height: 1.40,
                              ),
                            ),
                            TextSpan(
                              text: '.',
                              style: TextStyle(
                                color: Color(0xFF858585),
                                fontSize: 12,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w400,
                                height: 1.40,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      gapH20,
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
