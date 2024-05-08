// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_shipping_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateShippingAddress _$CreateShippingAddressFromJson(
    Map<String, dynamic> json) {
  return _CreateShippingAddress.fromJson(json);
}

/// @nodoc
mixin _$CreateShippingAddress {
  String? get companyFullName => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get zip => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateShippingAddressCopyWith<CreateShippingAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateShippingAddressCopyWith<$Res> {
  factory $CreateShippingAddressCopyWith(CreateShippingAddress value,
          $Res Function(CreateShippingAddress) then) =
      _$CreateShippingAddressCopyWithImpl<$Res, CreateShippingAddress>;
  @useResult
  $Res call(
      {String? companyFullName,
      String? address,
      String? city,
      String? state,
      String? zip});
}

/// @nodoc
class _$CreateShippingAddressCopyWithImpl<$Res,
        $Val extends CreateShippingAddress>
    implements $CreateShippingAddressCopyWith<$Res> {
  _$CreateShippingAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyFullName = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? zip = freezed,
  }) {
    return _then(_value.copyWith(
      companyFullName: freezed == companyFullName
          ? _value.companyFullName
          : companyFullName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      zip: freezed == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateShippingAddressCopyWith<$Res>
    implements $CreateShippingAddressCopyWith<$Res> {
  factory _$$_CreateShippingAddressCopyWith(_$_CreateShippingAddress value,
          $Res Function(_$_CreateShippingAddress) then) =
      __$$_CreateShippingAddressCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? companyFullName,
      String? address,
      String? city,
      String? state,
      String? zip});
}

/// @nodoc
class __$$_CreateShippingAddressCopyWithImpl<$Res>
    extends _$CreateShippingAddressCopyWithImpl<$Res, _$_CreateShippingAddress>
    implements _$$_CreateShippingAddressCopyWith<$Res> {
  __$$_CreateShippingAddressCopyWithImpl(_$_CreateShippingAddress _value,
      $Res Function(_$_CreateShippingAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyFullName = freezed,
    Object? address = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? zip = freezed,
  }) {
    return _then(_$_CreateShippingAddress(
      companyFullName: freezed == companyFullName
          ? _value.companyFullName
          : companyFullName // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      zip: freezed == zip
          ? _value.zip
          : zip // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateShippingAddress implements _CreateShippingAddress {
  const _$_CreateShippingAddress(
      {this.companyFullName, this.address, this.city, this.state, this.zip});

  factory _$_CreateShippingAddress.fromJson(Map<String, dynamic> json) =>
      _$$_CreateShippingAddressFromJson(json);

  @override
  final String? companyFullName;
  @override
  final String? address;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? zip;

  @override
  String toString() {
    return 'CreateShippingAddress(companyFullName: $companyFullName, address: $address, city: $city, state: $state, zip: $zip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateShippingAddress &&
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
      Object.hash(runtimeType, companyFullName, address, city, state, zip);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateShippingAddressCopyWith<_$_CreateShippingAddress> get copyWith =>
      __$$_CreateShippingAddressCopyWithImpl<_$_CreateShippingAddress>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateShippingAddressToJson(
      this,
    );
  }
}

abstract class _CreateShippingAddress implements CreateShippingAddress {
  const factory _CreateShippingAddress(
      {final String? companyFullName,
      final String? address,
      final String? city,
      final String? state,
      final String? zip}) = _$_CreateShippingAddress;

  factory _CreateShippingAddress.fromJson(Map<String, dynamic> json) =
      _$_CreateShippingAddress.fromJson;

  @override
  String? get companyFullName;
  @override
  String? get address;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get zip;
  @override
  @JsonKey(ignore: true)
  _$$_CreateShippingAddressCopyWith<_$_CreateShippingAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateShippingAddressResponse _$CreateShippingAddressResponseFromJson(
    Map<String, dynamic> json) {
  return _CreateShippingAddressResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateShippingAddressResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateShippingAddressResponseCopyWith<CreateShippingAddressResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateShippingAddressResponseCopyWith<$Res> {
  factory $CreateShippingAddressResponseCopyWith(
          CreateShippingAddressResponse value,
          $Res Function(CreateShippingAddressResponse) then) =
      _$CreateShippingAddressResponseCopyWithImpl<$Res,
          CreateShippingAddressResponse>;
  @useResult
  $Res call({int code, String message, bool isSuccess, Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$CreateShippingAddressResponseCopyWithImpl<$Res,
        $Val extends CreateShippingAddressResponse>
    implements $CreateShippingAddressResponseCopyWith<$Res> {
  _$CreateShippingAddressResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_CreateShippingAddressResponseCopyWith<$Res>
    implements $CreateShippingAddressResponseCopyWith<$Res> {
  factory _$$_CreateShippingAddressResponseCopyWith(
          _$_CreateShippingAddressResponse value,
          $Res Function(_$_CreateShippingAddressResponse) then) =
      __$$_CreateShippingAddressResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, bool isSuccess, Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_CreateShippingAddressResponseCopyWithImpl<$Res>
    extends _$CreateShippingAddressResponseCopyWithImpl<$Res,
        _$_CreateShippingAddressResponse>
    implements _$$_CreateShippingAddressResponseCopyWith<$Res> {
  __$$_CreateShippingAddressResponseCopyWithImpl(
      _$_CreateShippingAddressResponse _value,
      $Res Function(_$_CreateShippingAddressResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? isSuccess = null,
    Object? data = null,
  }) {
    return _then(_$_CreateShippingAddressResponse(
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
class _$_CreateShippingAddressResponse
    implements _CreateShippingAddressResponse {
  const _$_CreateShippingAddressResponse(
      {required this.code,
      required this.message,
      required this.isSuccess,
      required this.data});

  factory _$_CreateShippingAddressResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_CreateShippingAddressResponseFromJson(json);

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
    return 'CreateShippingAddressResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateShippingAddressResponse &&
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
  _$$_CreateShippingAddressResponseCopyWith<_$_CreateShippingAddressResponse>
      get copyWith => __$$_CreateShippingAddressResponseCopyWithImpl<
          _$_CreateShippingAddressResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateShippingAddressResponseToJson(
      this,
    );
  }
}

abstract class _CreateShippingAddressResponse
    implements CreateShippingAddressResponse {
  const factory _CreateShippingAddressResponse(
      {required final int code,
      required final String message,
      required final bool isSuccess,
      required final Data data}) = _$_CreateShippingAddressResponse;

  factory _CreateShippingAddressResponse.fromJson(Map<String, dynamic> json) =
      _$_CreateShippingAddressResponse.fromJson;

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
  _$$_CreateShippingAddressResponseCopyWith<_$_CreateShippingAddressResponse>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String get companyFullName => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get zip => throw _privateConstructorUsedError;

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
      {String companyFullName,
      String address,
      String city,
      String state,
      String zip});
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
    Object? companyFullName = null,
    Object? address = null,
    Object? city = null,
    Object? state = null,
    Object? zip = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String companyFullName,
      String address,
      String city,
      String state,
      String zip});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? companyFullName = null,
    Object? address = null,
    Object? city = null,
    Object? state = null,
    Object? zip = null,
  }) {
    return _then(_$_Data(
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
class _$_Data implements _Data {
  const _$_Data(
      {required this.companyFullName,
      required this.address,
      required this.city,
      required this.state,
      required this.zip});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

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
    return 'Data(companyFullName: $companyFullName, address: $address, city: $city, state: $state, zip: $zip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
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
      Object.hash(runtimeType, companyFullName, address, city, state, zip);

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
      {required final String companyFullName,
      required final String address,
      required final String city,
      required final String state,
      required final String zip}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

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
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}
