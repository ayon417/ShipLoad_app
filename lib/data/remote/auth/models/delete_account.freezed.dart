// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeleteAccountResponse _$DeleteAccountResponseFromJson(
    Map<String, dynamic> json) {
  return _DeleteAccountResponse.fromJson(json);
}

/// @nodoc
mixin _$DeleteAccountResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteAccountResponseCopyWith<DeleteAccountResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteAccountResponseCopyWith<$Res> {
  factory $DeleteAccountResponseCopyWith(DeleteAccountResponse value,
          $Res Function(DeleteAccountResponse) then) =
      _$DeleteAccountResponseCopyWithImpl<$Res, DeleteAccountResponse>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$DeleteAccountResponseCopyWithImpl<$Res,
        $Val extends DeleteAccountResponse>
    implements $DeleteAccountResponseCopyWith<$Res> {
  _$DeleteAccountResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DeleteAccountResponseCopyWith<$Res>
    implements $DeleteAccountResponseCopyWith<$Res> {
  factory _$$_DeleteAccountResponseCopyWith(_$_DeleteAccountResponse value,
          $Res Function(_$_DeleteAccountResponse) then) =
      __$$_DeleteAccountResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_DeleteAccountResponseCopyWithImpl<$Res>
    extends _$DeleteAccountResponseCopyWithImpl<$Res, _$_DeleteAccountResponse>
    implements _$$_DeleteAccountResponseCopyWith<$Res> {
  __$$_DeleteAccountResponseCopyWithImpl(_$_DeleteAccountResponse _value,
      $Res Function(_$_DeleteAccountResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_DeleteAccountResponse(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      isSuccess: freezed == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeleteAccountResponse implements _DeleteAccountResponse {
  const _$_DeleteAccountResponse(
      {this.code, this.message, this.isSuccess, this.data});

  factory _$_DeleteAccountResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DeleteAccountResponseFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final bool? isSuccess;
  @override
  final Data? data;

  @override
  String toString() {
    return 'DeleteAccountResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteAccountResponse &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, isSuccess, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteAccountResponseCopyWith<_$_DeleteAccountResponse> get copyWith =>
      __$$_DeleteAccountResponseCopyWithImpl<_$_DeleteAccountResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeleteAccountResponseToJson(
      this,
    );
  }
}

abstract class _DeleteAccountResponse implements DeleteAccountResponse {
  const factory _DeleteAccountResponse(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final Data? data}) = _$_DeleteAccountResponse;

  factory _DeleteAccountResponse.fromJson(Map<String, dynamic> json) =
      _$_DeleteAccountResponse.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  bool? get isSuccess;
  @override
  Data? get data;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteAccountResponseCopyWith<_$_DeleteAccountResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String? get fullName => throw _privateConstructorUsedError;
  String? get profilePicUrl => throw _privateConstructorUsedError;
  String? get mcNumber => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  bool? get isEmailVerified => throw _privateConstructorUsedError;
  dynamic get passwordResetOtp => throw _privateConstructorUsedError;
  String? get passwordResetTokenUrl => throw _privateConstructorUsedError;
  List<dynamic>? get savedLoad => throw _privateConstructorUsedError;
  List<dynamic>? get savedFilter => throw _privateConstructorUsedError;
  bool? get isMcNumberVerified => throw _privateConstructorUsedError;
  String? get safetyScore => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get companyName => throw _privateConstructorUsedError;
  String? get corporateEmail => throw _privateConstructorUsedError;
  String? get companyWebsite => throw _privateConstructorUsedError;
  String? get stripeCustomerId => throw _privateConstructorUsedError;
  List<dynamic>? get activeShippingAddress =>
      throw _privateConstructorUsedError;
  List<dynamic>? get bankAccount => throw _privateConstructorUsedError;
  List<dynamic>? get recentSearchedLocations =>
      throw _privateConstructorUsedError;
  String? get otp => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {String? fullName,
      String? profilePicUrl,
      String? mcNumber,
      String? role,
      bool? isEmailVerified,
      dynamic passwordResetOtp,
      String? passwordResetTokenUrl,
      List<dynamic>? savedLoad,
      List<dynamic>? savedFilter,
      bool? isMcNumberVerified,
      String? safetyScore,
      String? email,
      String? location,
      String? phoneNumber,
      String? companyName,
      String? corporateEmail,
      String? companyWebsite,
      String? stripeCustomerId,
      List<dynamic>? activeShippingAddress,
      List<dynamic>? bankAccount,
      List<dynamic>? recentSearchedLocations,
      String? otp,
      String? id});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? profilePicUrl = freezed,
    Object? mcNumber = freezed,
    Object? role = freezed,
    Object? isEmailVerified = freezed,
    Object? passwordResetOtp = freezed,
    Object? passwordResetTokenUrl = freezed,
    Object? savedLoad = freezed,
    Object? savedFilter = freezed,
    Object? isMcNumberVerified = freezed,
    Object? safetyScore = freezed,
    Object? email = freezed,
    Object? location = freezed,
    Object? phoneNumber = freezed,
    Object? companyName = freezed,
    Object? corporateEmail = freezed,
    Object? companyWebsite = freezed,
    Object? stripeCustomerId = freezed,
    Object? activeShippingAddress = freezed,
    Object? bankAccount = freezed,
    Object? recentSearchedLocations = freezed,
    Object? otp = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicUrl: freezed == profilePicUrl
          ? _value.profilePicUrl
          : profilePicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mcNumber: freezed == mcNumber
          ? _value.mcNumber
          : mcNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      passwordResetOtp: freezed == passwordResetOtp
          ? _value.passwordResetOtp
          : passwordResetOtp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      passwordResetTokenUrl: freezed == passwordResetTokenUrl
          ? _value.passwordResetTokenUrl
          : passwordResetTokenUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      savedLoad: freezed == savedLoad
          ? _value.savedLoad
          : savedLoad // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      savedFilter: freezed == savedFilter
          ? _value.savedFilter
          : savedFilter // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      isMcNumberVerified: freezed == isMcNumberVerified
          ? _value.isMcNumberVerified
          : isMcNumberVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      safetyScore: freezed == safetyScore
          ? _value.safetyScore
          : safetyScore // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      corporateEmail: freezed == corporateEmail
          ? _value.corporateEmail
          : corporateEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      companyWebsite: freezed == companyWebsite
          ? _value.companyWebsite
          : companyWebsite // ignore: cast_nullable_to_non_nullable
              as String?,
      stripeCustomerId: freezed == stripeCustomerId
          ? _value.stripeCustomerId
          : stripeCustomerId // ignore: cast_nullable_to_non_nullable
              as String?,
      activeShippingAddress: freezed == activeShippingAddress
          ? _value.activeShippingAddress
          : activeShippingAddress // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      bankAccount: freezed == bankAccount
          ? _value.bankAccount
          : bankAccount // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      recentSearchedLocations: freezed == recentSearchedLocations
          ? _value.recentSearchedLocations
          : recentSearchedLocations // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fullName,
      String? profilePicUrl,
      String? mcNumber,
      String? role,
      bool? isEmailVerified,
      dynamic passwordResetOtp,
      String? passwordResetTokenUrl,
      List<dynamic>? savedLoad,
      List<dynamic>? savedFilter,
      bool? isMcNumberVerified,
      String? safetyScore,
      String? email,
      String? location,
      String? phoneNumber,
      String? companyName,
      String? corporateEmail,
      String? companyWebsite,
      String? stripeCustomerId,
      List<dynamic>? activeShippingAddress,
      List<dynamic>? bankAccount,
      List<dynamic>? recentSearchedLocations,
      String? otp,
      String? id});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? profilePicUrl = freezed,
    Object? mcNumber = freezed,
    Object? role = freezed,
    Object? isEmailVerified = freezed,
    Object? passwordResetOtp = freezed,
    Object? passwordResetTokenUrl = freezed,
    Object? savedLoad = freezed,
    Object? savedFilter = freezed,
    Object? isMcNumberVerified = freezed,
    Object? safetyScore = freezed,
    Object? email = freezed,
    Object? location = freezed,
    Object? phoneNumber = freezed,
    Object? companyName = freezed,
    Object? corporateEmail = freezed,
    Object? companyWebsite = freezed,
    Object? stripeCustomerId = freezed,
    Object? activeShippingAddress = freezed,
    Object? bankAccount = freezed,
    Object? recentSearchedLocations = freezed,
    Object? otp = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_Data(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicUrl: freezed == profilePicUrl
          ? _value.profilePicUrl
          : profilePicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mcNumber: freezed == mcNumber
          ? _value.mcNumber
          : mcNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      passwordResetOtp: freezed == passwordResetOtp
          ? _value.passwordResetOtp
          : passwordResetOtp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      passwordResetTokenUrl: freezed == passwordResetTokenUrl
          ? _value.passwordResetTokenUrl
          : passwordResetTokenUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      savedLoad: freezed == savedLoad
          ? _value._savedLoad
          : savedLoad // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      savedFilter: freezed == savedFilter
          ? _value._savedFilter
          : savedFilter // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      isMcNumberVerified: freezed == isMcNumberVerified
          ? _value.isMcNumberVerified
          : isMcNumberVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      safetyScore: freezed == safetyScore
          ? _value.safetyScore
          : safetyScore // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      corporateEmail: freezed == corporateEmail
          ? _value.corporateEmail
          : corporateEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      companyWebsite: freezed == companyWebsite
          ? _value.companyWebsite
          : companyWebsite // ignore: cast_nullable_to_non_nullable
              as String?,
      stripeCustomerId: freezed == stripeCustomerId
          ? _value.stripeCustomerId
          : stripeCustomerId // ignore: cast_nullable_to_non_nullable
              as String?,
      activeShippingAddress: freezed == activeShippingAddress
          ? _value._activeShippingAddress
          : activeShippingAddress // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      bankAccount: freezed == bankAccount
          ? _value._bankAccount
          : bankAccount // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      recentSearchedLocations: freezed == recentSearchedLocations
          ? _value._recentSearchedLocations
          : recentSearchedLocations // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {this.fullName,
      this.profilePicUrl,
      this.mcNumber,
      this.role,
      this.isEmailVerified,
      this.passwordResetOtp,
      this.passwordResetTokenUrl,
      final List<dynamic>? savedLoad,
      final List<dynamic>? savedFilter,
      this.isMcNumberVerified,
      this.safetyScore,
      this.email,
      this.location,
      this.phoneNumber,
      this.companyName,
      this.corporateEmail,
      this.companyWebsite,
      this.stripeCustomerId,
      final List<dynamic>? activeShippingAddress,
      final List<dynamic>? bankAccount,
      final List<dynamic>? recentSearchedLocations,
      this.otp,
      this.id})
      : _savedLoad = savedLoad,
        _savedFilter = savedFilter,
        _activeShippingAddress = activeShippingAddress,
        _bankAccount = bankAccount,
        _recentSearchedLocations = recentSearchedLocations;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final String? fullName;
  @override
  final String? profilePicUrl;
  @override
  final String? mcNumber;
  @override
  final String? role;
  @override
  final bool? isEmailVerified;
  @override
  final dynamic passwordResetOtp;
  @override
  final String? passwordResetTokenUrl;
  final List<dynamic>? _savedLoad;
  @override
  List<dynamic>? get savedLoad {
    final value = _savedLoad;
    if (value == null) return null;
    if (_savedLoad is EqualUnmodifiableListView) return _savedLoad;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _savedFilter;
  @override
  List<dynamic>? get savedFilter {
    final value = _savedFilter;
    if (value == null) return null;
    if (_savedFilter is EqualUnmodifiableListView) return _savedFilter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isMcNumberVerified;
  @override
  final String? safetyScore;
  @override
  final String? email;
  @override
  final String? location;
  @override
  final String? phoneNumber;
  @override
  final String? companyName;
  @override
  final String? corporateEmail;
  @override
  final String? companyWebsite;
  @override
  final String? stripeCustomerId;
  final List<dynamic>? _activeShippingAddress;
  @override
  List<dynamic>? get activeShippingAddress {
    final value = _activeShippingAddress;
    if (value == null) return null;
    if (_activeShippingAddress is EqualUnmodifiableListView)
      return _activeShippingAddress;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _bankAccount;
  @override
  List<dynamic>? get bankAccount {
    final value = _bankAccount;
    if (value == null) return null;
    if (_bankAccount is EqualUnmodifiableListView) return _bankAccount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _recentSearchedLocations;
  @override
  List<dynamic>? get recentSearchedLocations {
    final value = _recentSearchedLocations;
    if (value == null) return null;
    if (_recentSearchedLocations is EqualUnmodifiableListView)
      return _recentSearchedLocations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? otp;
  @override
  final String? id;

  @override
  String toString() {
    return 'Data(fullName: $fullName, profilePicUrl: $profilePicUrl, mcNumber: $mcNumber, role: $role, isEmailVerified: $isEmailVerified, passwordResetOtp: $passwordResetOtp, passwordResetTokenUrl: $passwordResetTokenUrl, savedLoad: $savedLoad, savedFilter: $savedFilter, isMcNumberVerified: $isMcNumberVerified, safetyScore: $safetyScore, email: $email, location: $location, phoneNumber: $phoneNumber, companyName: $companyName, corporateEmail: $corporateEmail, companyWebsite: $companyWebsite, stripeCustomerId: $stripeCustomerId, activeShippingAddress: $activeShippingAddress, bankAccount: $bankAccount, recentSearchedLocations: $recentSearchedLocations, otp: $otp, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.profilePicUrl, profilePicUrl) ||
                other.profilePicUrl == profilePicUrl) &&
            (identical(other.mcNumber, mcNumber) ||
                other.mcNumber == mcNumber) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            const DeepCollectionEquality()
                .equals(other.passwordResetOtp, passwordResetOtp) &&
            (identical(other.passwordResetTokenUrl, passwordResetTokenUrl) ||
                other.passwordResetTokenUrl == passwordResetTokenUrl) &&
            const DeepCollectionEquality()
                .equals(other._savedLoad, _savedLoad) &&
            const DeepCollectionEquality()
                .equals(other._savedFilter, _savedFilter) &&
            (identical(other.isMcNumberVerified, isMcNumberVerified) ||
                other.isMcNumberVerified == isMcNumberVerified) &&
            (identical(other.safetyScore, safetyScore) ||
                other.safetyScore == safetyScore) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.corporateEmail, corporateEmail) ||
                other.corporateEmail == corporateEmail) &&
            (identical(other.companyWebsite, companyWebsite) ||
                other.companyWebsite == companyWebsite) &&
            (identical(other.stripeCustomerId, stripeCustomerId) ||
                other.stripeCustomerId == stripeCustomerId) &&
            const DeepCollectionEquality()
                .equals(other._activeShippingAddress, _activeShippingAddress) &&
            const DeepCollectionEquality()
                .equals(other._bankAccount, _bankAccount) &&
            const DeepCollectionEquality().equals(
                other._recentSearchedLocations, _recentSearchedLocations) &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        fullName,
        profilePicUrl,
        mcNumber,
        role,
        isEmailVerified,
        const DeepCollectionEquality().hash(passwordResetOtp),
        passwordResetTokenUrl,
        const DeepCollectionEquality().hash(_savedLoad),
        const DeepCollectionEquality().hash(_savedFilter),
        isMcNumberVerified,
        safetyScore,
        email,
        location,
        phoneNumber,
        companyName,
        corporateEmail,
        companyWebsite,
        stripeCustomerId,
        const DeepCollectionEquality().hash(_activeShippingAddress),
        const DeepCollectionEquality().hash(_bankAccount),
        const DeepCollectionEquality().hash(_recentSearchedLocations),
        otp,
        id
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {final String? fullName,
      final String? profilePicUrl,
      final String? mcNumber,
      final String? role,
      final bool? isEmailVerified,
      final dynamic passwordResetOtp,
      final String? passwordResetTokenUrl,
      final List<dynamic>? savedLoad,
      final List<dynamic>? savedFilter,
      final bool? isMcNumberVerified,
      final String? safetyScore,
      final String? email,
      final String? location,
      final String? phoneNumber,
      final String? companyName,
      final String? corporateEmail,
      final String? companyWebsite,
      final String? stripeCustomerId,
      final List<dynamic>? activeShippingAddress,
      final List<dynamic>? bankAccount,
      final List<dynamic>? recentSearchedLocations,
      final String? otp,
      final String? id}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  String? get fullName;
  @override
  String? get profilePicUrl;
  @override
  String? get mcNumber;
  @override
  String? get role;
  @override
  bool? get isEmailVerified;
  @override
  dynamic get passwordResetOtp;
  @override
  String? get passwordResetTokenUrl;
  @override
  List<dynamic>? get savedLoad;
  @override
  List<dynamic>? get savedFilter;
  @override
  bool? get isMcNumberVerified;
  @override
  String? get safetyScore;
  @override
  String? get email;
  @override
  String? get location;
  @override
  String? get phoneNumber;
  @override
  String? get companyName;
  @override
  String? get corporateEmail;
  @override
  String? get companyWebsite;
  @override
  String? get stripeCustomerId;
  @override
  List<dynamic>? get activeShippingAddress;
  @override
  List<dynamic>? get bankAccount;
  @override
  List<dynamic>? get recentSearchedLocations;
  @override
  String? get otp;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}
