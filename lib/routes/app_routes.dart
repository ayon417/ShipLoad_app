import 'package:go_router/go_router.dart';
import 'package:shipload_app/data/remote/shipper/models/get_shipping_address.dart';
import 'package:shipload_app/data/remote/shipper/models/mc_search_model.dart';
import 'package:shipload_app/view/screens/bottomNavigation/bottom_navigation_shipper_view.dart';
import 'package:shipload_app/view/screens/bottomNavigation/bottom_navigation_view.dart';
import 'package:shipload_app/view/screens/carrier/carrier_load_detail_view.dart';
// import 'package:shipload_app/data/remote/shipper/models/shipper_get_all_loads.dart'
//     as load;
import 'package:shipload_app/view/screens/carrier/make_payment_request_view.dart';
import 'package:shipload_app/view/screens/carrier/search_filter_view.dart';
import 'package:shipload_app/view/screens/carrier/search_loc_view.dart';
import 'package:shipload_app/view/screens/forgotPassword/confirmpassword_view.dart';
import 'package:shipload_app/view/screens/forgotPassword/emailotpverify_view.dart';
import 'package:shipload_app/view/screens/forgotPassword/forgotpassword_view.dart';
import 'package:shipload_app/view/screens/forgotPassword/verify_mail_otp_view.dart';
import 'package:shipload_app/view/screens/forgotPassword/verify_mail_view.dart';
import 'package:shipload_app/view/screens/onbaording/onboarding_1_view.dart';
import 'package:shipload_app/view/screens/onbaording/onboarding_2_view.dart';
import 'package:shipload_app/view/screens/profile/edit_profile_view.dart';
import 'package:shipload_app/view/screens/profile/feedback_view.dart';
import 'package:shipload_app/view/screens/profile/privacypolicy_view.dart';
import 'package:shipload_app/view/screens/profile/profile_view.dart';
import 'package:shipload_app/view/screens/profile/tnc_view.dart';
import 'package:shipload_app/view/screens/registration/registration_view.dart';
import 'package:shipload_app/view/screens/shipper/billing_address_view.dart';
import 'package:shipload_app/view/screens/shipper/edit_address_view.dart';
import 'package:shipload_app/view/screens/shipper/edit_load_view.dart';
import 'package:shipload_app/view/screens/shipper/mc_not_found.dart';
import 'package:shipload_app/view/screens/shipper/mc_result_view.dart';
import 'package:shipload_app/view/screens/shipper/new_address.dart';
import 'package:shipload_app/view/screens/shipper/payment_ddetails_view.dart';
import 'package:shipload_app/view/screens/shipper/post_load_view.dart';
import 'package:shipload_app/view/screens/shipper/search_loc_view_shipper.dart';
import 'package:shipload_app/view/screens/signin/sign_view.dart';
import 'package:shipload_app/view/screens/signin/subscription_expired.dart';
import 'package:shipload_app/view/screens/splash/splash_view.dart';

enum AppRoute {
  splash,
  onboarding1View,
  onboarding2View,
  registrationView,
  signinView,
  forgotPasswordView,
  emailOtpView,
  confirmPasswordView,
  bottomNavigationView,
  loadDetailView,
  searchLocationView,
  searchFilterView,
  profileView,
  editProfileView,
  termsAndConditionsView,
  privacyPolicyView,
  feedbackView,
  bottomNavigationShipperView,
  postLoadView,
  verifyMailView,
  verifyEmailOtpView,
  mcResultView,
  newAddressView,
  billingAddressView,
  paymentDetailsView,
  makePaymentRequestView,
  editAddressView,
  mcNotFoundView,
  editLoadView,
  searchLocShipperView,
  subscriptionView,
}

