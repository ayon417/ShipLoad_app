// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EditProfileRequest _$EditProfileRequestFromJson(Map<String, dynamic> json) {
  return _EditProfileRequest.fromJson(json);
}

/// @nodoc
mixin _$EditProfileRequest {
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get profilePicUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditProfileRequestCopyWith<EditProfileRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileRequestCopyWith<$Res> {
  factory $EditProfileRequestCopyWith(
          EditProfileRequest value, $Res Function(EditProfileRequest) then) =
      _$EditProfileRequestCopyWithImpl<$Res, EditProfileRequest>;
  @useResult
  $Res call(
      {String? name,
      String? email,
      String? phoneNumber,
      String? profilePicUrl});
}

/// @nodoc
class _$EditProfileRequestCopyWithImpl<$Res, $Val extends EditProfileRequest>
    implements $EditProfileRequestCopyWith<$Res> {
  _$EditProfileRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? profilePicUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicUrl: freezed == profilePicUrl
          ? _value.profilePicUrl
          : profilePicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EditProfileRequestCopyWith<$Res>
    implements $EditProfileRequestCopyWith<$Res> {
  factory _$$_EditProfileRequestCopyWith(_$_EditProfileRequest value,
          $Res Function(_$_EditProfileRequest) then) =
      __$$_EditProfileRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? email,
      String? phoneNumber,
      String? profilePicUrl});
}

/// @nodoc
class __$$_EditProfileRequestCopyWithImpl<$Res>
    extends _$EditProfileRequestCopyWithImpl<$Res, _$_EditProfileRequest>
    implements _$$_EditProfileRequestCopyWith<$Res> {
  __$$_EditProfileRequestCopyWithImpl(
      _$_EditProfileRequest _value, $Res Function(_$_EditProfileRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? profilePicUrl = freezed,
  }) {
    return _then(_$_EditProfileRequest(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicUrl: freezed == profilePicUrl
          ? _value.profilePicUrl
          : profilePicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EditProfileRequest implements _EditProfileRequest {
  const _$_EditProfileRequest(
      {this.name, this.email, this.phoneNumber, this.profilePicUrl});

  factory _$_EditProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$$_EditProfileRequestFromJson(json);

  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? phoneNumber;
  @override
  final String? profilePicUrl;

  @override
  String toString() {
    return 'EditProfileRequest(name: $name, email: $email, phoneNumber: $phoneNumber, profilePicUrl: $profilePicUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditProfileRequest &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.profilePicUrl, profilePicUrl) ||
                other.profilePicUrl == profilePicUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, phoneNumber, profilePicUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditProfileRequestCopyWith<_$_EditProfileRequest> get copyWith =>
      __$$_EditProfileRequestCopyWithImpl<_$_EditProfileRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EditProfileRequestToJson(
      this,
    );
  }
}

abstract class _EditProfileRequest implements EditProfileRequest {
  const factory _EditProfileRequest(
      {final String? name,
      final String? email,
      final String? phoneNumber,
      final String? profilePicUrl}) = _$_EditProfileRequest;

  factory _EditProfileRequest.fromJson(Map<String, dynamic> json) =
      _$_EditProfileRequest.fromJson;

  @override
  String? get name;
  @override
  String? get email;
  @override
  String? get phoneNumber;
  @override
  String? get profilePicUrl;
  @override
  @JsonKey(ignore: true)
  _$$_EditProfileRequestCopyWith<_$_EditProfileRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

EditProfileResponse _$EditProfileResponseFromJson(Map<String, dynamic> json) {
  return _EditProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$EditProfileResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditProfileResponseCopyWith<EditProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileResponseCopyWith<$Res> {
  factory $EditProfileResponseCopyWith(
          EditProfileResponse value, $Res Function(EditProfileResponse) then) =
      _$EditProfileResponseCopyWithImpl<$Res, EditProfileResponse>;
  @useResult
  $Res call({int code, String message, bool isSuccess, Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$EditProfileResponseCopyWithImpl<$Res, $Val extends EditProfileResponse>
    implements $EditProfileResponseCopyWith<$Res> {
  _$EditProfileResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_EditProfileResponseCopyWith<$Res>
    implements $EditProfileResponseCopyWith<$Res> {
  factory _$$_EditProfileResponseCopyWith(_$_EditProfileResponse value,
          $Res Function(_$_EditProfileResponse) then) =
      __$$_EditProfileResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, bool isSuccess, Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_EditProfileResponseCopyWithImpl<$Res>
    extends _$EditProfileResponseCopyWithImpl<$Res, _$_EditProfileResponse>
    implements _$$_EditProfileResponseCopyWith<$Res> {
  __$$_EditProfileResponseCopyWithImpl(_$_EditProfileResponse _value,
      $Res Function(_$_EditProfileResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? isSuccess = null,
    Object? data = null,
  }) {
    return _then(_$_EditProfileResponse(
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
class _$_EditProfileResponse implements _EditProfileResponse {
  const _$_EditProfileResponse(
      {required this.code,
      required this.message,
      required this.isSuccess,
      required this.data});

  factory _$_EditProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$$_EditProfileResponseFromJson(json);

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
    return 'EditProfileResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditProfileResponse &&
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
  _$$_EditProfileResponseCopyWith<_$_EditProfileResponse> get copyWith =>
      __$$_EditProfileResponseCopyWithImpl<_$_EditProfileResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EditProfileResponseToJson(
      this,
    );
  }
}

abstract class _EditProfileResponse implements EditProfileResponse {
  const factory _EditProfileResponse(
      {required final int code,
      required final String message,
      required final bool isSuccess,
      required final Data data}) = _$_EditProfileResponse;

  factory _EditProfileResponse.fromJson(Map<String, dynamic> json) =
      _$_EditProfileResponse.fromJson;

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
  _$$_EditProfileResponseCopyWith<_$_EditProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String get role => throw _privateConstructorUsedError;
  bool get isEmailVerified => throw _privateConstructorUsedError;
  dynamic get passwordResetOtp => throw _privateConstructorUsedError;
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
      dynamic passwordResetOtp,
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
    Object? passwordResetOtp = freezed,
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
      passwordResetOtp: freezed == passwordResetOtp
          ? _value.passwordResetOtp
          : passwordResetOtp // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      dynamic passwordResetOtp,
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
    Object? passwordResetOtp = freezed,
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
      passwordResetOtp: freezed == passwordResetOtp
          ? _value.passwordResetOtp
          : passwordResetOtp // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
  final dynamic passwordResetOtp;
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
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      role,
      isEmailVerified,
      const DeepCollectionEquality().hash(passwordResetOtp),
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
      required final dynamic passwordResetOtp,
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
  dynamic get passwordResetOtp;
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
