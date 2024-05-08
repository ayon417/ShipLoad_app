// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_payment_requests.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentRequestsResponse _$PaymentRequestsResponseFromJson(
    Map<String, dynamic> json) {
  return _PaymentRequestsResponse.fromJson(json);
}

/// @nodoc
mixin _$PaymentRequestsResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  List<Datum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentRequestsResponseCopyWith<PaymentRequestsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentRequestsResponseCopyWith<$Res> {
  factory $PaymentRequestsResponseCopyWith(PaymentRequestsResponse value,
          $Res Function(PaymentRequestsResponse) then) =
      _$PaymentRequestsResponseCopyWithImpl<$Res, PaymentRequestsResponse>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, List<Datum>? data});
}

/// @nodoc
class _$PaymentRequestsResponseCopyWithImpl<$Res,
        $Val extends PaymentRequestsResponse>
    implements $PaymentRequestsResponseCopyWith<$Res> {
  _$PaymentRequestsResponseCopyWithImpl(this._value, this._then);

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
              as List<Datum>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentRequestsResponseCopyWith<$Res>
    implements $PaymentRequestsResponseCopyWith<$Res> {
  factory _$$_PaymentRequestsResponseCopyWith(_$_PaymentRequestsResponse value,
          $Res Function(_$_PaymentRequestsResponse) then) =
      __$$_PaymentRequestsResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, List<Datum>? data});
}

