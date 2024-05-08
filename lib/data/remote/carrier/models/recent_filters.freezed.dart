// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recent_filters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecentFiltersRequest _$RecentFiltersRequestFromJson(Map<String, dynamic> json) {
  return _RecentFiltersRequest.fromJson(json);
}

/// @nodoc
mixin _$RecentFiltersRequest {
  int? get page => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecentFiltersRequestCopyWith<RecentFiltersRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentFiltersRequestCopyWith<$Res> {
  factory $RecentFiltersRequestCopyWith(RecentFiltersRequest value,
          $Res Function(RecentFiltersRequest) then) =
      _$RecentFiltersRequestCopyWithImpl<$Res, RecentFiltersRequest>;
  @useResult
  $Res call({int? page});
}

/// @nodoc
class _$RecentFiltersRequestCopyWithImpl<$Res,
        $Val extends RecentFiltersRequest>
    implements $RecentFiltersRequestCopyWith<$Res> {
  _$RecentFiltersRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecentFiltersRequestCopyWith<$Res>
    implements $RecentFiltersRequestCopyWith<$Res> {
  factory _$$_RecentFiltersRequestCopyWith(_$_RecentFiltersRequest value,
          $Res Function(_$_RecentFiltersRequest) then) =
      __$$_RecentFiltersRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? page});
}