// flutter packages pub run build_runner build --delete-conflicting-outputs
final routers = [
  GoRoute(
    path: '/',
    name: AppRoute.splash.name,
    builder: (context, state) => const SplashView(),
  ),
  GoRoute(
    path: '/onboarding1View',
    name: AppRoute.onboarding1View.name,
    builder: (context, state) => const Onboarding1View(),
  ),
  GoRoute(
    path: '/onboarding2View',
    name: AppRoute.onboarding2View.name,
    builder: (context, state) => const Onboarding2View(),
  ),
  GoRoute(
    path: '/registrationView',
    name: AppRoute.registrationView.name,
    builder: (context, state) => const RegistrationView(),
  ),
  GoRoute(
    path: '/signinView',
    name: AppRoute.signinView.name,
    builder: (context, state) {
      // final int user = state.extra! as int;
      return const SigninView();
    },
  ),
  GoRoute(
    path: '/forgotPasswordView',
    name: AppRoute.forgotPasswordView.name,
    builder: (context, state) => const ForgotpasswordView(),
  ),
  GoRoute(
    path: '/emailOtpView',
    name: AppRoute.emailOtpView.name,
    builder: (context, state) => const EmailOtpView(),
  ),
  GoRoute(
    path: '/confirmPasswordView',
    name: AppRoute.confirmPasswordView.name,
    builder: (context, state) => const ConfirmPasswordView(),
  ),
  GoRoute(
    path: '/bottomNavigationView',
    name: AppRoute.bottomNavigationView.name,
    builder: (context, state) => const BottomNavigationView(),
  ),
  GoRoute(
    path: '/loadDetailView',
    name: AppRoute.loadDetailView.name,
    builder: (context, state) {
      final dynamic data = state.extra!;
      return CarrierLoadDetailView(data: data);
    },
  ),
  GoRoute(
    path: '/searchLocationView',
    name: AppRoute.searchLocationView.name,
    builder: (context, state) => const SearchLocationView(),
  ),
  GoRoute(
    path: '/searchFilterView',
    name: AppRoute.searchFilterView.name,
    builder: (context, state) => const SearchFilterView(),
  ),
  GoRoute(
    path: '/profileView',
    name: AppRoute.profileView.name,
    builder: (context, state) => const ProfileView(),
  ),
  GoRoute(
    path: '/editProfileView',
    name: AppRoute.editProfileView.name,
    builder: (context, state) => const EditProfileView(),
  ),
  GoRoute(
    path: '/termsAndConditionsView',
    name: AppRoute.termsAndConditionsView.name,
    builder: (context, state) => const TermsAndConditionsView(),
  ),
  GoRoute(
    path: '/privacyPolicyView',
    name: AppRoute.privacyPolicyView.name,
    builder: (context, state) => const PrivacyPolicyView(),
  ),
  GoRoute(
    path: '/feedbackView',
    name: AppRoute.feedbackView.name,
    builder: (context, state) => const FeedbackView(),
  ),
  GoRoute(
    path: '/bottomNavigationShipperView',
    name: AppRoute.bottomNavigationShipperView.name,
    builder: (context, state) => const BottomNavigationShipperView(),
  ),
  GoRoute(
    path: '/postLoadView',
    name: AppRoute.postLoadView.name,
    builder: (context, state) => const PostLoadView(),
  ),
  GoRoute(
    path: '/verifyMailView',
    name: AppRoute.verifyMailView.name,
    builder: (context, state) {
      final String email = state.extra! as String;
      return VerifyMailView(email: email);
    },
  ),
  GoRoute(
    path: '/verifyEmailOtpView',
    name: AppRoute.verifyEmailOtpView.name,
    builder: (context, state) => const VerifyMailOtpView(),
  ),
  GoRoute(
    path: '/mcResultView',
    name: AppRoute.mcResultView.name,
    builder: (context, state) {
      final McSearchResponse data = state.extra! as McSearchResponse;
      return MCResultView(
        data: data,
      );
    },
  ),
  GoRoute(
    path: '/newAddressView',
    name: AppRoute.newAddressView.name,
    builder: (context, state) => const NewAddressView(),
  ),
  GoRoute(
    path: '/billingAddressView',
    name: AppRoute.billingAddressView.name,
    builder: (context, state) => const BillingAddressView(),
  ),
  GoRoute(
    path: '/paymentDetailsView',
    name: AppRoute.paymentDetailsView.name,
    builder: (context, state) => const PaymentDetailsView(),
  ),
  GoRoute(
    path: '/makePaymentRequestView',
    name: AppRoute.makePaymentRequestView.name,
    builder: (context, state) => const MakePaymentRequestView(),
  ),
  GoRoute(
    path: '/editAddressView',
    name: AppRoute.editAddressView.name,
    builder: (context, state) {
      final Datum data = state.extra! as Datum;
      return EditAddressView(
        data: data,
      );
    },
  ),
  GoRoute(
    path: '/mcNotFoundView',
    name: AppRoute.mcNotFoundView.name,
    builder: (context, state) => const MCNotFound(),
  ),
  GoRoute(
    path: '/editLoadView',
    name: AppRoute.editLoadView.name,
    builder: (context, state) {
      final Map<String, dynamic> extras = state.extra! as Map<String, dynamic>;
      final dynamic data = extras['data'];
      final bool isRepost = extras['isRepost'];
      return EditLoadView(
        data: data,
        isRepost: isRepost,
      );
    },
  ),
  GoRoute(
    path: '/searchLocShipperView',
    name: AppRoute.searchLocShipperView.name,
    builder: (context, state) => const SearchLocationViewShipper(),
  ),
  GoRoute(
    path: '/subscriptionView',
    name: AppRoute.subscriptionView.name,
    builder: (context, state) => const SubscriptionExpired(),
  ),
];