/// @nodoc
class __$$_PaymentRequestsResponseCopyWithImpl<$Res>
    extends _$PaymentRequestsResponseCopyWithImpl<$Res,
        _$_PaymentRequestsResponse>
    implements _$$_PaymentRequestsResponseCopyWith<$Res> {
  __$$_PaymentRequestsResponseCopyWithImpl(_$_PaymentRequestsResponse _value,
      $Res Function(_$_PaymentRequestsResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_PaymentRequestsResponse(
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
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentRequestsResponse implements _PaymentRequestsResponse {
  const _$_PaymentRequestsResponse(
      {this.code, this.message, this.isSuccess, final List<Datum>? data})
      : _data = data;

  factory _$_PaymentRequestsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentRequestsResponseFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final bool? isSuccess;
  final List<Datum>? _data;
  @override
  List<Datum>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PaymentRequestsResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentRequestsResponse &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, isSuccess,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentRequestsResponseCopyWith<_$_PaymentRequestsResponse>
      get copyWith =>
          __$$_PaymentRequestsResponseCopyWithImpl<_$_PaymentRequestsResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentRequestsResponseToJson(
      this,
    );
  }
}

abstract class _PaymentRequestsResponse implements PaymentRequestsResponse {
  const factory _PaymentRequestsResponse(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final List<Datum>? data}) = _$_PaymentRequestsResponse;

  factory _PaymentRequestsResponse.fromJson(Map<String, dynamic> json) =
      _$_PaymentRequestsResponse.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  bool? get isSuccess;
  @override
  List<Datum>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentRequestsResponseCopyWith<_$_PaymentRequestsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  bool? get paymentStatus => throw _privateConstructorUsedError;
  String? get paymentMode => throw _privateConstructorUsedError;
  String? get loadId => throw _privateConstructorUsedError;
  String? get shipperId => throw _privateConstructorUsedError;
  int? get rate => throw _privateConstructorUsedError;
  String? get docUrl => throw _privateConstructorUsedError;
  String? get requestedBy => throw _privateConstructorUsedError;
  RequestedTo? get requestedTo => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call(
      {bool? paymentStatus,
      String? paymentMode,
      String? loadId,
      String? shipperId,
      int? rate,
      String? docUrl,
      String? requestedBy,
      RequestedTo? requestedTo,
      String? id});

  $RequestedToCopyWith<$Res>? get requestedTo;
}

/// @nodoc
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentStatus = freezed,
    Object? paymentMode = freezed,
    Object? loadId = freezed,
    Object? shipperId = freezed,
    Object? rate = freezed,
    Object? docUrl = freezed,
    Object? requestedBy = freezed,
    Object? requestedTo = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      paymentMode: freezed == paymentMode
          ? _value.paymentMode
          : paymentMode // ignore: cast_nullable_to_non_nullable
              as String?,
      loadId: freezed == loadId
          ? _value.loadId
          : loadId // ignore: cast_nullable_to_non_nullable
              as String?,
      shipperId: freezed == shipperId
          ? _value.shipperId
          : shipperId // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int?,
      docUrl: freezed == docUrl
          ? _value.docUrl
          : docUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      requestedBy: freezed == requestedBy
          ? _value.requestedBy
          : requestedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      requestedTo: freezed == requestedTo
          ? _value.requestedTo
          : requestedTo // ignore: cast_nullable_to_non_nullable
              as RequestedTo?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RequestedToCopyWith<$Res>? get requestedTo {
    if (_value.requestedTo == null) {
      return null;
    }

    return $RequestedToCopyWith<$Res>(_value.requestedTo!, (value) {
      return _then(_value.copyWith(requestedTo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DatumCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$_DatumCopyWith(_$_Datum value, $Res Function(_$_Datum) then) =
      __$$_DatumCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? paymentStatus,
      String? paymentMode,
      String? loadId,
      String? shipperId,
      int? rate,
      String? docUrl,
      String? requestedBy,
      RequestedTo? requestedTo,
      String? id});

  @override
  $RequestedToCopyWith<$Res>? get requestedTo;
}

/// @nodoc
class __$$_DatumCopyWithImpl<$Res> extends _$DatumCopyWithImpl<$Res, _$_Datum>
    implements _$$_DatumCopyWith<$Res> {
  __$$_DatumCopyWithImpl(_$_Datum _value, $Res Function(_$_Datum) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentStatus = freezed,
    Object? paymentMode = freezed,
    Object? loadId = freezed,
    Object? shipperId = freezed,
    Object? rate = freezed,
    Object? docUrl = freezed,
    Object? requestedBy = freezed,
    Object? requestedTo = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_Datum(
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      paymentMode: freezed == paymentMode
          ? _value.paymentMode
          : paymentMode // ignore: cast_nullable_to_non_nullable
              as String?,
      loadId: freezed == loadId
          ? _value.loadId
          : loadId // ignore: cast_nullable_to_non_nullable
              as String?,
      shipperId: freezed == shipperId
          ? _value.shipperId
          : shipperId // ignore: cast_nullable_to_non_nullable
              as String?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int?,
      docUrl: freezed == docUrl
          ? _value.docUrl
          : docUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      requestedBy: freezed == requestedBy
          ? _value.requestedBy
          : requestedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      requestedTo: freezed == requestedTo
          ? _value.requestedTo
          : requestedTo // ignore: cast_nullable_to_non_nullable
              as RequestedTo?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Datum implements _Datum {
  const _$_Datum(
      {this.paymentStatus,
      this.paymentMode,
      this.loadId,
      this.shipperId,
      this.rate,
      this.docUrl,
      this.requestedBy,
      this.requestedTo,
      this.id});

  factory _$_Datum.fromJson(Map<String, dynamic> json) =>
      _$$_DatumFromJson(json);

  @override
  final bool? paymentStatus;
  @override
  final String? paymentMode;
  @override
  final String? loadId;
  @override
  final String? shipperId;
  @override
  final int? rate;
  @override
  final String? docUrl;
  @override
  final String? requestedBy;
  @override
  final RequestedTo? requestedTo;
  @override
  final String? id;

  @override
  String toString() {
    return 'Datum(paymentStatus: $paymentStatus, paymentMode: $paymentMode, loadId: $loadId, shipperId: $shipperId, rate: $rate, docUrl: $docUrl, requestedBy: $requestedBy, requestedTo: $requestedTo, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Datum &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.paymentMode, paymentMode) ||
                other.paymentMode == paymentMode) &&
            (identical(other.loadId, loadId) || other.loadId == loadId) &&
            (identical(other.shipperId, shipperId) ||
                other.shipperId == shipperId) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.docUrl, docUrl) || other.docUrl == docUrl) &&
            (identical(other.requestedBy, requestedBy) ||
                other.requestedBy == requestedBy) &&
            (identical(other.requestedTo, requestedTo) ||
                other.requestedTo == requestedTo) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, paymentStatus, paymentMode,
      loadId, shipperId, rate, docUrl, requestedBy, requestedTo, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DatumCopyWith<_$_Datum> get copyWith =>
      __$$_DatumCopyWithImpl<_$_Datum>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DatumToJson(
      this,
    );
  }
}

abstract class _Datum implements Datum {
  const factory _Datum(
      {final bool? paymentStatus,
      final String? paymentMode,
      final String? loadId,
      final String? shipperId,
      final int? rate,
      final String? docUrl,
      final String? requestedBy,
      final RequestedTo? requestedTo,
      final String? id}) = _$_Datum;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$_Datum.fromJson;

  @override
  bool? get paymentStatus;
  @override
  String? get paymentMode;
  @override
  String? get loadId;
  @override
  String? get shipperId;
  @override
  int? get rate;
  @override
  String? get docUrl;
  @override
  String? get requestedBy;
  @override
  RequestedTo? get requestedTo;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_DatumCopyWith<_$_Datum> get copyWith =>
      throw _privateConstructorUsedError;
}

RequestedTo _$RequestedToFromJson(Map<String, dynamic> json) {
  return _RequestedTo.fromJson(json);
}

/// @nodoc
mixin _$RequestedTo {
  String? get fullName => throw _privateConstructorUsedError;
  String? get profilePicUrl => throw _privateConstructorUsedError;
  String? get mcNumber => throw _privateConstructorUsedError;
  String? get role =>
      throw _privateConstructorUsedError; // bool? isEmailVerified,
// Subscription? subscription,
// dynamic passwordResetOtp,
// String? passwordResetTokenUrl,
// List<dynamic>? savedLoad,
// List<dynamic>? savedFilter,
// bool? isMcNumberVerified,
// String? safetyScore,
// bool? isAdminVerified,
// bool? trialUser,
// bool? premiumUser,
  String? get email => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get companyName => throw _privateConstructorUsedError;
  String? get corporateEmail => throw _privateConstructorUsedError;
  String? get companyWebsite =>
      throw _privateConstructorUsedError; // String? stripeCustomerId,
// List<dynamic>? activeShippingAddress,
// List<dynamic>? bankAccount,
// List<dynamic>? recentSearchedLocations,
// String? otp,
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestedToCopyWith<RequestedTo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestedToCopyWith<$Res> {
  factory $RequestedToCopyWith(
          RequestedTo value, $Res Function(RequestedTo) then) =
      _$RequestedToCopyWithImpl<$Res, RequestedTo>;
  @useResult
  $Res call(
      {String? fullName,
      String? profilePicUrl,
      String? mcNumber,
      String? role,
      String? email,
      String? location,
      String? phoneNumber,
      String? companyName,
      String? corporateEmail,
      String? companyWebsite,
      String? id});
}

/// @nodoc
class _$RequestedToCopyWithImpl<$Res, $Val extends RequestedTo>
    implements $RequestedToCopyWith<$Res> {
  _$RequestedToCopyWithImpl(this._value, this._then);

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
    Object? email = freezed,
    Object? location = freezed,
    Object? phoneNumber = freezed,
    Object? companyName = freezed,
    Object? corporateEmail = freezed,
    Object? companyWebsite = freezed,
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RequestedToCopyWith<$Res>
    implements $RequestedToCopyWith<$Res> {
  factory _$$_RequestedToCopyWith(
          _$_RequestedTo value, $Res Function(_$_RequestedTo) then) =
      __$$_RequestedToCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fullName,
      String? profilePicUrl,
      String? mcNumber,
      String? role,
      String? email,
      String? location,
      String? phoneNumber,
      String? companyName,
      String? corporateEmail,
      String? companyWebsite,
      String? id});
}

/// @nodoc
class __$$_RequestedToCopyWithImpl<$Res>
    extends _$RequestedToCopyWithImpl<$Res, _$_RequestedTo>
    implements _$$_RequestedToCopyWith<$Res> {
  __$$_RequestedToCopyWithImpl(
      _$_RequestedTo _value, $Res Function(_$_RequestedTo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? profilePicUrl = freezed,
    Object? mcNumber = freezed,
    Object? role = freezed,
    Object? email = freezed,
    Object? location = freezed,
    Object? phoneNumber = freezed,
    Object? companyName = freezed,
    Object? corporateEmail = freezed,
    Object? companyWebsite = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_RequestedTo(
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestedTo implements _RequestedTo {
  const _$_RequestedTo(
      {this.fullName,
      this.profilePicUrl,
      this.mcNumber,
      this.role,
      this.email,
      this.location,
      this.phoneNumber,
      this.companyName,
      this.corporateEmail,
      this.companyWebsite,
      this.id});

  factory _$_RequestedTo.fromJson(Map<String, dynamic> json) =>
      _$$_RequestedToFromJson(json);

  @override
  final String? fullName;
  @override
  final String? profilePicUrl;
  @override
  final String? mcNumber;
  @override
  final String? role;
// bool? isEmailVerified,
// Subscription? subscription,
// dynamic passwordResetOtp,
// String? passwordResetTokenUrl,
// List<dynamic>? savedLoad,
// List<dynamic>? savedFilter,
// bool? isMcNumberVerified,
// String? safetyScore,
// bool? isAdminVerified,
// bool? trialUser,
// bool? premiumUser,
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
// String? stripeCustomerId,
// List<dynamic>? activeShippingAddress,
// List<dynamic>? bankAccount,
// List<dynamic>? recentSearchedLocations,
// String? otp,
  @override
  final String? id;

  @override
  String toString() {
    return 'RequestedTo(fullName: $fullName, profilePicUrl: $profilePicUrl, mcNumber: $mcNumber, role: $role, email: $email, location: $location, phoneNumber: $phoneNumber, companyName: $companyName, corporateEmail: $corporateEmail, companyWebsite: $companyWebsite, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequestedTo &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.profilePicUrl, profilePicUrl) ||
                other.profilePicUrl == profilePicUrl) &&
            (identical(other.mcNumber, mcNumber) ||
                other.mcNumber == mcNumber) &&
            (identical(other.role, role) || other.role == role) &&
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
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fullName,
      profilePicUrl,
      mcNumber,
      role,
      email,
      location,
      phoneNumber,
      companyName,
      corporateEmail,
      companyWebsite,
      id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequestedToCopyWith<_$_RequestedTo> get copyWith =>
      __$$_RequestedToCopyWithImpl<_$_RequestedTo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RequestedToToJson(
      this,
    );
  }
}

abstract class _RequestedTo implements RequestedTo {
  const factory _RequestedTo(
      {final String? fullName,
      final String? profilePicUrl,
      final String? mcNumber,
      final String? role,
      final String? email,
      final String? location,
      final String? phoneNumber,
      final String? companyName,
      final String? corporateEmail,
      final String? companyWebsite,
      final String? id}) = _$_RequestedTo;

  factory _RequestedTo.fromJson(Map<String, dynamic> json) =
      _$_RequestedTo.fromJson;

  @override
  String? get fullName;
  @override
  String? get profilePicUrl;
  @override
  String? get mcNumber;
  @override
  String? get role;
  @override // bool? isEmailVerified,
// Subscription? subscription,
// dynamic passwordResetOtp,
// String? passwordResetTokenUrl,
// List<dynamic>? savedLoad,
// List<dynamic>? savedFilter,
// bool? isMcNumberVerified,
// String? safetyScore,
// bool? isAdminVerified,
// bool? trialUser,
// bool? premiumUser,
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
  @override // String? stripeCustomerId,
// List<dynamic>? activeShippingAddress,
// List<dynamic>? bankAccount,
// List<dynamic>? recentSearchedLocations,
// String? otp,
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_RequestedToCopyWith<_$_RequestedTo> get copyWith =>
      throw _privateConstructorUsedError;
}
