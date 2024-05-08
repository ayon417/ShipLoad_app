import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shipload_app/data/remote/shipper/models/feedback.dart';
import 'package:shipload_app/helpers/base_screen_view.dart';
import 'package:shipload_app/routes/app_routes.dart';
import 'package:shipload_app/services/shared_preference_service.dart';
import 'package:shipload_app/utils/colors.dart';
import 'package:shipload_app/view/components/customButton.dart';
import 'package:shipload_app/view/screens/shipper/shipper_view_model.dart';

class FeedbackView extends ConsumerStatefulWidget {
  const FeedbackView({super.key});

  @override
  ConsumerState<FeedbackView> createState() => _FeedbackViewState();
}

class _FeedbackViewState extends ConsumerState<FeedbackView>
    with BaseScreenView {
  late ShipperViewModel _viewModel;
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    _viewModel = ref.read(shipperViewModel)..attachView(this);
  }

  final feedbackController = TextEditingController();
  final formkey = GlobalKey<FormState>();

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
          "Feedback",
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
              if (formkey.currentState!.validate()) {
                isLoading = true;
                setState(() {});
                await _viewModel.feedback(
                  FeedbackRequest(
                    feedback: feedbackController.text,
                  ),
                  SharedPreferenceService.getString(
                        SharedPreferenceService.AUTH_TOKEN,
                      ) ??
                      "",
                );
                isLoading = false;
                feedbackController.clear();
                setState(() {});
              }
            },
            text: "Submit",
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Text(
                "Share your valuable feedback.",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Text(
                "Help us build a better ship experience so we can empower your lives.",
                style: TextStyle(
                  color: grey1,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "Add comments",
                style: TextStyle(
                  color: grey1,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Form(
                key: formkey,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your feedback';
                    }
                    return null;
                  },
                  controller: feedbackController,
                  maxLines: 8,
                  decoration: const InputDecoration(
                    fillColor: kWhite,
                    hintText:
                        "Share feedback, features or bugs to help us improve ship.",
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
