// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_verification_mail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SendVerificationMailRequest _$SendVerificationMailRequestFromJson(
    Map<String, dynamic> json) {
  return _SendVerificationMailRequest.fromJson(json);
}

/// @nodoc
mixin _$SendVerificationMailRequest {
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendVerificationMailRequestCopyWith<SendVerificationMailRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendVerificationMailRequestCopyWith<$Res> {
  factory $SendVerificationMailRequestCopyWith(
          SendVerificationMailRequest value,
          $Res Function(SendVerificationMailRequest) then) =
      _$SendVerificationMailRequestCopyWithImpl<$Res,
          SendVerificationMailRequest>;
  @useResult
  $Res call({String? email});
}

/// @nodoc
class _$SendVerificationMailRequestCopyWithImpl<$Res,
        $Val extends SendVerificationMailRequest>
    implements $SendVerificationMailRequestCopyWith<$Res> {
  _$SendVerificationMailRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SendVerificationMailRequestCopyWith<$Res>
    implements $SendVerificationMailRequestCopyWith<$Res> {
  factory _$$_SendVerificationMailRequestCopyWith(
          _$_SendVerificationMailRequest value,
          $Res Function(_$_SendVerificationMailRequest) then) =
      __$$_SendVerificationMailRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? email});
}

/// @nodoc
class __$$_SendVerificationMailRequestCopyWithImpl<$Res>
    extends _$SendVerificationMailRequestCopyWithImpl<$Res,
        _$_SendVerificationMailRequest>
    implements _$$_SendVerificationMailRequestCopyWith<$Res> {
  __$$_SendVerificationMailRequestCopyWithImpl(
      _$_SendVerificationMailRequest _value,
      $Res Function(_$_SendVerificationMailRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_$_SendVerificationMailRequest(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SendVerificationMailRequest implements _SendVerificationMailRequest {
  const _$_SendVerificationMailRequest({this.email});

  factory _$_SendVerificationMailRequest.fromJson(Map<String, dynamic> json) =>
      _$$_SendVerificationMailRequestFromJson(json);

  @override
  final String? email;

  @override
  String toString() {
    return 'SendVerificationMailRequest(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendVerificationMailRequest &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendVerificationMailRequestCopyWith<_$_SendVerificationMailRequest>
      get copyWith => __$$_SendVerificationMailRequestCopyWithImpl<
          _$_SendVerificationMailRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SendVerificationMailRequestToJson(
      this,
    );
  }
}

abstract class _SendVerificationMailRequest
    implements SendVerificationMailRequest {
  const factory _SendVerificationMailRequest({final String? email}) =
      _$_SendVerificationMailRequest;

  factory _SendVerificationMailRequest.fromJson(Map<String, dynamic> json) =
      _$_SendVerificationMailRequest.fromJson;

  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$_SendVerificationMailRequestCopyWith<_$_SendVerificationMailRequest>
      get copyWith => throw _privateConstructorUsedError;
}

SendVerificationMailResponse _$SendVerificationMailResponseFromJson(
    Map<String, dynamic> json) {
  return _SendVerificationMailResponse.fromJson(json);
}

/// @nodoc
mixin _$SendVerificationMailResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendVerificationMailResponseCopyWith<SendVerificationMailResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendVerificationMailResponseCopyWith<$Res> {
  factory $SendVerificationMailResponseCopyWith(
          SendVerificationMailResponse value,
          $Res Function(SendVerificationMailResponse) then) =
      _$SendVerificationMailResponseCopyWithImpl<$Res,
          SendVerificationMailResponse>;
  @useResult
  $Res call({int code, String message, bool isSuccess, Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$SendVerificationMailResponseCopyWithImpl<$Res,
        $Val extends SendVerificationMailResponse>
    implements $SendVerificationMailResponseCopyWith<$Res> {
  _$SendVerificationMailResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_SendVerificationMailResponseCopyWith<$Res>
    implements $SendVerificationMailResponseCopyWith<$Res> {
  factory _$$_SendVerificationMailResponseCopyWith(
          _$_SendVerificationMailResponse value,
          $Res Function(_$_SendVerificationMailResponse) then) =
      __$$_SendVerificationMailResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, bool isSuccess, Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SendVerificationMailResponseCopyWithImpl<$Res>
    extends _$SendVerificationMailResponseCopyWithImpl<$Res,
        _$_SendVerificationMailResponse>
    implements _$$_SendVerificationMailResponseCopyWith<$Res> {
  __$$_SendVerificationMailResponseCopyWithImpl(
      _$_SendVerificationMailResponse _value,
      $Res Function(_$_SendVerificationMailResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? isSuccess = null,
    Object? data = null,
  }) {
    return _then(_$_SendVerificationMailResponse(
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
class _$_SendVerificationMailResponse implements _SendVerificationMailResponse {
  const _$_SendVerificationMailResponse(
      {required this.code,
      required this.message,
      required this.isSuccess,
      required this.data});

  factory _$_SendVerificationMailResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SendVerificationMailResponseFromJson(json);

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
    return 'SendVerificationMailResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendVerificationMailResponse &&
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
  _$$_SendVerificationMailResponseCopyWith<_$_SendVerificationMailResponse>
      get copyWith => __$$_SendVerificationMailResponseCopyWithImpl<
          _$_SendVerificationMailResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SendVerificationMailResponseToJson(
      this,
    );
  }
}

abstract class _SendVerificationMailResponse
    implements SendVerificationMailResponse {
  const factory _SendVerificationMailResponse(
      {required final int code,
      required final String message,
      required final bool isSuccess,
      required final Data data}) = _$_SendVerificationMailResponse;

  factory _SendVerificationMailResponse.fromJson(Map<String, dynamic> json) =
      _$_SendVerificationMailResponse.fromJson;

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
  _$$_SendVerificationMailResponseCopyWith<_$_SendVerificationMailResponse>
      get copyWith => throw _privateConstructorUsedError;
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
