// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_otp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VerifyOtpRequest _$VerifyOtpRequestFromJson(Map<String, dynamic> json) {
  return _VerifyOtpRequest.fromJson(json);
}

/// @nodoc
mixin _$VerifyOtpRequest {
  String? get passwordResetOtp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyOtpRequestCopyWith<VerifyOtpRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyOtpRequestCopyWith<$Res> {
  factory $VerifyOtpRequestCopyWith(
          VerifyOtpRequest value, $Res Function(VerifyOtpRequest) then) =
      _$VerifyOtpRequestCopyWithImpl<$Res, VerifyOtpRequest>;
  @useResult
  $Res call({String? passwordResetOtp});
}

/// @nodoc
class _$VerifyOtpRequestCopyWithImpl<$Res, $Val extends VerifyOtpRequest>
    implements $VerifyOtpRequestCopyWith<$Res> {
  _$VerifyOtpRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordResetOtp = freezed,
  }) {
    return _then(_value.copyWith(
      passwordResetOtp: freezed == passwordResetOtp
          ? _value.passwordResetOtp
          : passwordResetOtp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VerifyOtpRequestCopyWith<$Res>
    implements $VerifyOtpRequestCopyWith<$Res> {
  factory _$$_VerifyOtpRequestCopyWith(
          _$_VerifyOtpRequest value, $Res Function(_$_VerifyOtpRequest) then) =
      __$$_VerifyOtpRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? passwordResetOtp});
}

/// @nodoc
class __$$_VerifyOtpRequestCopyWithImpl<$Res>
    extends _$VerifyOtpRequestCopyWithImpl<$Res, _$_VerifyOtpRequest>
    implements _$$_VerifyOtpRequestCopyWith<$Res> {
  __$$_VerifyOtpRequestCopyWithImpl(
      _$_VerifyOtpRequest _value, $Res Function(_$_VerifyOtpRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordResetOtp = freezed,
  }) {
    return _then(_$_VerifyOtpRequest(
      passwordResetOtp: freezed == passwordResetOtp
          ? _value.passwordResetOtp
          : passwordResetOtp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VerifyOtpRequest implements _VerifyOtpRequest {
  const _$_VerifyOtpRequest({this.passwordResetOtp});

  factory _$_VerifyOtpRequest.fromJson(Map<String, dynamic> json) =>
      _$$_VerifyOtpRequestFromJson(json);

  @override
  final String? passwordResetOtp;

  @override
  String toString() {
    return 'VerifyOtpRequest(passwordResetOtp: $passwordResetOtp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifyOtpRequest &&
            (identical(other.passwordResetOtp, passwordResetOtp) ||
                other.passwordResetOtp == passwordResetOtp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, passwordResetOtp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerifyOtpRequestCopyWith<_$_VerifyOtpRequest> get copyWith =>
      __$$_VerifyOtpRequestCopyWithImpl<_$_VerifyOtpRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VerifyOtpRequestToJson(
      this,
    );
  }
}

abstract class _VerifyOtpRequest implements VerifyOtpRequest {
  const factory _VerifyOtpRequest({final String? passwordResetOtp}) =
      _$_VerifyOtpRequest;

  factory _VerifyOtpRequest.fromJson(Map<String, dynamic> json) =
      _$_VerifyOtpRequest.fromJson;

  @override
  String? get passwordResetOtp;
  @override
  @JsonKey(ignore: true)
  _$$_VerifyOtpRequestCopyWith<_$_VerifyOtpRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

VerifyOtpResponse _$VerifyOtpResponseFromJson(Map<String, dynamic> json) {
  return _VerifyOtpResponse.fromJson(json);
}

/// @nodoc
mixin _$VerifyOtpResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifyOtpResponseCopyWith<VerifyOtpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyOtpResponseCopyWith<$Res> {
  factory $VerifyOtpResponseCopyWith(
          VerifyOtpResponse value, $Res Function(VerifyOtpResponse) then) =
      _$VerifyOtpResponseCopyWithImpl<$Res, VerifyOtpResponse>;
  @useResult
  $Res call(
      {int code,
      String message,
      bool isSuccess,
      Data data,
      String accessToken,
      String refreshToken});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$VerifyOtpResponseCopyWithImpl<$Res, $Val extends VerifyOtpResponse>
    implements $VerifyOtpResponseCopyWith<$Res> {
  _$VerifyOtpResponseCopyWithImpl(this._value, this._then);

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
    Object? accessToken = null,
    Object? refreshToken = null,
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
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_VerifyOtpResponseCopyWith<$Res>
    implements $VerifyOtpResponseCopyWith<$Res> {
  factory _$$_VerifyOtpResponseCopyWith(_$_VerifyOtpResponse value,
          $Res Function(_$_VerifyOtpResponse) then) =
      __$$_VerifyOtpResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int code,
      String message,
      bool isSuccess,
      Data data,
      String accessToken,
      String refreshToken});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_VerifyOtpResponseCopyWithImpl<$Res>
    extends _$VerifyOtpResponseCopyWithImpl<$Res, _$_VerifyOtpResponse>
    implements _$$_VerifyOtpResponseCopyWith<$Res> {
  __$$_VerifyOtpResponseCopyWithImpl(
      _$_VerifyOtpResponse _value, $Res Function(_$_VerifyOtpResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? isSuccess = null,
    Object? data = null,
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$_VerifyOtpResponse(
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
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VerifyOtpResponse implements _VerifyOtpResponse {
  const _$_VerifyOtpResponse(
      {required this.code,
      required this.message,
      required this.isSuccess,
      required this.data,
      required this.accessToken,
      required this.refreshToken});

  factory _$_VerifyOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$$_VerifyOtpResponseFromJson(json);

  @override
  final int code;
  @override
  final String message;
  @override
  final bool isSuccess;
  @override
  final Data data;
  @override
  final String accessToken;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'VerifyOtpResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data, accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifyOtpResponse &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, message, isSuccess, data, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerifyOtpResponseCopyWith<_$_VerifyOtpResponse> get copyWith =>
      __$$_VerifyOtpResponseCopyWithImpl<_$_VerifyOtpResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VerifyOtpResponseToJson(
      this,
    );
  }
}

abstract class _VerifyOtpResponse implements VerifyOtpResponse {
  const factory _VerifyOtpResponse(
      {required final int code,
      required final String message,
      required final bool isSuccess,
      required final Data data,
      required final String accessToken,
      required final String refreshToken}) = _$_VerifyOtpResponse;

  factory _VerifyOtpResponse.fromJson(Map<String, dynamic> json) =
      _$_VerifyOtpResponse.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  bool get isSuccess;
  @override
  Data get data;
  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$_VerifyOtpResponseCopyWith<_$_VerifyOtpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String get role => throw _privateConstructorUsedError;
  bool get isEmailVerified => throw _privateConstructorUsedError;
  String get passwordResetOtp => throw _privateConstructorUsedError;
  String get passwordResetTokenUrl => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

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
      {String role,
      bool isEmailVerified,
      String passwordResetOtp,
      String passwordResetTokenUrl,
      String fullName,
      String email,
      String location,
      String id});
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
    Object? role = null,
    Object? isEmailVerified = null,
    Object? passwordResetOtp = null,
    Object? passwordResetTokenUrl = null,
    Object? fullName = null,
    Object? email = null,
    Object? location = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      isEmailVerified: null == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordResetOtp: null == passwordResetOtp
          ? _value.passwordResetOtp
          : passwordResetOtp // ignore: cast_nullable_to_non_nullable
              as String,
      passwordResetTokenUrl: null == passwordResetTokenUrl
          ? _value.passwordResetTokenUrl
          : passwordResetTokenUrl // ignore: cast_nullable_to_non_nullable
              as String,
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
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
      {String role,
      bool isEmailVerified,
      String passwordResetOtp,
      String passwordResetTokenUrl,
      String fullName,
      String email,
      String location,
      String id});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? isEmailVerified = null,
    Object? passwordResetOtp = null,
    Object? passwordResetTokenUrl = null,
    Object? fullName = null,
    Object? email = null,
    Object? location = null,
    Object? id = null,
  }) {
    return _then(_$_Data(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      isEmailVerified: null == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      passwordResetOtp: null == passwordResetOtp
          ? _value.passwordResetOtp
          : passwordResetOtp // ignore: cast_nullable_to_non_nullable
              as String,
      passwordResetTokenUrl: null == passwordResetTokenUrl
          ? _value.passwordResetTokenUrl
          : passwordResetTokenUrl // ignore: cast_nullable_to_non_nullable
              as String,
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
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {required this.role,
      required this.isEmailVerified,
      required this.passwordResetOtp,
      required this.passwordResetTokenUrl,
      required this.fullName,
      required this.email,
      required this.location,
      required this.id});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final String role;
  @override
  final bool isEmailVerified;
  @override
  final String passwordResetOtp;
  @override
  final String passwordResetTokenUrl;
  @override
  final String fullName;
  @override
  final String email;
  @override
  final String location;
  @override
  final String id;

  @override
  String toString() {
    return 'Data(role: $role, isEmailVerified: $isEmailVerified, passwordResetOtp: $passwordResetOtp, passwordResetTokenUrl: $passwordResetTokenUrl, fullName: $fullName, email: $email, location: $location, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            (identical(other.passwordResetOtp, passwordResetOtp) ||
                other.passwordResetOtp == passwordResetOtp) &&
            (identical(other.passwordResetTokenUrl, passwordResetTokenUrl) ||
                other.passwordResetTokenUrl == passwordResetTokenUrl) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, role, isEmailVerified,
      passwordResetOtp, passwordResetTokenUrl, fullName, email, location, id);

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
      {required final String role,
      required final bool isEmailVerified,
      required final String passwordResetOtp,
      required final String passwordResetTokenUrl,
      required final String fullName,
      required final String email,
      required final String location,
      required final String id}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  String get role;
  @override
  bool get isEmailVerified;
  @override
  String get passwordResetOtp;
  @override
  String get passwordResetTokenUrl;
  @override
  String get fullName;
  @override
  String get email;
  @override
  String get location;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}
