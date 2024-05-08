// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_save_search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeleteSaveSearchRequest _$DeleteSaveSearchRequestFromJson(
    Map<String, dynamic> json) {
  return _DeleteSaveSearchRequest.fromJson(json);
}

/// @nodoc
mixin _$DeleteSaveSearchRequest {
  List<String>? get filterIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteSaveSearchRequestCopyWith<DeleteSaveSearchRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteSaveSearchRequestCopyWith<$Res> {
  factory $DeleteSaveSearchRequestCopyWith(DeleteSaveSearchRequest value,
          $Res Function(DeleteSaveSearchRequest) then) =
      _$DeleteSaveSearchRequestCopyWithImpl<$Res, DeleteSaveSearchRequest>;
  @useResult
  $Res call({List<String>? filterIds});
}

/// @nodoc
class _$DeleteSaveSearchRequestCopyWithImpl<$Res,
        $Val extends DeleteSaveSearchRequest>
    implements $DeleteSaveSearchRequestCopyWith<$Res> {
  _$DeleteSaveSearchRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filterIds = freezed,
  }) {
    return _then(_value.copyWith(
      filterIds: freezed == filterIds
          ? _value.filterIds
          : filterIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeleteSaveSearchRequestCopyWith<$Res>
    implements $DeleteSaveSearchRequestCopyWith<$Res> {
  factory _$$_DeleteSaveSearchRequestCopyWith(_$_DeleteSaveSearchRequest value,
          $Res Function(_$_DeleteSaveSearchRequest) then) =
      __$$_DeleteSaveSearchRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? filterIds});
}

/// @nodoc
class __$$_DeleteSaveSearchRequestCopyWithImpl<$Res>
    extends _$DeleteSaveSearchRequestCopyWithImpl<$Res,
        _$_DeleteSaveSearchRequest>
    implements _$$_DeleteSaveSearchRequestCopyWith<$Res> {
  __$$_DeleteSaveSearchRequestCopyWithImpl(_$_DeleteSaveSearchRequest _value,
      $Res Function(_$_DeleteSaveSearchRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filterIds = freezed,
  }) {
    return _then(_$_DeleteSaveSearchRequest(
      filterIds: freezed == filterIds
          ? _value._filterIds
          : filterIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeleteSaveSearchRequest implements _DeleteSaveSearchRequest {
  const _$_DeleteSaveSearchRequest({final List<String>? filterIds})
      : _filterIds = filterIds;

  factory _$_DeleteSaveSearchRequest.fromJson(Map<String, dynamic> json) =>
      _$$_DeleteSaveSearchRequestFromJson(json);

  final List<String>? _filterIds;
  @override
  List<String>? get filterIds {
    final value = _filterIds;
    if (value == null) return null;
    if (_filterIds is EqualUnmodifiableListView) return _filterIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DeleteSaveSearchRequest(filterIds: $filterIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteSaveSearchRequest &&
            const DeepCollectionEquality()
                .equals(other._filterIds, _filterIds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_filterIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteSaveSearchRequestCopyWith<_$_DeleteSaveSearchRequest>
      get copyWith =>
          __$$_DeleteSaveSearchRequestCopyWithImpl<_$_DeleteSaveSearchRequest>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeleteSaveSearchRequestToJson(
      this,
    );
  }
}

abstract class _DeleteSaveSearchRequest implements DeleteSaveSearchRequest {
  const factory _DeleteSaveSearchRequest({final List<String>? filterIds}) =
      _$_DeleteSaveSearchRequest;

  factory _DeleteSaveSearchRequest.fromJson(Map<String, dynamic> json) =
      _$_DeleteSaveSearchRequest.fromJson;

  @override
  List<String>? get filterIds;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteSaveSearchRequestCopyWith<_$_DeleteSaveSearchRequest>
      get copyWith => throw _privateConstructorUsedError;
}

DeleteSaveSearchResponse _$DeleteSaveSearchResponseFromJson(
    Map<String, dynamic> json) {
  return _DeleteSaveSearchResponse.fromJson(json);
}

/// @nodoc
mixin _$DeleteSaveSearchResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteSaveSearchResponseCopyWith<DeleteSaveSearchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteSaveSearchResponseCopyWith<$Res> {
  factory $DeleteSaveSearchResponseCopyWith(DeleteSaveSearchResponse value,
          $Res Function(DeleteSaveSearchResponse) then) =
      _$DeleteSaveSearchResponseCopyWithImpl<$Res, DeleteSaveSearchResponse>;
  @useResult
  $Res call({int? code, String? message});
}

/// @nodoc
class _$DeleteSaveSearchResponseCopyWithImpl<$Res,
        $Val extends DeleteSaveSearchResponse>
    implements $DeleteSaveSearchResponseCopyWith<$Res> {
  _$DeleteSaveSearchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DeleteSaveSearchResponseCopyWith<$Res>
    implements $DeleteSaveSearchResponseCopyWith<$Res> {
  factory _$$_DeleteSaveSearchResponseCopyWith(
          _$_DeleteSaveSearchResponse value,
          $Res Function(_$_DeleteSaveSearchResponse) then) =
      __$$_DeleteSaveSearchResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message});
}

/// @nodoc
class __$$_DeleteSaveSearchResponseCopyWithImpl<$Res>
    extends _$DeleteSaveSearchResponseCopyWithImpl<$Res,
        _$_DeleteSaveSearchResponse>
    implements _$$_DeleteSaveSearchResponseCopyWith<$Res> {
  __$$_DeleteSaveSearchResponseCopyWithImpl(_$_DeleteSaveSearchResponse _value,
      $Res Function(_$_DeleteSaveSearchResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_DeleteSaveSearchResponse(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeleteSaveSearchResponse implements _DeleteSaveSearchResponse {
  const _$_DeleteSaveSearchResponse({this.code, this.message});

  factory _$_DeleteSaveSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DeleteSaveSearchResponseFromJson(json);

  @override
  final int? code;
  @override
  final String? message;

  @override
  String toString() {
    return 'DeleteSaveSearchResponse(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteSaveSearchResponse &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteSaveSearchResponseCopyWith<_$_DeleteSaveSearchResponse>
      get copyWith => __$$_DeleteSaveSearchResponseCopyWithImpl<
          _$_DeleteSaveSearchResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeleteSaveSearchResponseToJson(
      this,
    );
  }
}

abstract class _DeleteSaveSearchResponse implements DeleteSaveSearchResponse {
  const factory _DeleteSaveSearchResponse(
      {final int? code, final String? message}) = _$_DeleteSaveSearchResponse;

  factory _DeleteSaveSearchResponse.fromJson(Map<String, dynamic> json) =
      _$_DeleteSaveSearchResponse.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteSaveSearchResponseCopyWith<_$_DeleteSaveSearchResponse>
      get copyWith => throw _privateConstructorUsedError;
}
