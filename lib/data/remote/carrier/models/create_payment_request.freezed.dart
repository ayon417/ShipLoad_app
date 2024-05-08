// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_payment_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreatePaymentRequest _$CreatePaymentRequestFromJson(Map<String, dynamic> json) {
  return _CreatePaymentRequest.fromJson(json);
}

/// @nodoc
mixin _$CreatePaymentRequest {
  String? get loadId => throw _privateConstructorUsedError;
  String? get shipperId => throw _privateConstructorUsedError;
  int? get rate => throw _privateConstructorUsedError;
  String? get docUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePaymentRequestCopyWith<CreatePaymentRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePaymentRequestCopyWith<$Res> {
  factory $CreatePaymentRequestCopyWith(CreatePaymentRequest value,
          $Res Function(CreatePaymentRequest) then) =
      _$CreatePaymentRequestCopyWithImpl<$Res, CreatePaymentRequest>;
  @useResult
  $Res call({String? loadId, String? shipperId, int? rate, String? docUrl});
}

/// @nodoc
class _$CreatePaymentRequestCopyWithImpl<$Res,
        $Val extends CreatePaymentRequest>
    implements $CreatePaymentRequestCopyWith<$Res> {
  _$CreatePaymentRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadId = freezed,
    Object? shipperId = freezed,
    Object? rate = freezed,
    Object? docUrl = freezed,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreatePaymentRequestCopyWith<$Res>
    implements $CreatePaymentRequestCopyWith<$Res> {
  factory _$$_CreatePaymentRequestCopyWith(_$_CreatePaymentRequest value,
          $Res Function(_$_CreatePaymentRequest) then) =
      __$$_CreatePaymentRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? loadId, String? shipperId, int? rate, String? docUrl});
}

