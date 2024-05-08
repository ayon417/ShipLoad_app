import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shipload_app/data/remote/shipper/models/delete_shipping_address.dart';
import 'package:shipload_app/helpers/base_screen_view.dart';
import 'package:shipload_app/routes/app_routes.dart';
import 'package:shipload_app/services/shared_preference_service.dart';
import 'package:shipload_app/utils/colors.dart';
import 'package:shipload_app/view/components/customButton.dart';
import 'package:shipload_app/view/screens/shipper/shipper_view_model.dart';

class BillingAddressView extends ConsumerStatefulWidget {
  const BillingAddressView({super.key});

  @override
  ConsumerState<BillingAddressView> createState() => _BillingAddressViewState();
}

class _BillingAddressViewState extends ConsumerState<BillingAddressView>
    with BaseScreenView {
  late ShipperViewModel _viewModel;
  bool isLoading = false;
  int selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(shipperViewModel)..attachView(this);
    getData();
  }

  void getData() async {
    isLoading = true;
    setState(() {});
    await _viewModel.getShippingAddress(
      SharedPreferenceService.getString(SharedPreferenceService.AUTH_TOKEN) ??
          "",
    );
    isLoading = false;
    setState(() {});
  }

  @override
  void dispose() {
    _viewModel.detachView();
    super.dispose();
  }

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
          child: CustomButton(
            onTap: () {
              context.pushNamed("paymentDetailsView");
            },
            text: "Next",
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
          'Billing Address',
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
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: primaryColor,
              ),
            )
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...List.generate(
                      _viewModel.getShippingAddressResponse?.data?.length ?? 0,
                      (index) => Container(
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
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      _viewModel.getShippingAddressResponse
                                              ?.data?[index].companyFullName ??
                                          "",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: kBlack,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      _viewModel.getShippingAddressResponse
                                              ?.data?[index].address ??
                                          "",
                                      style: const TextStyle(
                                        color: darkGrey,
                                        fontSize: 14,
                                      ),
                                    ),
                                    Text(
                                      "${_viewModel.getShippingAddressResponse?.data?[index].city ?? ""}, ${_viewModel.getShippingAddressResponse?.data?[index].state ?? ""}",
                                      style: const TextStyle(
                                        color: darkGrey,
                                        fontSize: 14,
                                      ),
                                    ),
                                    Text(
                                      _viewModel.getShippingAddressResponse
                                              ?.data?[index].zip ??
                                          "",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: kBlack,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Checkbox(
                                  value: selectedIndex == index,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedIndex = index;
                                    });
                                  },
                                  activeColor: primaryColor,
                                ),
                              ],
                            ),
                            const SizedBox(height: 15),
                            Row(
                              children: [
                                Expanded(
                                  child: OutlinedButton(
                                    style: ButtonStyle(
                                      shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                      ),
                                      side: MaterialStateProperty.all(
                                        const BorderSide(),
                                      ),
                                    ),
                                    onPressed: () {
                                      context.pushNamed(
                                        AppRoute.editAddressView.name,
                                        extra: _viewModel
                                            .getShippingAddressResponse
                                            ?.data?[index],
                                      );
                                    },
                                    child: const Text(
                                      "Edit",
                                      style: TextStyle(color: grey2),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                OutlinedButton(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    side: MaterialStateProperty.all(
                                      const BorderSide(),
                                    ),
                                  ),
                                  onPressed: () async {
                                    await _viewModel.deleteShippingAddress(
                                      DeleteShippingAddressRequest(
                                        addressIds: [
                                          _viewModel.getShippingAddressResponse
                                                  ?.data?[index].id ??
                                              "",
                                        ],
                                      ),
                                      SharedPreferenceService.getString(
                                            SharedPreferenceService.AUTH_TOKEN,
                                          ) ??
                                          "",
                                    );
                                  },
                                  child: const Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: OutlinedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          side: MaterialStateProperty.all(
                            const BorderSide(color: primaryColor),
                          ),
                        ),
                        onPressed: () {
                          context.pushNamed(AppRoute.newAddressView.name);
                        },
                        child: const Text(
                          "Add New Address",
                          style: TextStyle(color: primaryColor),
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
