import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shipload_app/data/remote/shipper/models/edit_profile.dart';
import 'package:shipload_app/helpers/base_screen_view.dart';
import 'package:shipload_app/routes/app_routes.dart';
import 'package:shipload_app/services/shared_preference_service.dart';
import 'package:shipload_app/utils/colors.dart';
import 'package:shipload_app/utils/file_picker.dart';
import 'package:shipload_app/view/components/customButton.dart';
import 'package:shipload_app/view/screens/shipper/shipper_view_model.dart';

class EditProfileView extends ConsumerStatefulWidget {
  const EditProfileView({super.key});

  @override
  ConsumerState<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends ConsumerState<EditProfileView>
    with BaseScreenView {
  late ShipperViewModel _viewModel;
  final emailController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(shipperViewModel)..attachView(this);
    getData();
  }

  void getData() async {
    // isLoading = true;
    // setState(() {});
    // await _viewModel.getProfileDetails(
    //     SharedPreferenceService.getString(SharedPreferenceService.AUTH_TOKEN) ??
    //         "");
    emailController.text = _viewModel.profileDetailsResponse?.data.email ?? "";
    nameController.text =
        _viewModel.profileDetailsResponse?.data.fullName ?? "";
    phoneController.text =
        _viewModel.profileDetailsResponse?.data.phoneNumber ?? "";
    imgUrl = _viewModel.profileDetailsResponse?.data.profilePicUrl ?? "";
    // isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(shipperViewModel);
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
          "Personal Details",
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
              isLoading = true;
              setState(() {});
              await _viewModel.editProfile(
                EditProfileRequest(
                  name: nameController.text,
                  email: emailController.text,
                  phoneNumber: phoneController.text,
                  profilePicUrl: imgUrl,
                ),
                SharedPreferenceService.getString(
                      SharedPreferenceService.AUTH_TOKEN,
                    ) ??
                    "",
              );
              await _viewModel.getProfileDetails(
                  SharedPreferenceService.getString(
                        SharedPreferenceService.AUTH_TOKEN,
                      ) ??
                      "",
                  context);
              isLoading = false;
              setState(() {});
              context.pop();
            },
            text: "Save Changes",
          ),
        ),
      ),
      body:
          // isLoading
          //     ? Center(
          //         child: Lottie.asset(
          //           "assets/images/loading.json",
          //           height: 100,
          //         ),
          //       )
          //     :
          SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Align(
                // alignment: Alignment.center,
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 70,
                      backgroundImage: NetworkImage(
                        _viewModel.profileDetailsResponse?.data.profilePicUrl ==
                                ""
                            ? "https://shipload-assets.s3.us-east-2.amazonaws.com/1697713868713-default_profile_pic.jpg"
                            : _viewModel
                                .profileDetailsResponse!.data.profilePicUrl!,
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 5,
                      child: InkWell(
                        onTap: () async {
                          await openPickImageModalSheet(context);
                        },
                        child: const CircleAvatar(
                          backgroundColor: kWhite,
                          radius: 15,
                          child: Icon(
                            Icons.camera_alt_rounded,
                            color: primaryColor,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "Full Name",
                style: TextStyle(
                  color: grey1,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  hintText: "Esther Howard",
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Phone Number",
                style: TextStyle(
                  color: grey1,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextField(
                controller: phoneController,
                decoration: const InputDecoration(
                  hintText: "+1 2245 154 145",
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                "Email",
                style: TextStyle(
                  color: grey1,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: "Tjx3e@example.com",
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