/// @nodoc
class __$$_CreatePaymentRequestCopyWithImpl<$Res>
    extends _$CreatePaymentRequestCopyWithImpl<$Res, _$_CreatePaymentRequest>
    implements _$$_CreatePaymentRequestCopyWith<$Res> {
  __$$_CreatePaymentRequestCopyWithImpl(_$_CreatePaymentRequest _value,
      $Res Function(_$_CreatePaymentRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadId = freezed,
    Object? shipperId = freezed,
    Object? rate = freezed,
    Object? docUrl = freezed,
  }) {
    return _then(_$_CreatePaymentRequest(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreatePaymentRequest implements _CreatePaymentRequest {
  const _$_CreatePaymentRequest(
      {this.loadId, this.shipperId, this.rate, this.docUrl});

  factory _$_CreatePaymentRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CreatePaymentRequestFromJson(json);

  @override
  final String? loadId;
  @override
  final String? shipperId;
  @override
  final int? rate;
  @override
  final String? docUrl;

  @override
  String toString() {
    return 'CreatePaymentRequest(loadId: $loadId, shipperId: $shipperId, rate: $rate, docUrl: $docUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatePaymentRequest &&
            (identical(other.loadId, loadId) || other.loadId == loadId) &&
            (identical(other.shipperId, shipperId) ||
                other.shipperId == shipperId) &&
            (identical(other.rate, rate) || other.rate == rate) &&
            (identical(other.docUrl, docUrl) || other.docUrl == docUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, loadId, shipperId, rate, docUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreatePaymentRequestCopyWith<_$_CreatePaymentRequest> get copyWith =>
      __$$_CreatePaymentRequestCopyWithImpl<_$_CreatePaymentRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreatePaymentRequestToJson(
      this,
    );
  }
}

abstract class _CreatePaymentRequest implements CreatePaymentRequest {
  const factory _CreatePaymentRequest(
      {final String? loadId,
      final String? shipperId,
      final int? rate,
      final String? docUrl}) = _$_CreatePaymentRequest;

  factory _CreatePaymentRequest.fromJson(Map<String, dynamic> json) =
      _$_CreatePaymentRequest.fromJson;

  @override
  String? get loadId;
  @override
  String? get shipperId;
  @override
  int? get rate;
  @override
  String? get docUrl;
  @override
  @JsonKey(ignore: true)
  _$$_CreatePaymentRequestCopyWith<_$_CreatePaymentRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

CreatePaymentRequestResponse _$CreatePaymentRequestResponseFromJson(
    Map<String, dynamic> json) {
  return _CreatePaymentRequestResponse.fromJson(json);
}

/// @nodoc
mixin _$CreatePaymentRequestResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePaymentRequestResponseCopyWith<CreatePaymentRequestResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePaymentRequestResponseCopyWith<$Res> {
  factory $CreatePaymentRequestResponseCopyWith(
          CreatePaymentRequestResponse value,
          $Res Function(CreatePaymentRequestResponse) then) =
      _$CreatePaymentRequestResponseCopyWithImpl<$Res,
          CreatePaymentRequestResponse>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CreatePaymentRequestResponseCopyWithImpl<$Res,
        $Val extends CreatePaymentRequestResponse>
    implements $CreatePaymentRequestResponseCopyWith<$Res> {
  _$CreatePaymentRequestResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_CreatePaymentRequestResponseCopyWith<$Res>
    implements $CreatePaymentRequestResponseCopyWith<$Res> {
  factory _$$_CreatePaymentRequestResponseCopyWith(
          _$_CreatePaymentRequestResponse value,
          $Res Function(_$_CreatePaymentRequestResponse) then) =
      __$$_CreatePaymentRequestResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_CreatePaymentRequestResponseCopyWithImpl<$Res>
    extends _$CreatePaymentRequestResponseCopyWithImpl<$Res,
        _$_CreatePaymentRequestResponse>
    implements _$$_CreatePaymentRequestResponseCopyWith<$Res> {
  __$$_CreatePaymentRequestResponseCopyWithImpl(
      _$_CreatePaymentRequestResponse _value,
      $Res Function(_$_CreatePaymentRequestResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_CreatePaymentRequestResponse(
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
class _$_CreatePaymentRequestResponse implements _CreatePaymentRequestResponse {
  const _$_CreatePaymentRequestResponse(
      {this.code, this.message, this.isSuccess, this.data});

  factory _$_CreatePaymentRequestResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CreatePaymentRequestResponseFromJson(json);

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
    return 'CreatePaymentRequestResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatePaymentRequestResponse &&
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
  _$$_CreatePaymentRequestResponseCopyWith<_$_CreatePaymentRequestResponse>
      get copyWith => __$$_CreatePaymentRequestResponseCopyWithImpl<
          _$_CreatePaymentRequestResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreatePaymentRequestResponseToJson(
      this,
    );
  }
}

abstract class _CreatePaymentRequestResponse
    implements CreatePaymentRequestResponse {
  const factory _CreatePaymentRequestResponse(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final Data? data}) = _$_CreatePaymentRequestResponse;

  factory _CreatePaymentRequestResponse.fromJson(Map<String, dynamic> json) =
      _$_CreatePaymentRequestResponse.fromJson;

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
  _$$_CreatePaymentRequestResponseCopyWith<_$_CreatePaymentRequestResponse>
      get copyWith => throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  bool? get paymentStatus => throw _privateConstructorUsedError;
  String? get paymentMode => throw _privateConstructorUsedError;
  String? get loadId => throw _privateConstructorUsedError;
  String? get shipperId => throw _privateConstructorUsedError;
  int? get rate => throw _privateConstructorUsedError;
  String? get docUrl => throw _privateConstructorUsedError;
  String? get requestedBy => throw _privateConstructorUsedError;
  String? get requestedTo => throw _privateConstructorUsedError;
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
      {bool? paymentStatus,
      String? paymentMode,
      String? loadId,
      String? shipperId,
      int? rate,
      String? docUrl,
      String? requestedBy,
      String? requestedTo,
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
      {bool? paymentStatus,
      String? paymentMode,
      String? loadId,
      String? shipperId,
      int? rate,
      String? docUrl,
      String? requestedBy,
      String? requestedTo,
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
    return _then(_$_Data(
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
      {this.paymentStatus,
      this.paymentMode,
      this.loadId,
      this.shipperId,
      this.rate,
      this.docUrl,
      this.requestedBy,
      this.requestedTo,
      this.id});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

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
  final String? requestedTo;
  @override
  final String? id;

  @override
  String toString() {
    return 'Data(paymentStatus: $paymentStatus, paymentMode: $paymentMode, loadId: $loadId, shipperId: $shipperId, rate: $rate, docUrl: $docUrl, requestedBy: $requestedBy, requestedTo: $requestedTo, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
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
      {final bool? paymentStatus,
      final String? paymentMode,
      final String? loadId,
      final String? shipperId,
      final int? rate,
      final String? docUrl,
      final String? requestedBy,
      final String? requestedTo,
      final String? id}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

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
  String? get requestedTo;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}
