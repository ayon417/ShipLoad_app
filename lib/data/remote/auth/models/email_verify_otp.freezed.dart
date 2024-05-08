// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_verify_otp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmailVerifyOtpRequest _$EmailVerifyOtpRequestFromJson(
    Map<String, dynamic> json) {
  return _EmailVerifyOtpRequest.fromJson(json);
}

/// @nodoc
mixin _$EmailVerifyOtpRequest {
  String? get otp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailVerifyOtpRequestCopyWith<EmailVerifyOtpRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailVerifyOtpRequestCopyWith<$Res> {
  factory $EmailVerifyOtpRequestCopyWith(EmailVerifyOtpRequest value,
          $Res Function(EmailVerifyOtpRequest) then) =
      _$EmailVerifyOtpRequestCopyWithImpl<$Res, EmailVerifyOtpRequest>;
  @useResult
  $Res call({String? otp});
}

/// @nodoc
class _$EmailVerifyOtpRequestCopyWithImpl<$Res,
        $Val extends EmailVerifyOtpRequest>
    implements $EmailVerifyOtpRequestCopyWith<$Res> {
  _$EmailVerifyOtpRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = freezed,
  }) {
    return _then(_value.copyWith(
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmailVerifyOtpRequestCopyWith<$Res>
    implements $EmailVerifyOtpRequestCopyWith<$Res> {
  factory _$$_EmailVerifyOtpRequestCopyWith(_$_EmailVerifyOtpRequest value,
          $Res Function(_$_EmailVerifyOtpRequest) then) =
      __$$_EmailVerifyOtpRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? otp});
}

/// @nodoc
class __$$_EmailVerifyOtpRequestCopyWithImpl<$Res>
    extends _$EmailVerifyOtpRequestCopyWithImpl<$Res, _$_EmailVerifyOtpRequest>
    implements _$$_EmailVerifyOtpRequestCopyWith<$Res> {
  __$$_EmailVerifyOtpRequestCopyWithImpl(_$_EmailVerifyOtpRequest _value,
      $Res Function(_$_EmailVerifyOtpRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = freezed,
  }) {
    return _then(_$_EmailVerifyOtpRequest(
      otp: freezed == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmailVerifyOtpRequest implements _EmailVerifyOtpRequest {
  const _$_EmailVerifyOtpRequest({this.otp});

  factory _$_EmailVerifyOtpRequest.fromJson(Map<String, dynamic> json) =>
      _$$_EmailVerifyOtpRequestFromJson(json);

  @override
  final String? otp;

  @override
  String toString() {
    return 'EmailVerifyOtpRequest(otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailVerifyOtpRequest &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailVerifyOtpRequestCopyWith<_$_EmailVerifyOtpRequest> get copyWith =>
      __$$_EmailVerifyOtpRequestCopyWithImpl<_$_EmailVerifyOtpRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmailVerifyOtpRequestToJson(
      this,
    );
  }
}

abstract class _EmailVerifyOtpRequest implements EmailVerifyOtpRequest {
  const factory _EmailVerifyOtpRequest({final String? otp}) =
      _$_EmailVerifyOtpRequest;

  factory _EmailVerifyOtpRequest.fromJson(Map<String, dynamic> json) =
      _$_EmailVerifyOtpRequest.fromJson;

  @override
  String? get otp;
  @override
  @JsonKey(ignore: true)
  _$$_EmailVerifyOtpRequestCopyWith<_$_EmailVerifyOtpRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

EmailVerifyOtpResponse _$EmailVerifyOtpResponseFromJson(
    Map<String, dynamic> json) {
  return _EmailVerifyOtpResponse.fromJson(json);
}

/// @nodoc
mixin _$EmailVerifyOtpResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmailVerifyOtpResponseCopyWith<EmailVerifyOtpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailVerifyOtpResponseCopyWith<$Res> {
  factory $EmailVerifyOtpResponseCopyWith(EmailVerifyOtpResponse value,
          $Res Function(EmailVerifyOtpResponse) then) =
      _$EmailVerifyOtpResponseCopyWithImpl<$Res, EmailVerifyOtpResponse>;
  @useResult
  $Res call({int code, String message, bool isSuccess, Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$EmailVerifyOtpResponseCopyWithImpl<$Res,
        $Val extends EmailVerifyOtpResponse>
    implements $EmailVerifyOtpResponseCopyWith<$Res> {
  _$EmailVerifyOtpResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_EmailVerifyOtpResponseCopyWith<$Res>
    implements $EmailVerifyOtpResponseCopyWith<$Res> {
  factory _$$_EmailVerifyOtpResponseCopyWith(_$_EmailVerifyOtpResponse value,
          $Res Function(_$_EmailVerifyOtpResponse) then) =
      __$$_EmailVerifyOtpResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, bool isSuccess, Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_EmailVerifyOtpResponseCopyWithImpl<$Res>
    extends _$EmailVerifyOtpResponseCopyWithImpl<$Res,
        _$_EmailVerifyOtpResponse>
    implements _$$_EmailVerifyOtpResponseCopyWith<$Res> {
  __$$_EmailVerifyOtpResponseCopyWithImpl(_$_EmailVerifyOtpResponse _value,
      $Res Function(_$_EmailVerifyOtpResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? isSuccess = null,
    Object? data = null,
  }) {
    return _then(_$_EmailVerifyOtpResponse(
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
class _$_EmailVerifyOtpResponse implements _EmailVerifyOtpResponse {
  const _$_EmailVerifyOtpResponse(
      {required this.code,
      required this.message,
      required this.isSuccess,
      required this.data});

  factory _$_EmailVerifyOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$$_EmailVerifyOtpResponseFromJson(json);

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
    return 'EmailVerifyOtpResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailVerifyOtpResponse &&
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
  _$$_EmailVerifyOtpResponseCopyWith<_$_EmailVerifyOtpResponse> get copyWith =>
      __$$_EmailVerifyOtpResponseCopyWithImpl<_$_EmailVerifyOtpResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmailVerifyOtpResponseToJson(
      this,
    );
  }
}

abstract class _EmailVerifyOtpResponse implements EmailVerifyOtpResponse {
  const factory _EmailVerifyOtpResponse(
      {required final int code,
      required final String message,
      required final bool isSuccess,
      required final Data data}) = _$_EmailVerifyOtpResponse;

  factory _EmailVerifyOtpResponse.fromJson(Map<String, dynamic> json) =
      _$_EmailVerifyOtpResponse.fromJson;

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
  _$$_EmailVerifyOtpResponseCopyWith<_$_EmailVerifyOtpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data();

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  String toString() {
    return 'Data()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Data);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data() = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;
}
