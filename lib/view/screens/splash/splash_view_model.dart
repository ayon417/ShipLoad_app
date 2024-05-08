import 'package:shipload_app/helpers/base_screen_view.dart';
import 'package:shipload_app/helpers/base_view_model.dart';

// final splashViewModel = ChangeNotifierProvider(
//     (ref) => SplashViewModel(

//       // ref.read(authRepositoryProvider))

//       );

class SplashViewModel extends BaseViewModel<BaseScreenView> {
  // final AuthRepo _authRepo;
  // SplashViewModel(this._authRepo);
  // final UserDetailService _userDetailService = getIt<UserDetailService>();

  // UserDetailResponse? _userDetailResponse;
  // UserDetailResponse? get userDetailResponse => _userDetailResponse;

  // void showSnackbar(String message) {
  //   view?.showSnackbar("wohooo!!!!");
  // }

  // void checkToken() {
  //   bool? isOnboardingViewed = false;
  //   String? getUserId = "";
  //   String? token = "";
  //   getUserId = SharedPreferenceService.getString(AppConstants.userIdPref);
  //   AppConstants.userId = getUserId ?? "";

  //   isOnboardingViewed =
  //       SharedPreferenceService.getBool(AppConstants.isOnboardingViewed);
  //   token = SharedPreferenceService.getString(AppConstants.authToken);
  //   AppConstants.token = token ?? "";
  //   if (isOnboardingViewed == null || isOnboardingViewed == false) {
  //     navigateToOnBoarding();
  //   } else if (isOnboardingViewed == true &&
  //       AppConstants.userId != "" &&
  //       AppConstants.token != "") {
  //     getUserDetail();
  //     navigateToDashboard();
  //   } else {
  //     navigationToLogin();
  //   }
  //   notifyListeners();
  // }

  // Future<void> getUserDetail() async {
  //   if (AppConstants.userId.isEmpty ||
  //       AppConstants.userId == "" ||
  //       AppConstants.token.isEmpty ||
  //       AppConstants.token == "") {
  //     return;
  //   } else {
  //     toggleLoading();
  //     await _authRepo.getUserDetail(AppConstants.userId).then(
  //           (value) => value.fold((l) {
  //             view?.showSnackbar(l.message, color: Colors.red);
  //           }, (r) {
  //             _userDetailResponse = r;
  //             _userDetailService.setuserDetail(_userDetailResponse);
  //           }),
  //         );
  //   }
  //   toggleLoading();
  // }
}
