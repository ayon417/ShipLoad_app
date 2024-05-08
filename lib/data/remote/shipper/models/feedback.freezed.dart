// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedback.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeedbackRequest _$FeedbackRequestFromJson(Map<String, dynamic> json) {
  return _FeedbackRequest.fromJson(json);
}

/// @nodoc
mixin _$FeedbackRequest {
  String? get feedback => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedbackRequestCopyWith<FeedbackRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackRequestCopyWith<$Res> {
  factory $FeedbackRequestCopyWith(
          FeedbackRequest value, $Res Function(FeedbackRequest) then) =
      _$FeedbackRequestCopyWithImpl<$Res, FeedbackRequest>;
  @useResult
  $Res call({String? feedback});
}

/// @nodoc
class _$FeedbackRequestCopyWithImpl<$Res, $Val extends FeedbackRequest>
    implements $FeedbackRequestCopyWith<$Res> {
  _$FeedbackRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedback = freezed,
  }) {
    return _then(_value.copyWith(
      feedback: freezed == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FeedbackRequestCopyWith<$Res>
    implements $FeedbackRequestCopyWith<$Res> {
  factory _$$_FeedbackRequestCopyWith(
          _$_FeedbackRequest value, $Res Function(_$_FeedbackRequest) then) =
      __$$_FeedbackRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? feedback});
}

/// @nodoc
class __$$_FeedbackRequestCopyWithImpl<$Res>
    extends _$FeedbackRequestCopyWithImpl<$Res, _$_FeedbackRequest>
    implements _$$_FeedbackRequestCopyWith<$Res> {
  __$$_FeedbackRequestCopyWithImpl(
      _$_FeedbackRequest _value, $Res Function(_$_FeedbackRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedback = freezed,
  }) {
    return _then(_$_FeedbackRequest(
      feedback: freezed == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeedbackRequest implements _FeedbackRequest {
  const _$_FeedbackRequest({this.feedback});

  factory _$_FeedbackRequest.fromJson(Map<String, dynamic> json) =>
      _$$_FeedbackRequestFromJson(json);

  @override
  final String? feedback;

  @override
  String toString() {
    return 'FeedbackRequest(feedback: $feedback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeedbackRequest &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, feedback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FeedbackRequestCopyWith<_$_FeedbackRequest> get copyWith =>
      __$$_FeedbackRequestCopyWithImpl<_$_FeedbackRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedbackRequestToJson(
      this,
    );
  }
}

abstract class _FeedbackRequest implements FeedbackRequest {
  const factory _FeedbackRequest({final String? feedback}) = _$_FeedbackRequest;

  factory _FeedbackRequest.fromJson(Map<String, dynamic> json) =
      _$_FeedbackRequest.fromJson;

  @override
  String? get feedback;
  @override
  @JsonKey(ignore: true)
  _$$_FeedbackRequestCopyWith<_$_FeedbackRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

FeedbackResponse _$FeedbackResponseFromJson(Map<String, dynamic> json) {
  return _FeedbackResponse.fromJson(json);
}

/// @nodoc
mixin _$FeedbackResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeedbackResponseCopyWith<FeedbackResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeedbackResponseCopyWith<$Res> {
  factory $FeedbackResponseCopyWith(
          FeedbackResponse value, $Res Function(FeedbackResponse) then) =
      _$FeedbackResponseCopyWithImpl<$Res, FeedbackResponse>;
  @useResult
  $Res call({int code, String message, bool isSuccess, Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$FeedbackResponseCopyWithImpl<$Res, $Val extends FeedbackResponse>
    implements $FeedbackResponseCopyWith<$Res> {
  _$FeedbackResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_FeedbackResponseCopyWith<$Res>
    implements $FeedbackResponseCopyWith<$Res> {
  factory _$$_FeedbackResponseCopyWith(
          _$_FeedbackResponse value, $Res Function(_$_FeedbackResponse) then) =
      __$$_FeedbackResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, bool isSuccess, Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_FeedbackResponseCopyWithImpl<$Res>
    extends _$FeedbackResponseCopyWithImpl<$Res, _$_FeedbackResponse>
    implements _$$_FeedbackResponseCopyWith<$Res> {
  __$$_FeedbackResponseCopyWithImpl(
      _$_FeedbackResponse _value, $Res Function(_$_FeedbackResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? isSuccess = null,
    Object? data = null,
  }) {
    return _then(_$_FeedbackResponse(
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
class _$_FeedbackResponse implements _FeedbackResponse {
  const _$_FeedbackResponse(
      {required this.code,
      required this.message,
      required this.isSuccess,
      required this.data});

  factory _$_FeedbackResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FeedbackResponseFromJson(json);

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
    return 'FeedbackResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeedbackResponse &&
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
  _$$_FeedbackResponseCopyWith<_$_FeedbackResponse> get copyWith =>
      __$$_FeedbackResponseCopyWithImpl<_$_FeedbackResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeedbackResponseToJson(
      this,
    );
  }
}

abstract class _FeedbackResponse implements FeedbackResponse {
  const factory _FeedbackResponse(
      {required final int code,
      required final String message,
      required final bool isSuccess,
      required final Data data}) = _$_FeedbackResponse;

  factory _FeedbackResponse.fromJson(Map<String, dynamic> json) =
      _$_FeedbackResponse.fromJson;

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
  _$$_FeedbackResponseCopyWith<_$_FeedbackResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String get userId => throw _privateConstructorUsedError;
  String get feedback => throw _privateConstructorUsedError;
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
  $Res call({String userId, String feedback, String id});
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
    Object? userId = null,
    Object? feedback = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      feedback: null == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
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
  $Res call({String userId, String feedback, String id});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? feedback = null,
    Object? id = null,
  }) {
    return _then(_$_Data(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      feedback: null == feedback
          ? _value.feedback
          : feedback // ignore: cast_nullable_to_non_nullable
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
      {required this.userId, required this.feedback, required this.id});

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final String userId;
  @override
  final String feedback;
  @override
  final String id;

  @override
  String toString() {
    return 'Data(userId: $userId, feedback: $feedback, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.feedback, feedback) ||
                other.feedback == feedback) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, feedback, id);

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
      {required final String userId,
      required final String feedback,
      required final String id}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  String get userId;
  @override
  String get feedback;
  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}
