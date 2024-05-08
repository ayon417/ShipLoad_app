import 'package:shipload_app/data/remote/auth/models/login.dart';
import 'package:shipload_app/helpers/base_view_model.dart';

class UserDetailService extends BaseViewModel {
  LoginResponse? _userDetailResponse;
  LoginResponse? get userDetailResponse => _userDetailResponse;

  void setuserDetail(LoginResponse? detailResponse) {
    _userDetailResponse = detailResponse;
    notifyListeners();
  }
}
