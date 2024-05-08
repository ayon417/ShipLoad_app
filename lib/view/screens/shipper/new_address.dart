import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shipload_app/data/remote/shipper/models/create_shipping_address.dart';
import 'package:shipload_app/helpers/base_screen_view.dart';
import 'package:shipload_app/routes/app_routes.dart';
import 'package:shipload_app/services/shared_preference_service.dart';
import 'package:shipload_app/utils/colors.dart';
import 'package:shipload_app/view/components/customButton.dart';
import 'package:shipload_app/view/screens/shipper/shipper_view_model.dart';

class NewAddressView extends ConsumerStatefulWidget {
  const NewAddressView({super.key});

  @override
  ConsumerState<NewAddressView> createState() => _NewAddressViewState();
}

class _NewAddressViewState extends ConsumerState<NewAddressView>
    with BaseScreenView {
  late ShipperViewModel _viewModel;
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(shipperViewModel)..attachView(this);
  }

  final formKey = GlobalKey<FormState>();
  final companyNameController = TextEditingController();
  final addressController = TextEditingController();
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final zipController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(shipperViewModel);

    return Scaffold(
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
              if (formKey.currentState!.validate()) {
                //call api to create new address
                isLoading = true;
                setState(() {});
                await _viewModel.createShippingAddress(
                  CreateShippingAddress(
                    companyFullName: companyNameController.text,
                    address: addressController.text,
                    city: cityController.text,
                    state: stateController.text,
                    zip: zipController.text,
                  ),
                  SharedPreferenceService.getString(
                        SharedPreferenceService.AUTH_TOKEN,
                      ) ??
                      "",
                  context,
                );
                isLoading = false;
                setState(() {});
              }
              // context.pushNamed("newAddressView");
            },
            text: "Save",
          ),
        ),
      ),
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
        title: const Text(
          'New Address',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Address",
                  style: TextStyle(
                    color: kBlack,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Company Full Name",
                  style: TextStyle(
                    color: grey1,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Company Full Name';
                    }
                    return null;
                  },
                  controller: companyNameController,
                  decoration: const InputDecoration(
                    fillColor: kWhite,
                    hintText: "Enter Company  Full Name",
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Address( House No, Building Street )",
                  style: TextStyle(
                    color: grey1,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextFormField(
                  controller: addressController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Address';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    fillColor: kWhite,
                    hintText: "Enter Address",
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "City",
                            style: TextStyle(
                              color: grey1,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your City';
                              }
                              return null;
                            },
                            controller: cityController,
                            decoration: const InputDecoration(
                              fillColor: kWhite,
                              hintText: "City Name",
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "State",
                            style: TextStyle(
                              color: grey1,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your State';
                              }
                              return null;
                            },
                            controller: stateController,
                            decoration: const InputDecoration(
                              fillColor: kWhite,
                              hintText: "",
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "ZIP Code",
                  style: TextStyle(
                    color: grey1,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your ZIP Code';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  controller: zipController,
                  decoration: const InputDecoration(
                    fillColor: kWhite,
                    hintText: "Enter ZIP Code",
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                // Align(
                //     child: TextButton(
                //   onPressed: () {},
                //   child: const Text(
                //     "Skip Payment & Post Load",
                //     style: TextStyle(color: primaryColor),
                //   ),
                // ))
              ],
            ),
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
