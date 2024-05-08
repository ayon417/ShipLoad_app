// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_shipping_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeleteShippingAddressRequest _$DeleteShippingAddressRequestFromJson(
    Map<String, dynamic> json) {
  return _DeleteShippingAddressRequest.fromJson(json);
}

/// @nodoc
mixin _$DeleteShippingAddressRequest {
  List<String>? get addressIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteShippingAddressRequestCopyWith<DeleteShippingAddressRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteShippingAddressRequestCopyWith<$Res> {
  factory $DeleteShippingAddressRequestCopyWith(
          DeleteShippingAddressRequest value,
          $Res Function(DeleteShippingAddressRequest) then) =
      _$DeleteShippingAddressRequestCopyWithImpl<$Res,
          DeleteShippingAddressRequest>;
  @useResult
  $Res call({List<String>? addressIds});
}

/// @nodoc
class _$DeleteShippingAddressRequestCopyWithImpl<$Res,
        $Val extends DeleteShippingAddressRequest>
    implements $DeleteShippingAddressRequestCopyWith<$Res> {
  _$DeleteShippingAddressRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressIds = freezed,
  }) {
    return _then(_value.copyWith(
      addressIds: freezed == addressIds
          ? _value.addressIds
          : addressIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeleteShippingAddressRequestCopyWith<$Res>
    implements $DeleteShippingAddressRequestCopyWith<$Res> {
  factory _$$_DeleteShippingAddressRequestCopyWith(
          _$_DeleteShippingAddressRequest value,
          $Res Function(_$_DeleteShippingAddressRequest) then) =
      __$$_DeleteShippingAddressRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? addressIds});
}

/// @nodoc
class __$$_DeleteShippingAddressRequestCopyWithImpl<$Res>
    extends _$DeleteShippingAddressRequestCopyWithImpl<$Res,
        _$_DeleteShippingAddressRequest>
    implements _$$_DeleteShippingAddressRequestCopyWith<$Res> {
  __$$_DeleteShippingAddressRequestCopyWithImpl(
      _$_DeleteShippingAddressRequest _value,
      $Res Function(_$_DeleteShippingAddressRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressIds = freezed,
  }) {
    return _then(_$_DeleteShippingAddressRequest(
      addressIds: freezed == addressIds
          ? _value._addressIds
          : addressIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeleteShippingAddressRequest implements _DeleteShippingAddressRequest {
  const _$_DeleteShippingAddressRequest({final List<String>? addressIds})
      : _addressIds = addressIds;

  factory _$_DeleteShippingAddressRequest.fromJson(Map<String, dynamic> json) =>
      _$$_DeleteShippingAddressRequestFromJson(json);

  final List<String>? _addressIds;
  @override
  List<String>? get addressIds {
    final value = _addressIds;
    if (value == null) return null;
    if (_addressIds is EqualUnmodifiableListView) return _addressIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DeleteShippingAddressRequest(addressIds: $addressIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteShippingAddressRequest &&
            const DeepCollectionEquality()
                .equals(other._addressIds, _addressIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_addressIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteShippingAddressRequestCopyWith<_$_DeleteShippingAddressRequest>
      get copyWith => __$$_DeleteShippingAddressRequestCopyWithImpl<
          _$_DeleteShippingAddressRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeleteShippingAddressRequestToJson(
      this,
    );
  }
}

abstract class _DeleteShippingAddressRequest
    implements DeleteShippingAddressRequest {
  const factory _DeleteShippingAddressRequest(
      {final List<String>? addressIds}) = _$_DeleteShippingAddressRequest;

  factory _DeleteShippingAddressRequest.fromJson(Map<String, dynamic> json) =
      _$_DeleteShippingAddressRequest.fromJson;

  @override
  List<String>? get addressIds;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteShippingAddressRequestCopyWith<_$_DeleteShippingAddressRequest>
      get copyWith => throw _privateConstructorUsedError;
}

DeleteShippingAddressResponse _$DeleteShippingAddressResponseFromJson(
    Map<String, dynamic> json) {
  return _DeleteShippingAddressResponse.fromJson(json);
}

/// @nodoc
mixin _$DeleteShippingAddressResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteShippingAddressResponseCopyWith<DeleteShippingAddressResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteShippingAddressResponseCopyWith<$Res> {
  factory $DeleteShippingAddressResponseCopyWith(
          DeleteShippingAddressResponse value,
          $Res Function(DeleteShippingAddressResponse) then) =
      _$DeleteShippingAddressResponseCopyWithImpl<$Res,
          DeleteShippingAddressResponse>;
  @useResult
  $Res call({int code, String message, bool isSuccess, Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$DeleteShippingAddressResponseCopyWithImpl<$Res,
        $Val extends DeleteShippingAddressResponse>
    implements $DeleteShippingAddressResponseCopyWith<$Res> {
  _$DeleteShippingAddressResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_DeleteShippingAddressResponseCopyWith<$Res>
    implements $DeleteShippingAddressResponseCopyWith<$Res> {
  factory _$$_DeleteShippingAddressResponseCopyWith(
          _$_DeleteShippingAddressResponse value,
          $Res Function(_$_DeleteShippingAddressResponse) then) =
      __$$_DeleteShippingAddressResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, bool isSuccess, Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_DeleteShippingAddressResponseCopyWithImpl<$Res>
    extends _$DeleteShippingAddressResponseCopyWithImpl<$Res,
        _$_DeleteShippingAddressResponse>
    implements _$$_DeleteShippingAddressResponseCopyWith<$Res> {
  __$$_DeleteShippingAddressResponseCopyWithImpl(
      _$_DeleteShippingAddressResponse _value,
      $Res Function(_$_DeleteShippingAddressResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? isSuccess = null,
    Object? data = null,
  }) {
    return _then(_$_DeleteShippingAddressResponse(
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
class _$_DeleteShippingAddressResponse
    implements _DeleteShippingAddressResponse {
  const _$_DeleteShippingAddressResponse(
      {required this.code,
      required this.message,
      required this.isSuccess,
      required this.data});

  factory _$_DeleteShippingAddressResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_DeleteShippingAddressResponseFromJson(json);

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
    return 'DeleteShippingAddressResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteShippingAddressResponse &&
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
  _$$_DeleteShippingAddressResponseCopyWith<_$_DeleteShippingAddressResponse>
      get copyWith => __$$_DeleteShippingAddressResponseCopyWithImpl<
          _$_DeleteShippingAddressResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeleteShippingAddressResponseToJson(
      this,
    );
  }
}

abstract class _DeleteShippingAddressResponse
    implements DeleteShippingAddressResponse {
  const factory _DeleteShippingAddressResponse(
      {required final int code,
      required final String message,
      required final bool isSuccess,
      required final Data data}) = _$_DeleteShippingAddressResponse;

  factory _DeleteShippingAddressResponse.fromJson(Map<String, dynamic> json) =
      _$_DeleteShippingAddressResponse.fromJson;

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
  _$$_DeleteShippingAddressResponseCopyWith<_$_DeleteShippingAddressResponse>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String? get profilePicUrl => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  bool? get isEmailVerified => throw _privateConstructorUsedError;
  dynamic get passwordResetOtp => throw _privateConstructorUsedError;
  String? get passwordResetTokenUrl => throw _privateConstructorUsedError;
  List<dynamic>? get savedLoad => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get companyName => throw _privateConstructorUsedError;
  String? get corporateEmail => throw _privateConstructorUsedError;
  String? get companyWebsite => throw _privateConstructorUsedError;
  List<ActiveShippingAddress>? get activeShippingAddress =>
      throw _privateConstructorUsedError;
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
      String role,
      bool? isEmailVerified,
      dynamic passwordResetOtp,
      String? passwordResetTokenUrl,
      List<dynamic>? savedLoad,
      String? fullName,
      String? email,
      String? location,
      String? phoneNumber,
      String? companyName,
      String? corporateEmail,
      String? companyWebsite,
      List<ActiveShippingAddress>? activeShippingAddress,
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
    Object? role = null,
    Object? isEmailVerified = freezed,
    Object? passwordResetOtp = freezed,
    Object? passwordResetTokenUrl = freezed,
    Object? savedLoad = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? location = freezed,
    Object? phoneNumber = freezed,
    Object? companyName = freezed,
    Object? corporateEmail = freezed,
    Object? companyWebsite = freezed,
    Object? activeShippingAddress = freezed,
    Object? id = freezed,
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
      corporateEmail: freezed == corporateEmail
          ? _value.corporateEmail
          : corporateEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      companyWebsite: freezed == companyWebsite
          ? _value.companyWebsite
          : companyWebsite // ignore: cast_nullable_to_non_nullable
              as String?,
      activeShippingAddress: freezed == activeShippingAddress
          ? _value.activeShippingAddress
          : activeShippingAddress // ignore: cast_nullable_to_non_nullable
              as List<ActiveShippingAddress>?,
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
      String role,
      bool? isEmailVerified,
      dynamic passwordResetOtp,
      String? passwordResetTokenUrl,
      List<dynamic>? savedLoad,
      String? fullName,
      String? email,
      String? location,
      String? phoneNumber,
      String? companyName,
      String? corporateEmail,
      String? companyWebsite,
      List<ActiveShippingAddress>? activeShippingAddress,
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
    Object? role = null,
    Object? isEmailVerified = freezed,
    Object? passwordResetOtp = freezed,
    Object? passwordResetTokenUrl = freezed,
    Object? savedLoad = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? location = freezed,
    Object? phoneNumber = freezed,
    Object? companyName = freezed,
    Object? corporateEmail = freezed,
    Object? companyWebsite = freezed,
    Object? activeShippingAddress = freezed,
    Object? id = freezed,
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
      corporateEmail: freezed == corporateEmail
          ? _value.corporateEmail
          : corporateEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      companyWebsite: freezed == companyWebsite
          ? _value.companyWebsite
          : companyWebsite // ignore: cast_nullable_to_non_nullable
              as String?,
      activeShippingAddress: freezed == activeShippingAddress
          ? _value._activeShippingAddress
          : activeShippingAddress // ignore: cast_nullable_to_non_nullable
              as List<ActiveShippingAddress>?,
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
      required this.role,
      this.isEmailVerified,
      this.passwordResetOtp,
      this.passwordResetTokenUrl,
      final List<dynamic>? savedLoad,
      this.fullName,
      this.email,
      this.location,
      this.phoneNumber,
      this.companyName,
      this.corporateEmail,
      this.companyWebsite,
      final List<ActiveShippingAddress>? activeShippingAddress,
      this.id})
      : _savedLoad = savedLoad,
        _activeShippingAddress = activeShippingAddress;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final String? profilePicUrl;
  @override
  final String role;
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
  final String? corporateEmail;
  @override
  final String? companyWebsite;
  final List<ActiveShippingAddress>? _activeShippingAddress;
  @override
  List<ActiveShippingAddress>? get activeShippingAddress {
    final value = _activeShippingAddress;
    if (value == null) return null;
    if (_activeShippingAddress is EqualUnmodifiableListView)
      return _activeShippingAddress;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? id;

  @override
  String toString() {
    return 'Data(profilePicUrl: $profilePicUrl, role: $role, isEmailVerified: $isEmailVerified, passwordResetOtp: $passwordResetOtp, passwordResetTokenUrl: $passwordResetTokenUrl, savedLoad: $savedLoad, fullName: $fullName, email: $email, location: $location, phoneNumber: $phoneNumber, companyName: $companyName, corporateEmail: $corporateEmail, companyWebsite: $companyWebsite, activeShippingAddress: $activeShippingAddress, id: $id)';
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
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.corporateEmail, corporateEmail) ||
                other.corporateEmail == corporateEmail) &&
            (identical(other.companyWebsite, companyWebsite) ||
                other.companyWebsite == companyWebsite) &&
            const DeepCollectionEquality()
                .equals(other._activeShippingAddress, _activeShippingAddress) &&
            (identical(other.id, id) || other.id == id));
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
      companyName,
      corporateEmail,
      companyWebsite,
      const DeepCollectionEquality().hash(_activeShippingAddress),
      id);

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
      final bool? isEmailVerified,
      final dynamic passwordResetOtp,
      final String? passwordResetTokenUrl,
      final List<dynamic>? savedLoad,
      final String? fullName,
      final String? email,
      final String? location,
      final String? phoneNumber,
      final String? companyName,
      final String? corporateEmail,
      final String? companyWebsite,
      final List<ActiveShippingAddress>? activeShippingAddress,
      final String? id}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  String? get profilePicUrl;
  @override
  String get role;
  @override
  bool? get isEmailVerified;
  @override
  dynamic get passwordResetOtp;
  @override
  String? get passwordResetTokenUrl;
  @override
  List<dynamic>? get savedLoad;
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
  String? get corporateEmail;
  @override
  String? get companyWebsite;
  @override
  List<ActiveShippingAddress>? get activeShippingAddress;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

ActiveShippingAddress _$ActiveShippingAddressFromJson(
    Map<String, dynamic> json) {
  return _ActiveShippingAddress.fromJson(json);
}

/// @nodoc
mixin _$ActiveShippingAddress {
// ignore: invalid_annotation_target
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String get companyFullName => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get zip => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActiveShippingAddressCopyWith<ActiveShippingAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveShippingAddressCopyWith<$Res> {
  factory $ActiveShippingAddressCopyWith(ActiveShippingAddress value,
          $Res Function(ActiveShippingAddress) then) =
      _$ActiveShippingAddressCopyWithImpl<$Res, ActiveShippingAddress>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String companyFullName,
      String address,
      String city,
      String state,
      String zip});
}

/// @nodoc
class _$ActiveShippingAddressCopyWithImpl<$Res,
        $Val extends ActiveShippingAddress>
    implements $ActiveShippingAddressCopyWith<$Res> {
  _$ActiveShippingAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? companyFullName = null,
    Object? address = null,
    Object? city = null,
    Object? state = null,
    Object? zip = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      companyFullName: null == companyFullName
          ? _value.companyFullName
          : companyFullName // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      zip: null == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ActiveShippingAddressCopyWith<$Res>
    implements $ActiveShippingAddressCopyWith<$Res> {
  factory _$$_ActiveShippingAddressCopyWith(_$_ActiveShippingAddress value,
          $Res Function(_$_ActiveShippingAddress) then) =
      __$$_ActiveShippingAddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String companyFullName,
      String address,
      String city,
      String state,
      String zip});
}

/// @nodoc
class __$$_ActiveShippingAddressCopyWithImpl<$Res>
    extends _$ActiveShippingAddressCopyWithImpl<$Res, _$_ActiveShippingAddress>
    implements _$$_ActiveShippingAddressCopyWith<$Res> {
  __$$_ActiveShippingAddressCopyWithImpl(_$_ActiveShippingAddress _value,
      $Res Function(_$_ActiveShippingAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? companyFullName = null,
    Object? address = null,
    Object? city = null,
    Object? state = null,
    Object? zip = null,
  }) {
    return _then(_$_ActiveShippingAddress(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      companyFullName: null == companyFullName
          ? _value.companyFullName
          : companyFullName // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      zip: null == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActiveShippingAddress implements _ActiveShippingAddress {
  const _$_ActiveShippingAddress(
      {@JsonKey(name: "_id") this.id,
      required this.companyFullName,
      required this.address,
      required this.city,
      required this.state,
      required this.zip});

  factory _$_ActiveShippingAddress.fromJson(Map<String, dynamic> json) =>
      _$$_ActiveShippingAddressFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String companyFullName;
  @override
  final String address;
  @override
  final String city;
  @override
  final String state;
  @override
  final String zip;

  @override
  String toString() {
    return 'ActiveShippingAddress(id: $id, companyFullName: $companyFullName, address: $address, city: $city, state: $state, zip: $zip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActiveShippingAddress &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.companyFullName, companyFullName) ||
                other.companyFullName == companyFullName) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.zip, zip) || other.zip == zip));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, companyFullName, address, city, state, zip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActiveShippingAddressCopyWith<_$_ActiveShippingAddress> get copyWith =>
      __$$_ActiveShippingAddressCopyWithImpl<_$_ActiveShippingAddress>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActiveShippingAddressToJson(
      this,
    );
  }
}

abstract class _ActiveShippingAddress implements ActiveShippingAddress {
  const factory _ActiveShippingAddress(
      {@JsonKey(name: "_id") final String? id,
      required final String companyFullName,
      required final String address,
      required final String city,
      required final String state,
      required final String zip}) = _$_ActiveShippingAddress;

  factory _ActiveShippingAddress.fromJson(Map<String, dynamic> json) =
      _$_ActiveShippingAddress.fromJson;

  @override // ignore: invalid_annotation_target
  @JsonKey(name: "_id")
  String? get id;
  @override
  String get companyFullName;
  @override
  String get address;
  @override
  String get city;
  @override
  String get state;
  @override
  String get zip;
  @override
  @JsonKey(ignore: true)
  _$$_ActiveShippingAddressCopyWith<_$_ActiveShippingAddress> get copyWith =>
      throw _privateConstructorUsedError;
}
