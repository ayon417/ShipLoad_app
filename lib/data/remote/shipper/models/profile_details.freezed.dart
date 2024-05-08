// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileDetailsResponse _$ProfileDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return _ProfileDetailsResponse.fromJson(json);
}

/// @nodoc
mixin _$ProfileDetailsResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileDetailsResponseCopyWith<ProfileDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDetailsResponseCopyWith<$Res> {
  factory $ProfileDetailsResponseCopyWith(ProfileDetailsResponse value,
          $Res Function(ProfileDetailsResponse) then) =
      _$ProfileDetailsResponseCopyWithImpl<$Res, ProfileDetailsResponse>;
  @useResult
  $Res call({int code, String message, bool isSuccess, Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$ProfileDetailsResponseCopyWithImpl<$Res,
        $Val extends ProfileDetailsResponse>
    implements $ProfileDetailsResponseCopyWith<$Res> {
  _$ProfileDetailsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? isSuccess = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProfileDetailsResponseCopyWith<$Res>
    implements $ProfileDetailsResponseCopyWith<$Res> {
  factory _$$_ProfileDetailsResponseCopyWith(_$_ProfileDetailsResponse value,
          $Res Function(_$_ProfileDetailsResponse) then) =
      __$$_ProfileDetailsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, bool isSuccess, Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ProfileDetailsResponseCopyWithImpl<$Res>
    extends _$ProfileDetailsResponseCopyWithImpl<$Res,
        _$_ProfileDetailsResponse>
    implements _$$_ProfileDetailsResponseCopyWith<$Res> {
  __$$_ProfileDetailsResponseCopyWithImpl(_$_ProfileDetailsResponse _value,
      $Res Function(_$_ProfileDetailsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? isSuccess = null,
    Object? data = null,
  }) {
    return _then(_$_ProfileDetailsResponse(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileDetailsResponse implements _ProfileDetailsResponse {
  const _$_ProfileDetailsResponse(
      {required this.code,
      required this.message,
      required this.isSuccess,
      required this.data});

  factory _$_ProfileDetailsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileDetailsResponseFromJson(json);

  @override
  final int code;
  @override
  final String message;
  @override
  final bool isSuccess;
  @override
  final Data data;

  @override
  String toString() {
    return 'ProfileDetailsResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileDetailsResponse &&
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
  _$$_ProfileDetailsResponseCopyWith<_$_ProfileDetailsResponse> get copyWith =>
      __$$_ProfileDetailsResponseCopyWithImpl<_$_ProfileDetailsResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileDetailsResponseToJson(
      this,
    );
  }
}

abstract class _ProfileDetailsResponse implements ProfileDetailsResponse {
  const factory _ProfileDetailsResponse(
      {required final int code,
      required final String message,
      required final bool isSuccess,
      required final Data data}) = _$_ProfileDetailsResponse;

  factory _ProfileDetailsResponse.fromJson(Map<String, dynamic> json) =
      _$_ProfileDetailsResponse.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  bool get isSuccess;
  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileDetailsResponseCopyWith<_$_ProfileDetailsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String? get profilePicUrl => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  bool get isEmailVerified => throw _privateConstructorUsedError;
  dynamic get passwordResetOtp => throw _privateConstructorUsedError;
  String get passwordResetTokenUrl => throw _privateConstructorUsedError;
  List<dynamic> get savedLoad => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String? get companyName => throw _privateConstructorUsedError;
  String? get corporateEmail => throw _privateConstructorUsedError;
  bool? get premiumUser => throw _privateConstructorUsedError;
  bool? get trialUser => throw _privateConstructorUsedError;

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
      {String? profilePicUrl,
      String role,
      bool isEmailVerified,
      dynamic passwordResetOtp,
      String passwordResetTokenUrl,
      List<dynamic> savedLoad,
      String fullName,
      String email,
      String location,
      String phoneNumber,
      String id,
      String? companyName,
      String? corporateEmail,
      bool? premiumUser,
      bool? trialUser});
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
    Object? profilePicUrl = freezed,
    Object? role = null,
    Object? isEmailVerified = null,
    Object? passwordResetOtp = freezed,
    Object? passwordResetTokenUrl = null,
    Object? savedLoad = null,
    Object? fullName = null,
    Object? email = null,
    Object? location = null,
    Object? phoneNumber = null,
    Object? id = null,
    Object? companyName = freezed,
    Object? corporateEmail = freezed,
    Object? premiumUser = freezed,
    Object? trialUser = freezed,
  }) {
    return _then(_value.copyWith(
      profilePicUrl: freezed == profilePicUrl
          ? _value.profilePicUrl
          : profilePicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      isEmailVerified: null == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordResetOtp: freezed == passwordResetOtp
          ? _value.passwordResetOtp
          : passwordResetOtp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      passwordResetTokenUrl: null == passwordResetTokenUrl
          ? _value.passwordResetTokenUrl
          : passwordResetTokenUrl // ignore: cast_nullable_to_non_nullable
              as String,
      savedLoad: null == savedLoad
          ? _value.savedLoad
          : savedLoad // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      corporateEmail: freezed == corporateEmail
          ? _value.corporateEmail
          : corporateEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      premiumUser: freezed == premiumUser
          ? _value.premiumUser
          : premiumUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      trialUser: freezed == trialUser
          ? _value.trialUser
          : trialUser // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      {String? profilePicUrl,
      String role,
      bool isEmailVerified,
      dynamic passwordResetOtp,
      String passwordResetTokenUrl,
      List<dynamic> savedLoad,
      String fullName,
      String email,
      String location,
      String phoneNumber,
      String id,
      String? companyName,
      String? corporateEmail,
      bool? premiumUser,
      bool? trialUser});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profilePicUrl = freezed,
    Object? role = null,
    Object? isEmailVerified = null,
    Object? passwordResetOtp = freezed,
    Object? passwordResetTokenUrl = null,
    Object? savedLoad = null,
    Object? fullName = null,
    Object? email = null,
    Object? location = null,
    Object? phoneNumber = null,
    Object? id = null,
    Object? companyName = freezed,
    Object? corporateEmail = freezed,
    Object? premiumUser = freezed,
    Object? trialUser = freezed,
  }) {
    return _then(_$_Data(
      profilePicUrl: freezed == profilePicUrl
          ? _value.profilePicUrl
          : profilePicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      isEmailVerified: null == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordResetOtp: freezed == passwordResetOtp
          ? _value.passwordResetOtp
          : passwordResetOtp // ignore: cast_nullable_to_non_nullable
              as dynamic,
      passwordResetTokenUrl: null == passwordResetTokenUrl
          ? _value.passwordResetTokenUrl
          : passwordResetTokenUrl // ignore: cast_nullable_to_non_nullable
              as String,
      savedLoad: null == savedLoad
          ? _value._savedLoad
          : savedLoad // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      corporateEmail: freezed == corporateEmail
          ? _value.corporateEmail
          : corporateEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      premiumUser: freezed == premiumUser
          ? _value.premiumUser
          : premiumUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      trialUser: freezed == trialUser
          ? _value.trialUser
          : trialUser // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {this.profilePicUrl,
      required this.role,
      required this.isEmailVerified,
      required this.passwordResetOtp,
      required this.passwordResetTokenUrl,
      required final List<dynamic> savedLoad,
      required this.fullName,
      required this.email,
      required this.location,
      required this.phoneNumber,
      required this.id,
      this.companyName,
      this.corporateEmail,
      this.premiumUser,
      this.trialUser})
      : _savedLoad = savedLoad;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final String? profilePicUrl;
  @override
  final String role;
  @override
  final bool isEmailVerified;
  @override
  final dynamic passwordResetOtp;
  @override
  final String passwordResetTokenUrl;
  final List<dynamic> _savedLoad;
  @override
  List<dynamic> get savedLoad {
    if (_savedLoad is EqualUnmodifiableListView) return _savedLoad;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_savedLoad);
  }

  @override
  final String fullName;
  @override
  final String email;
  @override
  final String location;
  @override
  final String phoneNumber;
  @override
  final String id;
  @override
  final String? companyName;
  @override
  final String? corporateEmail;
  @override
  final bool? premiumUser;
  @override
  final bool? trialUser;

  @override
  String toString() {
    return 'Data(profilePicUrl: $profilePicUrl, role: $role, isEmailVerified: $isEmailVerified, passwordResetOtp: $passwordResetOtp, passwordResetTokenUrl: $passwordResetTokenUrl, savedLoad: $savedLoad, fullName: $fullName, email: $email, location: $location, phoneNumber: $phoneNumber, id: $id, companyName: $companyName, corporateEmail: $corporateEmail, premiumUser: $premiumUser, trialUser: $trialUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            (identical(other.profilePicUrl, profilePicUrl) ||
                other.profilePicUrl == profilePicUrl) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            const DeepCollectionEquality()
                .equals(other.passwordResetOtp, passwordResetOtp) &&
            (identical(other.passwordResetTokenUrl, passwordResetTokenUrl) ||
                other.passwordResetTokenUrl == passwordResetTokenUrl) &&
            const DeepCollectionEquality()
                .equals(other._savedLoad, _savedLoad) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.corporateEmail, corporateEmail) ||
                other.corporateEmail == corporateEmail) &&
            (identical(other.premiumUser, premiumUser) ||
                other.premiumUser == premiumUser) &&
            (identical(other.trialUser, trialUser) ||
                other.trialUser == trialUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      profilePicUrl,
      role,
      isEmailVerified,
      const DeepCollectionEquality().hash(passwordResetOtp),
      passwordResetTokenUrl,
      const DeepCollectionEquality().hash(_savedLoad),
      fullName,
      email,
      location,
      phoneNumber,
      id,
      companyName,
      corporateEmail,
      premiumUser,
      trialUser);

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
      {final String? profilePicUrl,
      required final String role,
      required final bool isEmailVerified,
      required final dynamic passwordResetOtp,
      required final String passwordResetTokenUrl,
      required final List<dynamic> savedLoad,
      required final String fullName,
      required final String email,
      required final String location,
      required final String phoneNumber,
      required final String id,
      final String? companyName,
      final String? corporateEmail,
      final bool? premiumUser,
      final bool? trialUser}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  String? get profilePicUrl;
  @override
  String get role;
  @override
  bool get isEmailVerified;
  @override
  dynamic get passwordResetOtp;
  @override
  String get passwordResetTokenUrl;
  @override
  List<dynamic> get savedLoad;
  @override
  String get fullName;
  @override
  String get email;
  @override
  String get location;
  @override
  String get phoneNumber;
  @override
  String get id;
  @override
  String? get companyName;
  @override
  String? get corporateEmail;
  @override
  bool? get premiumUser;
  @override
  bool? get trialUser;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}
