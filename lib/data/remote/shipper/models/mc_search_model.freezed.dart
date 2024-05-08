// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mc_search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

McSearchRequest _$McSearchRequestFromJson(Map<String, dynamic> json) {
  return _McSearchRequest.fromJson(json);
}

/// @nodoc
mixin _$McSearchRequest {
  String? get mcNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $McSearchRequestCopyWith<McSearchRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $McSearchRequestCopyWith<$Res> {
  factory $McSearchRequestCopyWith(
          McSearchRequest value, $Res Function(McSearchRequest) then) =
      _$McSearchRequestCopyWithImpl<$Res, McSearchRequest>;
  @useResult
  $Res call({String? mcNumber});
}

/// @nodoc
class _$McSearchRequestCopyWithImpl<$Res, $Val extends McSearchRequest>
    implements $McSearchRequestCopyWith<$Res> {
  _$McSearchRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mcNumber = freezed,
  }) {
    return _then(_value.copyWith(
      mcNumber: freezed == mcNumber
          ? _value.mcNumber
          : mcNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_McSearchRequestCopyWith<$Res>
    implements $McSearchRequestCopyWith<$Res> {
  factory _$$_McSearchRequestCopyWith(
          _$_McSearchRequest value, $Res Function(_$_McSearchRequest) then) =
      __$$_McSearchRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? mcNumber});
}

/// @nodoc
class __$$_McSearchRequestCopyWithImpl<$Res>
    extends _$McSearchRequestCopyWithImpl<$Res, _$_McSearchRequest>
    implements _$$_McSearchRequestCopyWith<$Res> {
  __$$_McSearchRequestCopyWithImpl(
      _$_McSearchRequest _value, $Res Function(_$_McSearchRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mcNumber = freezed,
  }) {
    return _then(_$_McSearchRequest(
      mcNumber: freezed == mcNumber
          ? _value.mcNumber
          : mcNumber // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_McSearchRequest implements _McSearchRequest {
  const _$_McSearchRequest({this.mcNumber});

  factory _$_McSearchRequest.fromJson(Map<String, dynamic> json) =>
      _$$_McSearchRequestFromJson(json);

  @override
  final String? mcNumber;

  @override
  String toString() {
    return 'McSearchRequest(mcNumber: $mcNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_McSearchRequest &&
            (identical(other.mcNumber, mcNumber) ||
                other.mcNumber == mcNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mcNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_McSearchRequestCopyWith<_$_McSearchRequest> get copyWith =>
      __$$_McSearchRequestCopyWithImpl<_$_McSearchRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_McSearchRequestToJson(
      this,
    );
  }
}

abstract class _McSearchRequest implements McSearchRequest {
  const factory _McSearchRequest({final String? mcNumber}) = _$_McSearchRequest;

  factory _McSearchRequest.fromJson(Map<String, dynamic> json) =
      _$_McSearchRequest.fromJson;

  @override
  String? get mcNumber;
  @override
  @JsonKey(ignore: true)
  _$$_McSearchRequestCopyWith<_$_McSearchRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

McSearchResponse _$McSearchResponseFromJson(Map<String, dynamic> json) {
  return _McSearchResponse.fromJson(json);
}

/// @nodoc
mixin _$McSearchResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $McSearchResponseCopyWith<McSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $McSearchResponseCopyWith<$Res> {
  factory $McSearchResponseCopyWith(
          McSearchResponse value, $Res Function(McSearchResponse) then) =
      _$McSearchResponseCopyWithImpl<$Res, McSearchResponse>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$McSearchResponseCopyWithImpl<$Res, $Val extends McSearchResponse>
    implements $McSearchResponseCopyWith<$Res> {
  _$McSearchResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_McSearchResponseCopyWith<$Res>
    implements $McSearchResponseCopyWith<$Res> {
  factory _$$_McSearchResponseCopyWith(
          _$_McSearchResponse value, $Res Function(_$_McSearchResponse) then) =
      __$$_McSearchResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_McSearchResponseCopyWithImpl<$Res>
    extends _$McSearchResponseCopyWithImpl<$Res, _$_McSearchResponse>
    implements _$$_McSearchResponseCopyWith<$Res> {
  __$$_McSearchResponseCopyWithImpl(
      _$_McSearchResponse _value, $Res Function(_$_McSearchResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_McSearchResponse(
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
class _$_McSearchResponse implements _McSearchResponse {
  const _$_McSearchResponse(
      {this.code, this.message, this.isSuccess, this.data});

  factory _$_McSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$$_McSearchResponseFromJson(json);

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
    return 'McSearchResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_McSearchResponse &&
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
  _$$_McSearchResponseCopyWith<_$_McSearchResponse> get copyWith =>
      __$$_McSearchResponseCopyWithImpl<_$_McSearchResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_McSearchResponseToJson(
      this,
    );
  }
}

abstract class _McSearchResponse implements McSearchResponse {
  const factory _McSearchResponse(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final Data? data}) = _$_McSearchResponse;

  factory _McSearchResponse.fromJson(Map<String, dynamic> json) =
      _$_McSearchResponse.fromJson;

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
  _$$_McSearchResponseCopyWith<_$_McSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String? get profilePicUrl => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  bool? get isEmailVerified => throw _privateConstructorUsedError;
  dynamic get passwordResetOtp => throw _privateConstructorUsedError;
  String? get passwordResetTokenUrl => throw _privateConstructorUsedError;
  List<dynamic>? get savedLoad => throw _privateConstructorUsedError;
  List<dynamic>? get savedFilter => throw _privateConstructorUsedError;
  bool? get isMcNumberVerified => throw _privateConstructorUsedError;
  String? get safetyScore => throw _privateConstructorUsedError;
  String? get riskScore => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get companyName => throw _privateConstructorUsedError;
  String? get mcNumber => throw _privateConstructorUsedError;
  String? get dotNumber => throw _privateConstructorUsedError;
  String? get stripeCustomerId => throw _privateConstructorUsedError;
  List<dynamic>? get activeShippingAddress =>
      throw _privateConstructorUsedError;
  List<dynamic>? get bankAccount => throw _privateConstructorUsedError;
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
      {String? profilePicUrl,
      String? role,
      bool? isEmailVerified,
      dynamic passwordResetOtp,
      String? passwordResetTokenUrl,
      List<dynamic>? savedLoad,
      List<dynamic>? savedFilter,
      bool? isMcNumberVerified,
      String? safetyScore,
      String? riskScore,
      String? fullName,
      String? email,
      String? location,
      String? phoneNumber,
      String? companyName,
      String? mcNumber,
      String? dotNumber,
      String? stripeCustomerId,
      List<dynamic>? activeShippingAddress,
      List<dynamic>? bankAccount,
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
    Object? profilePicUrl = freezed,
    Object? role = freezed,
    Object? isEmailVerified = freezed,
    Object? passwordResetOtp = freezed,
    Object? passwordResetTokenUrl = freezed,
    Object? savedLoad = freezed,
    Object? savedFilter = freezed,
    Object? isMcNumberVerified = freezed,
    Object? safetyScore = freezed,
    Object? riskScore = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? location = freezed,
    Object? phoneNumber = freezed,
    Object? companyName = freezed,
    Object? mcNumber = freezed,
    Object? dotNumber = freezed,
    Object? stripeCustomerId = freezed,
    Object? activeShippingAddress = freezed,
    Object? bankAccount = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      profilePicUrl: freezed == profilePicUrl
          ? _value.profilePicUrl
          : profilePicUrl // ignore: cast_nullable_to_non_nullable
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
      riskScore: freezed == riskScore
          ? _value.riskScore
          : riskScore // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
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
      mcNumber: freezed == mcNumber
          ? _value.mcNumber
          : mcNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      dotNumber: freezed == dotNumber
          ? _value.dotNumber
          : dotNumber // ignore: cast_nullable_to_non_nullable
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
      {String? profilePicUrl,
      String? role,
      bool? isEmailVerified,
      dynamic passwordResetOtp,
      String? passwordResetTokenUrl,
      List<dynamic>? savedLoad,
      List<dynamic>? savedFilter,
      bool? isMcNumberVerified,
      String? safetyScore,
      String? riskScore,
      String? fullName,
      String? email,
      String? location,
      String? phoneNumber,
      String? companyName,
      String? mcNumber,
      String? dotNumber,
      String? stripeCustomerId,
      List<dynamic>? activeShippingAddress,
      List<dynamic>? bankAccount,
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
    Object? profilePicUrl = freezed,
    Object? role = freezed,
    Object? isEmailVerified = freezed,
    Object? passwordResetOtp = freezed,
    Object? passwordResetTokenUrl = freezed,
    Object? savedLoad = freezed,
    Object? savedFilter = freezed,
    Object? isMcNumberVerified = freezed,
    Object? safetyScore = freezed,
    Object? riskScore = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? location = freezed,
    Object? phoneNumber = freezed,
    Object? companyName = freezed,
    Object? mcNumber = freezed,
    Object? dotNumber = freezed,
    Object? stripeCustomerId = freezed,
    Object? activeShippingAddress = freezed,
    Object? bankAccount = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_Data(
      profilePicUrl: freezed == profilePicUrl
          ? _value.profilePicUrl
          : profilePicUrl // ignore: cast_nullable_to_non_nullable
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
      riskScore: freezed == riskScore
          ? _value.riskScore
          : riskScore // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
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
      mcNumber: freezed == mcNumber
          ? _value.mcNumber
          : mcNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      dotNumber: freezed == dotNumber
          ? _value.dotNumber
          : dotNumber // ignore: cast_nullable_to_non_nullable
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
      {this.profilePicUrl,
      this.role,
      this.isEmailVerified,
      this.passwordResetOtp,
      this.passwordResetTokenUrl,
      final List<dynamic>? savedLoad,
      final List<dynamic>? savedFilter,
      this.isMcNumberVerified,
      this.safetyScore,
      this.riskScore,
      this.fullName,
      this.email,
      this.location,
      this.phoneNumber,
      this.companyName,
      this.mcNumber,
      this.dotNumber,
      this.stripeCustomerId,
      final List<dynamic>? activeShippingAddress,
      final List<dynamic>? bankAccount,
      this.id})
      : _savedLoad = savedLoad,
        _savedFilter = savedFilter,
        _activeShippingAddress = activeShippingAddress,
        _bankAccount = bankAccount;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final String? profilePicUrl;
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
  final String? riskScore;
  @override
  final String? fullName;
  @override
  final String? email;
  @override
  final String? location;
  @override
  final String? phoneNumber;
  @override
  final String? companyName;
  @override
  final String? mcNumber;
  @override
  final String? dotNumber;
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

  @override
  final String? id;

  @override
  String toString() {
    return 'Data(profilePicUrl: $profilePicUrl, role: $role, isEmailVerified: $isEmailVerified, passwordResetOtp: $passwordResetOtp, passwordResetTokenUrl: $passwordResetTokenUrl, savedLoad: $savedLoad, savedFilter: $savedFilter, isMcNumberVerified: $isMcNumberVerified, safetyScore: $safetyScore, riskScore: $riskScore, fullName: $fullName, email: $email, location: $location, phoneNumber: $phoneNumber, companyName: $companyName, mcNumber: $mcNumber, dotNumber: $dotNumber, stripeCustomerId: $stripeCustomerId, activeShippingAddress: $activeShippingAddress, bankAccount: $bankAccount, id: $id)';
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
            const DeepCollectionEquality()
                .equals(other._savedFilter, _savedFilter) &&
            (identical(other.isMcNumberVerified, isMcNumberVerified) ||
                other.isMcNumberVerified == isMcNumberVerified) &&
            (identical(other.safetyScore, safetyScore) ||
                other.safetyScore == safetyScore) &&
            (identical(other.riskScore, riskScore) ||
                other.riskScore == riskScore) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.mcNumber, mcNumber) ||
                other.mcNumber == mcNumber) &&
            (identical(other.dotNumber, dotNumber) ||
                other.dotNumber == dotNumber) &&
            (identical(other.stripeCustomerId, stripeCustomerId) ||
                other.stripeCustomerId == stripeCustomerId) &&
            const DeepCollectionEquality()
                .equals(other._activeShippingAddress, _activeShippingAddress) &&
            const DeepCollectionEquality()
                .equals(other._bankAccount, _bankAccount) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        profilePicUrl,
        role,
        isEmailVerified,
        const DeepCollectionEquality().hash(passwordResetOtp),
        passwordResetTokenUrl,
        const DeepCollectionEquality().hash(_savedLoad),
        const DeepCollectionEquality().hash(_savedFilter),
        isMcNumberVerified,
        safetyScore,
        riskScore,
        fullName,
        email,
        location,
        phoneNumber,
        companyName,
        mcNumber,
        dotNumber,
        stripeCustomerId,
        const DeepCollectionEquality().hash(_activeShippingAddress),
        const DeepCollectionEquality().hash(_bankAccount),
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
      {final String? profilePicUrl,
      final String? role,
      final bool? isEmailVerified,
      final dynamic passwordResetOtp,
      final String? passwordResetTokenUrl,
      final List<dynamic>? savedLoad,
      final List<dynamic>? savedFilter,
      final bool? isMcNumberVerified,
      final String? safetyScore,
      final String? riskScore,
      final String? fullName,
      final String? email,
      final String? location,
      final String? phoneNumber,
      final String? companyName,
      final String? mcNumber,
      final String? dotNumber,
      final String? stripeCustomerId,
      final List<dynamic>? activeShippingAddress,
      final List<dynamic>? bankAccount,
      final String? id}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  String? get profilePicUrl;
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
  String? get riskScore;
  @override
  String? get fullName;
  @override
  String? get email;
  @override
  String? get location;
  @override
  String? get phoneNumber;
  @override
  String? get companyName;
  @override
  String? get mcNumber;
  @override
  String? get dotNumber;
  @override
  String? get stripeCustomerId;
  @override
  List<dynamic>? get activeShippingAddress;
  @override
  List<dynamic>? get bankAccount;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}
