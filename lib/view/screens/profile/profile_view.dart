import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shipload_app/data/remote/auth/models/logout.dart';
import 'package:shipload_app/helpers/base_screen_view.dart';
import 'package:shipload_app/routes/app_routes.dart';
import 'package:shipload_app/services/shared_preference_service.dart';
import 'package:shipload_app/utils/colors.dart';
import 'package:shipload_app/view/screens/shipper/shipper_view_model.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileView extends ConsumerStatefulWidget {
  const ProfileView({super.key});

  @override
  ConsumerState<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends ConsumerState<ProfileView> with BaseScreenView {
  late ShipperViewModel _viewModel;
  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(shipperViewModel)..attachView(this);
    getData();
  }

  void getData() async {
    await _viewModel.getProfileDetails(
        SharedPreferenceService.getString(SharedPreferenceService.AUTH_TOKEN) ??
            "",
        context);
  }

  @override
  Widget build(BuildContext context) {
    _viewModel = ref.watch(shipperViewModel);
    return Scaffold(
      backgroundColor: primaryLightColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 50),
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/profile_bg.webp"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 45,
                      backgroundColor: kWhite,
                      backgroundImage: NetworkImage(
                        _viewModel.profileDetailsResponse?.data.profilePicUrl ==
                                ""
                            ? "https://shipload-assets.s3.us-east-2.amazonaws.com/1697713868713-default_profile_pic.jpg"
                            : _viewModel
                                .profileDetailsResponse!.data.profilePicUrl!,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          _viewModel.profileDetailsResponse?.data.fullName ??
                              "",
                          style: const TextStyle(
                            fontWeight: FontWeight.w800,
                            color: kWhite,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          _viewModel.profileDetailsResponse?.data.phoneNumber ??
                              "",
                          style: const TextStyle(color: kWhite, fontSize: 14),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: primaryLightColor,
                            border: Border.all(color: primaryColor),
                          ),
                          child: Text(
                            _viewModel.profileDetailsResponse?.data.trialUser ??
                                    false
                                ? "Trial User"
                                : _viewModel.profileDetailsResponse?.data
                                            .premiumUser ??
                                        false
                                    ? "Premium User"
                                    : "EXPIRED",
                            style: const TextStyle(
                              color: kBlack,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                        Row(
                          children: [
                            const Text(
                              "Personal Details",
                              style: TextStyle(
                                color: kBlack,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const Spacer(),
                            TextButton.icon(
                              onPressed: () {
                                context
                                    .pushNamed(AppRoute.editProfileView.name);
                              },
                              icon: Image.asset(
                                "assets/icons/edit.webp",
                                height: 25,
                              ),
                              label: const Text(
                                "Edit",
                                style: TextStyle(
                                  color: primaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/icons/profile.webp",
                              height: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              _viewModel
                                      .profileDetailsResponse?.data.fullName ??
                                  "",
                              style: const TextStyle(color: kBlack),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          color: grey3,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/icons/phone.webp",
                              height: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              _viewModel.profileDetailsResponse?.data
                                      .phoneNumber ??
                                  "",
                              style: const TextStyle(color: kBlack),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          color: grey3,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/icons/profile_email.webp",
                              height: 20,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              _viewModel.profileDetailsResponse?.data.email ??
                                  "",
                              style: const TextStyle(color: kBlack),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const SizedBox(
                          height: 10,
                        )
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
                        const Text(
                          "Support",
                          style: TextStyle(
                            color: kBlack,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        InkWell(
                          onTap: () {
                            context.pushNamed(AppRoute.feedbackView.name);
                          },
                          child: SizedBox(
                            height: 45,
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/icons/profile_email.webp",
                                  height: 20,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "Share your feedback",
                                  style: TextStyle(color: kBlack),
                                ),
                                const Spacer(),
                                Image.asset(
                                  "assets/icons/arrow_forward.webp",
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                        ),
                        const Divider(
                          color: grey3,
                        ),
                        InkWell(
                          onTap: () async {
                            Uri phoneno =
                                Uri.parse('https://www.shipload.app/');

                            if (await launchUrl(phoneno)) {
                              //dialer opened
                            } else {
                              //dailer is not opened
                            }
                          },
                          child: SizedBox(
                            height: 45,
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/icons/phone.webp",
                                  height: 20,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "Help Center ",
                                  style: TextStyle(color: kBlack),
                                ),
                                const Spacer(),
                                Image.asset(
                                  "assets/icons/arrow_forward.webp",
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
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
                        const Text(
                          "More",
                          style: TextStyle(
                            color: kBlack,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        InkWell(
                          onTap: () {
                            context.pushNamed(AppRoute.privacyPolicyView.name);
                          },
                          child: SizedBox(
                            height: 45,
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/icons/privacy.webp",
                                  height: 20,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "Privacy Policy",
                                  style: TextStyle(color: kBlack),
                                ),
                                const Spacer(),
                                Image.asset(
                                  "assets/icons/arrow_forward.webp",
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                        ),
                        const Divider(
                          color: grey3,
                        ),
                        InkWell(
                          onTap: () {
                            context.pushNamed(
                              AppRoute.termsAndConditionsView.name,
                            );
                          },
                          child: SizedBox(
                            height: 45,
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/icons/tnc.webp",
                                  height: 20,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "Terms & Conditions",
                                  style: TextStyle(color: kBlack),
                                ),
                                const Spacer(),
                                Image.asset(
                                  "assets/icons/arrow_forward.webp",
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                        ),
                        const Divider(
                          color: grey3,
                        ),
                        InkWell(
                          onTap: () async {
                            await _viewModel.logout(
                              LogoutRequest(
                                refreshToken: SharedPreferenceService.getString(
                                      SharedPreferenceService.REFRESH_TOKEN,
                                    ) ??
                                    "",
                              ),
                              context,
                            );
                          },
                          child: SizedBox(
                            height: 45,
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/icons/logout.webp",
                                  height: 20,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "Logout",
                                  style: TextStyle(color: kBlack),
                                ),
                                const Spacer(),
                                Image.asset(
                                  "assets/icons/arrow_forward.webp",
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Divider(
                          color: grey3,
                        ),
                        InkWell(
                          onTap: () async {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Row(
                                    children: const [
                                      Text(
                                        "Log Out",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                  backgroundColor: primaryLightColor,
                                  content: SingleChildScrollView(
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width >
                                              900
                                          ? 400
                                          : MediaQuery.of(context).size.width *
                                              0.8,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Are you sure you want to delete your account?",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              color: Color.fromARGB(
                                                255,
                                                15,
                                                32,
                                                61,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 16,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: const Text(
                                                  "No",
                                                  style: TextStyle(
                                                    color: grey1,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              TextButton(
                                                onPressed: () async {
                                                  await _viewModel
                                                      .deleteAccount(
                                                    SharedPreferenceService
                                                            .getString(
                                                          SharedPreferenceService
                                                              .AUTH_TOKEN,
                                                        ) ??
                                                        "",
                                                    _viewModel
                                                            .profileDetailsResponse
                                                            ?.data
                                                            .role ??
                                                        "",
                                                    context,
                                                  );
                                                  Navigator.pop(context);
                                                },
                                                child: const Text(
                                                  "Yes",
                                                  style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: SizedBox(
                            height: 45,
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.delete_forever_rounded,
                                  size: 25,
                                  color: grey2,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "Delete Account",
                                  style: TextStyle(color: kBlack),
                                ),
                                const Spacer(),
                                Image.asset(
                                  "assets/icons/arrow_forward.webp",
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
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
