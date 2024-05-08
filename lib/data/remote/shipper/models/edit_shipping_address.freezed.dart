// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_shipping_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EditShippingAddressRequest _$EditShippingAddressRequestFromJson(
    Map<String, dynamic> json) {
  return _EditShippingAddressRequest.fromJson(json);
}

/// @nodoc
mixin _$EditShippingAddressRequest {
  String? get companyFullName => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get zip => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditShippingAddressRequestCopyWith<EditShippingAddressRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditShippingAddressRequestCopyWith<$Res> {
  factory $EditShippingAddressRequestCopyWith(EditShippingAddressRequest value,
          $Res Function(EditShippingAddressRequest) then) =
      _$EditShippingAddressRequestCopyWithImpl<$Res,
          EditShippingAddressRequest>;
  @useResult
  $Res call(
      {String? companyFullName,
      String? address,
      String? city,
      String? state,
      String? zip});
}

/// @nodoc
class _$EditShippingAddressRequestCopyWithImpl<$Res,
        $Val extends EditShippingAddressRequest>
    implements $EditShippingAddressRequestCopyWith<$Res> {
  _$EditShippingAddressRequestCopyWithImpl(this._value, this._then);

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
abstract class _$$_EditShippingAddressRequestCopyWith<$Res>
    implements $EditShippingAddressRequestCopyWith<$Res> {
  factory _$$_EditShippingAddressRequestCopyWith(
          _$_EditShippingAddressRequest value,
          $Res Function(_$_EditShippingAddressRequest) then) =
      __$$_EditShippingAddressRequestCopyWithImpl<$Res>;
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
class __$$_EditShippingAddressRequestCopyWithImpl<$Res>
    extends _$EditShippingAddressRequestCopyWithImpl<$Res,
        _$_EditShippingAddressRequest>
    implements _$$_EditShippingAddressRequestCopyWith<$Res> {
  __$$_EditShippingAddressRequestCopyWithImpl(
      _$_EditShippingAddressRequest _value,
      $Res Function(_$_EditShippingAddressRequest) _then)
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
    return _then(_$_EditShippingAddressRequest(
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
class _$_EditShippingAddressRequest implements _EditShippingAddressRequest {
  const _$_EditShippingAddressRequest(
      {this.companyFullName, this.address, this.city, this.state, this.zip});

  factory _$_EditShippingAddressRequest.fromJson(Map<String, dynamic> json) =>
      _$$_EditShippingAddressRequestFromJson(json);

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
    return 'EditShippingAddressRequest(companyFullName: $companyFullName, address: $address, city: $city, state: $state, zip: $zip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditShippingAddressRequest &&
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
  _$$_EditShippingAddressRequestCopyWith<_$_EditShippingAddressRequest>
      get copyWith => __$$_EditShippingAddressRequestCopyWithImpl<
          _$_EditShippingAddressRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EditShippingAddressRequestToJson(
      this,
    );
  }
}

abstract class _EditShippingAddressRequest
    implements EditShippingAddressRequest {
  const factory _EditShippingAddressRequest(
      {final String? companyFullName,
      final String? address,
      final String? city,
      final String? state,
      final String? zip}) = _$_EditShippingAddressRequest;

  factory _EditShippingAddressRequest.fromJson(Map<String, dynamic> json) =
      _$_EditShippingAddressRequest.fromJson;

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
  _$$_EditShippingAddressRequestCopyWith<_$_EditShippingAddressRequest>
      get copyWith => throw _privateConstructorUsedError;
}

EditShippingAddressResponse _$EditShippingAddressResponseFromJson(
    Map<String, dynamic> json) {
  return _EditShippingAddressResponse.fromJson(json);
}

/// @nodoc
mixin _$EditShippingAddressResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditShippingAddressResponseCopyWith<EditShippingAddressResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditShippingAddressResponseCopyWith<$Res> {
  factory $EditShippingAddressResponseCopyWith(
          EditShippingAddressResponse value,
          $Res Function(EditShippingAddressResponse) then) =
      _$EditShippingAddressResponseCopyWithImpl<$Res,
          EditShippingAddressResponse>;
  @useResult
  $Res call({int code, String message, bool isSuccess, Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$EditShippingAddressResponseCopyWithImpl<$Res,
        $Val extends EditShippingAddressResponse>
    implements $EditShippingAddressResponseCopyWith<$Res> {
  _$EditShippingAddressResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_EditShippingAddressResponseCopyWith<$Res>
    implements $EditShippingAddressResponseCopyWith<$Res> {
  factory _$$_EditShippingAddressResponseCopyWith(
          _$_EditShippingAddressResponse value,
          $Res Function(_$_EditShippingAddressResponse) then) =
      __$$_EditShippingAddressResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, bool isSuccess, Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_EditShippingAddressResponseCopyWithImpl<$Res>
    extends _$EditShippingAddressResponseCopyWithImpl<$Res,
        _$_EditShippingAddressResponse>
    implements _$$_EditShippingAddressResponseCopyWith<$Res> {
  __$$_EditShippingAddressResponseCopyWithImpl(
      _$_EditShippingAddressResponse _value,
      $Res Function(_$_EditShippingAddressResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? isSuccess = null,
    Object? data = null,
  }) {
    return _then(_$_EditShippingAddressResponse(
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
class _$_EditShippingAddressResponse implements _EditShippingAddressResponse {
  const _$_EditShippingAddressResponse(
      {required this.code,
      required this.message,
      required this.isSuccess,
      required this.data});

  factory _$_EditShippingAddressResponse.fromJson(Map<String, dynamic> json) =>
      _$$_EditShippingAddressResponseFromJson(json);

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
    return 'EditShippingAddressResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditShippingAddressResponse &&
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
  _$$_EditShippingAddressResponseCopyWith<_$_EditShippingAddressResponse>
      get copyWith => __$$_EditShippingAddressResponseCopyWithImpl<
          _$_EditShippingAddressResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EditShippingAddressResponseToJson(
      this,
    );
  }
}

abstract class _EditShippingAddressResponse
    implements EditShippingAddressResponse {
  const factory _EditShippingAddressResponse(
      {required final int code,
      required final String message,
      required final bool isSuccess,
      required final Data data}) = _$_EditShippingAddressResponse;

  factory _EditShippingAddressResponse.fromJson(Map<String, dynamic> json) =
      _$_EditShippingAddressResponse.fromJson;

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
  _$$_EditShippingAddressResponseCopyWith<_$_EditShippingAddressResponse>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
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
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
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
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
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
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
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
    return _then(_$_Data(
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
class _$_Data implements _Data {
  const _$_Data(
      {@JsonKey(name: "_id") this.id,
      required this.companyFullName,
      required this.address,
      required this.city,
      required this.state,
      required this.zip});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

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
    return 'Data(id: $id, companyFullName: $companyFullName, address: $address, city: $city, state: $state, zip: $zip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
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
      {@JsonKey(name: "_id") final String? id,
      required final String companyFullName,
      required final String address,
      required final String city,
      required final String state,
      required final String zip}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

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
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}
