import 'dart:developer';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shipload_app/data/remote/carrier/models/create_payment_request.dart';
import 'package:shipload_app/data/remote/carrier/models/get_loads_by_id.dart';
import 'package:shipload_app/helpers/base_screen_view.dart';
import 'package:shipload_app/routes/app_routes.dart';
import 'package:shipload_app/services/shared_preference_service.dart';
import 'package:shipload_app/utils/colors.dart';
import 'package:shipload_app/utils/file_picker.dart';
import 'package:shipload_app/view/screens/carrier/carrier_view_model.dart';

class MakePaymentRequestView extends ConsumerStatefulWidget {
  const MakePaymentRequestView({super.key});

  @override
  ConsumerState<MakePaymentRequestView> createState() =>
      _MakePaymentRequestViewState();
}

class _MakePaymentRequestViewState extends ConsumerState<MakePaymentRequestView>
    with BaseScreenView {
  late CarrierViewModel _viewModel;
  bool isLoading = false;
  bool isVerified = false;
  final loadController = TextEditingController();
  // final UserDetailService _userDetailService = getIt<UserDetailService>();
  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(carrierViewModel)..attachView(this);
  }

  bool uploading = false;
  String fileName = "";
  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(carrierViewModel);
    return Scaffold(
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
          "Make Payment Request",
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
          child: InkWell(
            onTap: _viewModel.isVerified && loadController.text.length >= 7
                ? () async {
                    isLoading = true;
                    setState(() {});
                    await _viewModel.createPaymentRequest(
                      CreatePaymentRequest(
                        loadId: "#${loadController.text}",
                        shipperId:
                            _viewModel.getLoadById?.data?.createdBy?.first.id,
                        rate: _viewModel.getLoadById?.data?.amount,
                        docUrl: fileName,
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
                : null,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: _viewModel.isVerified && loadController.text.length >= 7
                    ? primaryColor
                    : grey2,
              ),
              child: Center(
                child: Text(
                  isLoading ? "Processing..." : "Make Request",
                  style: const TextStyle(
                    color: kWhite,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Basic Details',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w600,
                height: 0.83,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Enter Load ID",
              style: TextStyle(
                color: grey1,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Please enter load id";
                } else if (value.length != 7) {
                  return "Please enter valid load id";
                }
                return null;
              },
              onChanged: (value) async {
                if (value.length >= 7) {
                  await _viewModel
                      .getLoadByID(GetLoadByIdRequest(loadId: "#${value}"));
                }
              },
              maxLength: 8,
              keyboardType: TextInputType.number,
              controller: loadController,
              decoration: const InputDecoration(
                hintText: "Ex-1234567",
                counter: SizedBox.shrink(),
                // prefixIcon:
                //     Text("#", style: TextStyle(color: grey1, fontSize: 18))
              ),
            ),
            if (loadController.text.length >= 7 && _viewModel.isVerified)
              Row(
                children: const [
                  Icon(
                    Icons.verified,
                    color: Colors.green,
                    size: 15,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Load Verified",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              )
            else
              const SizedBox.shrink(),
            if (loadController.text.length >= 7 && !_viewModel.isVerified)
              Row(
                children: const [
                  Icon(
                    Icons.error,
                    color: Colors.red,
                    size: 15,
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Enter a valid Load ID",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              )
            else
              const SizedBox.shrink(),
            const SizedBox(height: 20),
            const Text(
              "Select Shipper",
              style: TextStyle(
                color: grey1,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextField(
              readOnly: true,
              // controller: phoneController,
              decoration: InputDecoration(
                hintText: _viewModel.isVerified &&
                        loadController.text.length >= 7
                    ? _viewModel.getLoadById?.data?.createdBy?.first.fullName
                    : "Shipper Name",
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              "Rate",
              style: TextStyle(
                color: grey1,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextField(
              // controller: rateController,
              readOnly: true,

              decoration: InputDecoration(
                hintText:
                    _viewModel.isVerified && loadController.text.length >= 7
                        ? "\$ ${_viewModel.getLoadById?.data?.amount}"
                        : "\$",
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Upload Paperwork',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.w600,
                height: 0.83,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kWhite,
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Image.asset(
                    "assets/icons/load_doc.webp",
                    height: 50,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          fileName == "" || uploading
                              ? "Only PDF/JPG/PNG Files are accepted"
                              : fileName.split("-").last,
                          style: const TextStyle(color: grey2),
                        ),
                      ),
                      if (fileName == "" || uploading)
                        const SizedBox.shrink()
                      else
                        IconButton(
                          onPressed: () {
                            fileName = "";
                            setState(() {});
                          },
                          icon: const Icon(Icons.close),
                        ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    color: grey3,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () async {
                      FilePickerResult? result =
                          await FilePicker.platform.pickFiles();

                      if (result != null) {
                        File file = File(result.files.single.path!);
                        uploading = true;
                        setState(() {});
                        fileName = await uploadFile(file);
                        log(fileName);
                        uploading = false;
                        setState(() {});
                      } else {
                        // User canceled the picker
                      }
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: primaryColor,
                      ),
                      child: uploading
                          ? const Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 5,
                              ),
                              child: SizedBox(
                                height: 18,
                                width: 18,
                                child: CircularProgressIndicator(
                                  color: kWhite,
                                ),
                              ),
                            )
                          : const Text(
                              "Browse Files",
                              style: TextStyle(color: kWhite, fontSize: 16),
                            ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
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