/// @nodoc
class __$$_RecentFiltersRequestCopyWithImpl<$Res>
    extends _$RecentFiltersRequestCopyWithImpl<$Res, _$_RecentFiltersRequest>
    implements _$$_RecentFiltersRequestCopyWith<$Res> {
  __$$_RecentFiltersRequestCopyWithImpl(_$_RecentFiltersRequest _value,
      $Res Function(_$_RecentFiltersRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_$_RecentFiltersRequest(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecentFiltersRequest implements _RecentFiltersRequest {
  const _$_RecentFiltersRequest({this.page});

  factory _$_RecentFiltersRequest.fromJson(Map<String, dynamic> json) =>
      _$$_RecentFiltersRequestFromJson(json);

  @override
  final int? page;

  @override
  String toString() {
    return 'RecentFiltersRequest(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecentFiltersRequest &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecentFiltersRequestCopyWith<_$_RecentFiltersRequest> get copyWith =>
      __$$_RecentFiltersRequestCopyWithImpl<_$_RecentFiltersRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecentFiltersRequestToJson(
      this,
    );
  }
}

abstract class _RecentFiltersRequest implements RecentFiltersRequest {
  const factory _RecentFiltersRequest({final int? page}) =
      _$_RecentFiltersRequest;

  factory _RecentFiltersRequest.fromJson(Map<String, dynamic> json) =
      _$_RecentFiltersRequest.fromJson;

  @override
  int? get page;
  @override
  @JsonKey(ignore: true)
  _$$_RecentFiltersRequestCopyWith<_$_RecentFiltersRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

RecentFiltersResponse _$RecentFiltersResponseFromJson(
    Map<String, dynamic> json) {
  return _RecentFiltersResponse.fromJson(json);
}

/// @nodoc
mixin _$RecentFiltersResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  List<Result> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecentFiltersResponseCopyWith<RecentFiltersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentFiltersResponseCopyWith<$Res> {
  factory $RecentFiltersResponseCopyWith(RecentFiltersResponse value,
          $Res Function(RecentFiltersResponse) then) =
      _$RecentFiltersResponseCopyWithImpl<$Res, RecentFiltersResponse>;
  @useResult
  $Res call({int code, String message, bool isSuccess, List<Result> data});
}

/// @nodoc
class _$RecentFiltersResponseCopyWithImpl<$Res,
        $Val extends RecentFiltersResponse>
    implements $RecentFiltersResponseCopyWith<$Res> {
  _$RecentFiltersResponseCopyWithImpl(this._value, this._then);

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
              as List<Result>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecentFiltersResponseCopyWith<$Res>
    implements $RecentFiltersResponseCopyWith<$Res> {
  factory _$$_RecentFiltersResponseCopyWith(_$_RecentFiltersResponse value,
          $Res Function(_$_RecentFiltersResponse) then) =
      __$$_RecentFiltersResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, bool isSuccess, List<Result> data});
}

/// @nodoc
class __$$_RecentFiltersResponseCopyWithImpl<$Res>
    extends _$RecentFiltersResponseCopyWithImpl<$Res, _$_RecentFiltersResponse>
    implements _$$_RecentFiltersResponseCopyWith<$Res> {
  __$$_RecentFiltersResponseCopyWithImpl(_$_RecentFiltersResponse _value,
      $Res Function(_$_RecentFiltersResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? isSuccess = null,
    Object? data = null,
  }) {
    return _then(_$_RecentFiltersResponse(
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
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Result>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecentFiltersResponse implements _RecentFiltersResponse {
  const _$_RecentFiltersResponse(
      {required this.code,
      required this.message,
      required this.isSuccess,
      required final List<Result> data})
      : _data = data;

  factory _$_RecentFiltersResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RecentFiltersResponseFromJson(json);

  @override
  final int code;
  @override
  final String message;
  @override
  final bool isSuccess;
  final List<Result> _data;
  @override
  List<Result> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'RecentFiltersResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecentFiltersResponse &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, isSuccess,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecentFiltersResponseCopyWith<_$_RecentFiltersResponse> get copyWith =>
      __$$_RecentFiltersResponseCopyWithImpl<_$_RecentFiltersResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecentFiltersResponseToJson(
      this,
    );
  }
}

abstract class _RecentFiltersResponse implements RecentFiltersResponse {
  const factory _RecentFiltersResponse(
      {required final int code,
      required final String message,
      required final bool isSuccess,
      required final List<Result> data}) = _$_RecentFiltersResponse;

  factory _RecentFiltersResponse.fromJson(Map<String, dynamic> json) =
      _$_RecentFiltersResponse.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  bool get isSuccess;
  @override
  List<Result> get data;
  @override
  @JsonKey(ignore: true)
  _$$_RecentFiltersResponseCopyWith<_$_RecentFiltersResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  List<String>? get trailerTypes => throw _privateConstructorUsedError;
  List<String>? get companyNames => throw _privateConstructorUsedError;
  bool? get isSaved => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String? get filteredBy => throw _privateConstructorUsedError;
  double? get minWeight => throw _privateConstructorUsedError;
  double? get maxWeight => throw _privateConstructorUsedError;
  List<double> get pickupLocation => throw _privateConstructorUsedError;
  List<double> get dropLocation => throw _privateConstructorUsedError;
  double? get minPrice => throw _privateConstructorUsedError;
  double? get maxPrice => throw _privateConstructorUsedError;
  String? get packageType => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  double? get minRate => throw _privateConstructorUsedError;
  double? get maxRate => throw _privateConstructorUsedError;
  String? get pickupLocationName => throw _privateConstructorUsedError;
  String? get dropLocationName => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {List<String>? trailerTypes,
      List<String>? companyNames,
      bool? isSaved,
      @JsonKey(name: "_id") String? id,
      String? filteredBy,
      double? minWeight,
      double? maxWeight,
      List<double> pickupLocation,
      List<double> dropLocation,
      double? minPrice,
      double? maxPrice,
      String? packageType,
      DateTime? date,
      double? minRate,
      double? maxRate,
      String? pickupLocationName,
      String? dropLocationName,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trailerTypes = freezed,
    Object? companyNames = freezed,
    Object? isSaved = freezed,
    Object? id = freezed,
    Object? filteredBy = freezed,
    Object? minWeight = freezed,
    Object? maxWeight = freezed,
    Object? pickupLocation = null,
    Object? dropLocation = null,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? packageType = freezed,
    Object? date = freezed,
    Object? minRate = freezed,
    Object? maxRate = freezed,
    Object? pickupLocationName = freezed,
    Object? dropLocationName = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      trailerTypes: freezed == trailerTypes
          ? _value.trailerTypes
          : trailerTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      companyNames: freezed == companyNames
          ? _value.companyNames
          : companyNames // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isSaved: freezed == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      filteredBy: freezed == filteredBy
          ? _value.filteredBy
          : filteredBy // ignore: cast_nullable_to_non_nullable
              as String?,
      minWeight: freezed == minWeight
          ? _value.minWeight
          : minWeight // ignore: cast_nullable_to_non_nullable
              as double?,
      maxWeight: freezed == maxWeight
          ? _value.maxWeight
          : maxWeight // ignore: cast_nullable_to_non_nullable
              as double?,
      pickupLocation: null == pickupLocation
          ? _value.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as List<double>,
      dropLocation: null == dropLocation
          ? _value.dropLocation
          : dropLocation // ignore: cast_nullable_to_non_nullable
              as List<double>,
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      packageType: freezed == packageType
          ? _value.packageType
          : packageType // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      minRate: freezed == minRate
          ? _value.minRate
          : minRate // ignore: cast_nullable_to_non_nullable
              as double?,
      maxRate: freezed == maxRate
          ? _value.maxRate
          : maxRate // ignore: cast_nullable_to_non_nullable
              as double?,
      pickupLocationName: freezed == pickupLocationName
          ? _value.pickupLocationName
          : pickupLocationName // ignore: cast_nullable_to_non_nullable
              as String?,
      dropLocationName: freezed == dropLocationName
          ? _value.dropLocationName
          : dropLocationName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$_ResultCopyWith(_$_Result value, $Res Function(_$_Result) then) =
      __$$_ResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? trailerTypes,
      List<String>? companyNames,
      bool? isSaved,
      @JsonKey(name: "_id") String? id,
      String? filteredBy,
      double? minWeight,
      double? maxWeight,
      List<double> pickupLocation,
      List<double> dropLocation,
      double? minPrice,
      double? maxPrice,
      String? packageType,
      DateTime? date,
      double? minRate,
      double? maxRate,
      String? pickupLocationName,
      String? dropLocationName,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$_ResultCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$_Result>
    implements _$$_ResultCopyWith<$Res> {
  __$$_ResultCopyWithImpl(_$_Result _value, $Res Function(_$_Result) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trailerTypes = freezed,
    Object? companyNames = freezed,
    Object? isSaved = freezed,
    Object? id = freezed,
    Object? filteredBy = freezed,
    Object? minWeight = freezed,
    Object? maxWeight = freezed,
    Object? pickupLocation = null,
    Object? dropLocation = null,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? packageType = freezed,
    Object? date = freezed,
    Object? minRate = freezed,
    Object? maxRate = freezed,
    Object? pickupLocationName = freezed,
    Object? dropLocationName = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Result(
      trailerTypes: freezed == trailerTypes
          ? _value._trailerTypes
          : trailerTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      companyNames: freezed == companyNames
          ? _value._companyNames
          : companyNames // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isSaved: freezed == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      filteredBy: freezed == filteredBy
          ? _value.filteredBy
          : filteredBy // ignore: cast_nullable_to_non_nullable
              as String?,
      minWeight: freezed == minWeight
          ? _value.minWeight
          : minWeight // ignore: cast_nullable_to_non_nullable
              as double?,
      maxWeight: freezed == maxWeight
          ? _value.maxWeight
          : maxWeight // ignore: cast_nullable_to_non_nullable
              as double?,
      pickupLocation: null == pickupLocation
          ? _value._pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as List<double>,
      dropLocation: null == dropLocation
          ? _value._dropLocation
          : dropLocation // ignore: cast_nullable_to_non_nullable
              as List<double>,
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      packageType: freezed == packageType
          ? _value.packageType
          : packageType // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      minRate: freezed == minRate
          ? _value.minRate
          : minRate // ignore: cast_nullable_to_non_nullable
              as double?,
      maxRate: freezed == maxRate
          ? _value.maxRate
          : maxRate // ignore: cast_nullable_to_non_nullable
              as double?,
      pickupLocationName: freezed == pickupLocationName
          ? _value.pickupLocationName
          : pickupLocationName // ignore: cast_nullable_to_non_nullable
              as String?,
      dropLocationName: freezed == dropLocationName
          ? _value.dropLocationName
          : dropLocationName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Result implements _Result {
  const _$_Result(
      {final List<String>? trailerTypes,
      final List<String>? companyNames,
      this.isSaved,
      @JsonKey(name: "_id") this.id,
      this.filteredBy,
      this.minWeight,
      this.maxWeight,
      required final List<double> pickupLocation,
      required final List<double> dropLocation,
      this.minPrice,
      this.maxPrice,
      this.packageType,
      this.date,
      this.minRate,
      this.maxRate,
      this.pickupLocationName,
      this.dropLocationName,
      this.createdAt,
      this.updatedAt})
      : _trailerTypes = trailerTypes,
        _companyNames = companyNames,
        _pickupLocation = pickupLocation,
        _dropLocation = dropLocation;

  factory _$_Result.fromJson(Map<String, dynamic> json) =>
      _$$_ResultFromJson(json);

  final List<String>? _trailerTypes;
  @override
  List<String>? get trailerTypes {
    final value = _trailerTypes;
    if (value == null) return null;
    if (_trailerTypes is EqualUnmodifiableListView) return _trailerTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _companyNames;
  @override
  List<String>? get companyNames {
    final value = _companyNames;
    if (value == null) return null;
    if (_companyNames is EqualUnmodifiableListView) return _companyNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isSaved;
  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String? filteredBy;
  @override
  final double? minWeight;
  @override
  final double? maxWeight;
  final List<double> _pickupLocation;
  @override
  List<double> get pickupLocation {
    if (_pickupLocation is EqualUnmodifiableListView) return _pickupLocation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pickupLocation);
  }

  final List<double> _dropLocation;
  @override
  List<double> get dropLocation {
    if (_dropLocation is EqualUnmodifiableListView) return _dropLocation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dropLocation);
  }

  @override
  final double? minPrice;
  @override
  final double? maxPrice;
  @override
  final String? packageType;
  @override
  final DateTime? date;
  @override
  final double? minRate;
  @override
  final double? maxRate;
  @override
  final String? pickupLocationName;
  @override
  final String? dropLocationName;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Result(trailerTypes: $trailerTypes, companyNames: $companyNames, isSaved: $isSaved, id: $id, filteredBy: $filteredBy, minWeight: $minWeight, maxWeight: $maxWeight, pickupLocation: $pickupLocation, dropLocation: $dropLocation, minPrice: $minPrice, maxPrice: $maxPrice, packageType: $packageType, date: $date, minRate: $minRate, maxRate: $maxRate, pickupLocationName: $pickupLocationName, dropLocationName: $dropLocationName, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Result &&
            const DeepCollectionEquality()
                .equals(other._trailerTypes, _trailerTypes) &&
            const DeepCollectionEquality()
                .equals(other._companyNames, _companyNames) &&
            (identical(other.isSaved, isSaved) || other.isSaved == isSaved) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.filteredBy, filteredBy) ||
                other.filteredBy == filteredBy) &&
            (identical(other.minWeight, minWeight) ||
                other.minWeight == minWeight) &&
            (identical(other.maxWeight, maxWeight) ||
                other.maxWeight == maxWeight) &&
            const DeepCollectionEquality()
                .equals(other._pickupLocation, _pickupLocation) &&
            const DeepCollectionEquality()
                .equals(other._dropLocation, _dropLocation) &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
            (identical(other.packageType, packageType) ||
                other.packageType == packageType) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.minRate, minRate) || other.minRate == minRate) &&
            (identical(other.maxRate, maxRate) || other.maxRate == maxRate) &&
            (identical(other.pickupLocationName, pickupLocationName) ||
                other.pickupLocationName == pickupLocationName) &&
            (identical(other.dropLocationName, dropLocationName) ||
                other.dropLocationName == dropLocationName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_trailerTypes),
        const DeepCollectionEquality().hash(_companyNames),
        isSaved,
        id,
        filteredBy,
        minWeight,
        maxWeight,
        const DeepCollectionEquality().hash(_pickupLocation),
        const DeepCollectionEquality().hash(_dropLocation),
        minPrice,
        maxPrice,
        packageType,
        date,
        minRate,
        maxRate,
        pickupLocationName,
        dropLocationName,
        createdAt,
        updatedAt
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      __$$_ResultCopyWithImpl<_$_Result>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {final List<String>? trailerTypes,
      final List<String>? companyNames,
      final bool? isSaved,
      @JsonKey(name: "_id") final String? id,
      final String? filteredBy,
      final double? minWeight,
      final double? maxWeight,
      required final List<double> pickupLocation,
      required final List<double> dropLocation,
      final double? minPrice,
      final double? maxPrice,
      final String? packageType,
      final DateTime? date,
      final double? minRate,
      final double? maxRate,
      final String? pickupLocationName,
      final String? dropLocationName,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_Result;

  factory _Result.fromJson(Map<String, dynamic> json) = _$_Result.fromJson;

  @override
  List<String>? get trailerTypes;
  @override
  List<String>? get companyNames;
  @override
  bool? get isSaved;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String? get filteredBy;
  @override
  double? get minWeight;
  @override
  double? get maxWeight;
  @override
  List<double> get pickupLocation;
  @override
  List<double> get dropLocation;
  @override
  double? get minPrice;
  @override
  double? get maxPrice;
  @override
  String? get packageType;
  @override
  DateTime? get date;
  @override
  double? get minRate;
  @override
  double? get maxRate;
  @override
  String? get pickupLocationName;
  @override
  String? get dropLocationName;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_ResultCopyWith<_$_Result> get copyWith =>
      throw _privateConstructorUsedError;
}
