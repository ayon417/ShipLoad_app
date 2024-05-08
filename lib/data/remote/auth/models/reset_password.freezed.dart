// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResetPasswordRequest _$ResetPasswordRequestFromJson(Map<String, dynamic> json) {
  return _ResetPasswordRequest.fromJson(json);
}

/// @nodoc
mixin _$ResetPasswordRequest {
  String? get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResetPasswordRequestCopyWith<ResetPasswordRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordRequestCopyWith<$Res> {
  factory $ResetPasswordRequestCopyWith(ResetPasswordRequest value,
          $Res Function(ResetPasswordRequest) then) =
      _$ResetPasswordRequestCopyWithImpl<$Res, ResetPasswordRequest>;
  @useResult
  $Res call({String? password});
}

/// @nodoc
class _$ResetPasswordRequestCopyWithImpl<$Res,
        $Val extends ResetPasswordRequest>
    implements $ResetPasswordRequestCopyWith<$Res> {
  _$ResetPasswordRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResetPasswordRequestCopyWith<$Res>
    implements $ResetPasswordRequestCopyWith<$Res> {
  factory _$$_ResetPasswordRequestCopyWith(_$_ResetPasswordRequest value,
          $Res Function(_$_ResetPasswordRequest) then) =
      __$$_ResetPasswordRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? password});
}

