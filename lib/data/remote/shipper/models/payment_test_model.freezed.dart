// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_test_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentTestRequest _$PaymentTestRequestFromJson(Map<String, dynamic> json) {
  return _PaymentTestRequest.fromJson(json);
}

/// @nodoc
mixin _$PaymentTestRequest {
  String get productId => throw _privateConstructorUsedError;
  String get priceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentTestRequestCopyWith<PaymentTestRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentTestRequestCopyWith<$Res> {
  factory $PaymentTestRequestCopyWith(
          PaymentTestRequest value, $Res Function(PaymentTestRequest) then) =
      _$PaymentTestRequestCopyWithImpl<$Res, PaymentTestRequest>;
  @useResult
  $Res call({String productId, String priceId});
}

/// @nodoc
class _$PaymentTestRequestCopyWithImpl<$Res, $Val extends PaymentTestRequest>
    implements $PaymentTestRequestCopyWith<$Res> {
  _$PaymentTestRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? priceId = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      priceId: null == priceId
          ? _value.priceId
          : priceId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentTestRequestCopyWith<$Res>
    implements $PaymentTestRequestCopyWith<$Res> {
  factory _$$_PaymentTestRequestCopyWith(_$_PaymentTestRequest value,
          $Res Function(_$_PaymentTestRequest) then) =
      __$$_PaymentTestRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String productId, String priceId});
}

/// @nodoc
class __$$_PaymentTestRequestCopyWithImpl<$Res>
    extends _$PaymentTestRequestCopyWithImpl<$Res, _$_PaymentTestRequest>
    implements _$$_PaymentTestRequestCopyWith<$Res> {
  __$$_PaymentTestRequestCopyWithImpl(
      _$_PaymentTestRequest _value, $Res Function(_$_PaymentTestRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? priceId = null,
  }) {
    return _then(_$_PaymentTestRequest(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as String,
      priceId: null == priceId
          ? _value.priceId
          : priceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentTestRequest implements _PaymentTestRequest {
  const _$_PaymentTestRequest({required this.productId, required this.priceId});

  factory _$_PaymentTestRequest.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentTestRequestFromJson(json);

  @override
  final String productId;
  @override
  final String priceId;

  @override
  String toString() {
    return 'PaymentTestRequest(productId: $productId, priceId: $priceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentTestRequest &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.priceId, priceId) || other.priceId == priceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId, priceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentTestRequestCopyWith<_$_PaymentTestRequest> get copyWith =>
      __$$_PaymentTestRequestCopyWithImpl<_$_PaymentTestRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentTestRequestToJson(
      this,
    );
  }
}

abstract class _PaymentTestRequest implements PaymentTestRequest {
  const factory _PaymentTestRequest(
      {required final String productId,
      required final String priceId}) = _$_PaymentTestRequest;

  factory _PaymentTestRequest.fromJson(Map<String, dynamic> json) =
      _$_PaymentTestRequest.fromJson;

  @override
  String get productId;
  @override
  String get priceId;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentTestRequestCopyWith<_$_PaymentTestRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

PaymentTestResponse _$PaymentTestResponseFromJson(Map<String, dynamic> json) {
  return _PaymentTestResponse.fromJson(json);
}

/// @nodoc
mixin _$PaymentTestResponse {
  bool get success => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentTestResponseCopyWith<PaymentTestResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentTestResponseCopyWith<$Res> {
  factory $PaymentTestResponseCopyWith(
          PaymentTestResponse value, $Res Function(PaymentTestResponse) then) =
      _$PaymentTestResponseCopyWithImpl<$Res, PaymentTestResponse>;
  @useResult
  $Res call({bool success, int status, String message, Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$PaymentTestResponseCopyWithImpl<$Res, $Val extends PaymentTestResponse>
    implements $PaymentTestResponseCopyWith<$Res> {
  _$PaymentTestResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_PaymentTestResponseCopyWith<$Res>
    implements $PaymentTestResponseCopyWith<$Res> {
  factory _$$_PaymentTestResponseCopyWith(_$_PaymentTestResponse value,
          $Res Function(_$_PaymentTestResponse) then) =
      __$$_PaymentTestResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, int status, String message, Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_PaymentTestResponseCopyWithImpl<$Res>
    extends _$PaymentTestResponseCopyWithImpl<$Res, _$_PaymentTestResponse>
    implements _$$_PaymentTestResponseCopyWith<$Res> {
  __$$_PaymentTestResponseCopyWithImpl(_$_PaymentTestResponse _value,
      $Res Function(_$_PaymentTestResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? status = null,
    Object? message = null,
    Object? data = null,
  }) {
    return _then(_$_PaymentTestResponse(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentTestResponse implements _PaymentTestResponse {
  const _$_PaymentTestResponse(
      {required this.success,
      required this.status,
      required this.message,
      required this.data});

  factory _$_PaymentTestResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentTestResponseFromJson(json);

  @override
  final bool success;
  @override
  final int status;
  @override
  final String message;
  @override
  final Data data;

  @override
  String toString() {
    return 'PaymentTestResponse(success: $success, status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentTestResponse &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentTestResponseCopyWith<_$_PaymentTestResponse> get copyWith =>
      __$$_PaymentTestResponseCopyWithImpl<_$_PaymentTestResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentTestResponseToJson(
      this,
    );
  }
}

abstract class _PaymentTestResponse implements PaymentTestResponse {
  const factory _PaymentTestResponse(
      {required final bool success,
      required final int status,
      required final String message,
      required final Data data}) = _$_PaymentTestResponse;

  factory _PaymentTestResponse.fromJson(Map<String, dynamic> json) =
      _$_PaymentTestResponse.fromJson;

  @override
  bool get success;
  @override
  int get status;
  @override
  String get message;
  @override
  Data get data;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentTestResponseCopyWith<_$_PaymentTestResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String get session => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({String session});
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
    Object? session = null,
  }) {
    return _then(_value.copyWith(
      session: null == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
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
  $Res call({String session});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? session = null,
  }) {
    return _then(_$_Data(
      session: null == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data({required this.session});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final String session;

  @override
  String toString() {
    return 'Data(session: $session)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            (identical(other.session, session) || other.session == session));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, session);

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
  const factory _Data({required final String session}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  String get session;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}