/// @nodoc
class __$$_ResetPasswordRequestCopyWithImpl<$Res>
    extends _$ResetPasswordRequestCopyWithImpl<$Res, _$_ResetPasswordRequest>
    implements _$$_ResetPasswordRequestCopyWith<$Res> {
  __$$_ResetPasswordRequestCopyWithImpl(_$_ResetPasswordRequest _value,
      $Res Function(_$_ResetPasswordRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_$_ResetPasswordRequest(
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResetPasswordRequest implements _ResetPasswordRequest {
  const _$_ResetPasswordRequest({this.password});

  factory _$_ResetPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$$_ResetPasswordRequestFromJson(json);

  @override
  final String? password;

  @override
  String toString() {
    return 'ResetPasswordRequest(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResetPasswordRequest &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResetPasswordRequestCopyWith<_$_ResetPasswordRequest> get copyWith =>
      __$$_ResetPasswordRequestCopyWithImpl<_$_ResetPasswordRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResetPasswordRequestToJson(
      this,
    );
  }
}

abstract class _ResetPasswordRequest implements ResetPasswordRequest {
  const factory _ResetPasswordRequest({final String? password}) =
      _$_ResetPasswordRequest;

  factory _ResetPasswordRequest.fromJson(Map<String, dynamic> json) =
      _$_ResetPasswordRequest.fromJson;

  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$_ResetPasswordRequestCopyWith<_$_ResetPasswordRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

ResetPasswordResponse _$ResetPasswordResponseFromJson(
    Map<String, dynamic> json) {
  return _ResetPasswordResponse.fromJson(json);
}

/// @nodoc
mixin _$ResetPasswordResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResetPasswordResponseCopyWith<ResetPasswordResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordResponseCopyWith<$Res> {
  factory $ResetPasswordResponseCopyWith(ResetPasswordResponse value,
          $Res Function(ResetPasswordResponse) then) =
      _$ResetPasswordResponseCopyWithImpl<$Res, ResetPasswordResponse>;
  @useResult
  $Res call({int code, String message, bool isSuccess, Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$ResetPasswordResponseCopyWithImpl<$Res,
        $Val extends ResetPasswordResponse>
    implements $ResetPasswordResponseCopyWith<$Res> {
  _$ResetPasswordResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_ResetPasswordResponseCopyWith<$Res>
    implements $ResetPasswordResponseCopyWith<$Res> {
  factory _$$_ResetPasswordResponseCopyWith(_$_ResetPasswordResponse value,
          $Res Function(_$_ResetPasswordResponse) then) =
      __$$_ResetPasswordResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, bool isSuccess, Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ResetPasswordResponseCopyWithImpl<$Res>
    extends _$ResetPasswordResponseCopyWithImpl<$Res, _$_ResetPasswordResponse>
    implements _$$_ResetPasswordResponseCopyWith<$Res> {
  __$$_ResetPasswordResponseCopyWithImpl(_$_ResetPasswordResponse _value,
      $Res Function(_$_ResetPasswordResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? isSuccess = null,
    Object? data = null,
  }) {
    return _then(_$_ResetPasswordResponse(
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
class _$_ResetPasswordResponse implements _ResetPasswordResponse {
  const _$_ResetPasswordResponse(
      {required this.code,
      required this.message,
      required this.isSuccess,
      required this.data});

  factory _$_ResetPasswordResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ResetPasswordResponseFromJson(json);

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
    return 'ResetPasswordResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResetPasswordResponse &&
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
  _$$_ResetPasswordResponseCopyWith<_$_ResetPasswordResponse> get copyWith =>
      __$$_ResetPasswordResponseCopyWithImpl<_$_ResetPasswordResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResetPasswordResponseToJson(
      this,
    );
  }
}

abstract class _ResetPasswordResponse implements ResetPasswordResponse {
  const factory _ResetPasswordResponse(
      {required final int code,
      required final String message,
      required final bool isSuccess,
      required final Data data}) = _$_ResetPasswordResponse;

  factory _ResetPasswordResponse.fromJson(Map<String, dynamic> json) =
      _$_ResetPasswordResponse.fromJson;

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
  _$$_ResetPasswordResponseCopyWith<_$_ResetPasswordResponse> get copyWith =>
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
  List<dynamic> get savedLoad => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
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
      List<dynamic> savedLoad,
      String fullName,
      String email,
      String location,
      String phoneNumber,
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
    Object? savedLoad = null,
    Object? fullName = null,
    Object? email = null,
    Object? location = null,
    Object? phoneNumber = null,
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
      savedLoad: null == savedLoad
          ? _value.savedLoad
          : savedLoad // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
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
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
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
      List<dynamic> savedLoad,
      String fullName,
      String email,
      String location,
      String phoneNumber,
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
    Object? savedLoad = null,
    Object? fullName = null,
    Object? email = null,
    Object? location = null,
    Object? phoneNumber = null,
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
      savedLoad: null == savedLoad
          ? _value._savedLoad
          : savedLoad // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
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
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
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
      required final List<dynamic> savedLoad,
      required this.fullName,
      required this.email,
      required this.location,
      required this.phoneNumber,
      required this.id})
      : _savedLoad = savedLoad;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final String role;
  @override
  final bool isEmailVerified;
  @override
  final String passwordResetOtp;
  @override
  final String passwordResetTokenUrl;
  final List<dynamic> _savedLoad;
  @override
  List<dynamic> get savedLoad {
    if (_savedLoad is EqualUnmodifiableListView) return _savedLoad;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_savedLoad);
  }

  @override
  final String fullName;
  @override
  final String email;
  @override
  final String location;
  @override
  final String phoneNumber;
  @override
  final String id;

  @override
  String toString() {
    return 'Data(role: $role, isEmailVerified: $isEmailVerified, passwordResetOtp: $passwordResetOtp, passwordResetTokenUrl: $passwordResetTokenUrl, savedLoad: $savedLoad, fullName: $fullName, email: $email, location: $location, phoneNumber: $phoneNumber, id: $id)';
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
            const DeepCollectionEquality()
                .equals(other._savedLoad, _savedLoad) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      role,
      isEmailVerified,
      passwordResetOtp,
      passwordResetTokenUrl,
      const DeepCollectionEquality().hash(_savedLoad),
      fullName,
      email,
      location,
      phoneNumber,
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
      {required final String role,
      required final bool isEmailVerified,
      required final String passwordResetOtp,
      required final String passwordResetTokenUrl,
      required final List<dynamic> savedLoad,
      required final String fullName,
      required final String email,
      required final String location,
      required final String phoneNumber,
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
  List<dynamic> get savedLoad;
  @override
  String get fullName;
  @override
  String get email;
  @override
  String get location;
  @override
  String get phoneNumber;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}
