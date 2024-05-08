// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'saved_filters_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SavedFiltersListResponse _$SavedFiltersListResponseFromJson(
    Map<String, dynamic> json) {
  return _SavedFiltersListResponse.fromJson(json);
}

/// @nodoc
mixin _$SavedFiltersListResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  List<Datum>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SavedFiltersListResponseCopyWith<SavedFiltersListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SavedFiltersListResponseCopyWith<$Res> {
  factory $SavedFiltersListResponseCopyWith(SavedFiltersListResponse value,
          $Res Function(SavedFiltersListResponse) then) =
      _$SavedFiltersListResponseCopyWithImpl<$Res, SavedFiltersListResponse>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, List<Datum>? data});
}

/// @nodoc
class _$SavedFiltersListResponseCopyWithImpl<$Res,
        $Val extends SavedFiltersListResponse>
    implements $SavedFiltersListResponseCopyWith<$Res> {
  _$SavedFiltersListResponseCopyWithImpl(this._value, this._then);

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
              as List<Datum>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SavedFiltersListResponseCopyWith<$Res>
    implements $SavedFiltersListResponseCopyWith<$Res> {
  factory _$$_SavedFiltersListResponseCopyWith(
          _$_SavedFiltersListResponse value,
          $Res Function(_$_SavedFiltersListResponse) then) =
      __$$_SavedFiltersListResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, List<Datum>? data});
}

/// @nodoc
class __$$_SavedFiltersListResponseCopyWithImpl<$Res>
    extends _$SavedFiltersListResponseCopyWithImpl<$Res,
        _$_SavedFiltersListResponse>
    implements _$$_SavedFiltersListResponseCopyWith<$Res> {
  __$$_SavedFiltersListResponseCopyWithImpl(_$_SavedFiltersListResponse _value,
      $Res Function(_$_SavedFiltersListResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_SavedFiltersListResponse(
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
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SavedFiltersListResponse implements _SavedFiltersListResponse {
  const _$_SavedFiltersListResponse(
      {this.code, this.message, this.isSuccess, final List<Datum>? data})
      : _data = data;

  factory _$_SavedFiltersListResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SavedFiltersListResponseFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final bool? isSuccess;
  final List<Datum>? _data;
  @override
  List<Datum>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SavedFiltersListResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SavedFiltersListResponse &&
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
  _$$_SavedFiltersListResponseCopyWith<_$_SavedFiltersListResponse>
      get copyWith => __$$_SavedFiltersListResponseCopyWithImpl<
          _$_SavedFiltersListResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SavedFiltersListResponseToJson(
      this,
    );
  }
}

abstract class _SavedFiltersListResponse implements SavedFiltersListResponse {
  const factory _SavedFiltersListResponse(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final List<Datum>? data}) = _$_SavedFiltersListResponse;

  factory _SavedFiltersListResponse.fromJson(Map<String, dynamic> json) =
      _$_SavedFiltersListResponse.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  bool? get isSuccess;
  @override
  List<Datum>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_SavedFiltersListResponseCopyWith<_$_SavedFiltersListResponse>
      get copyWith => throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  List<String>? get trailerTypes => throw _privateConstructorUsedError;
  List<String>? get loadRequirement => throw _privateConstructorUsedError;
  List<double>? get pickupLocation => throw _privateConstructorUsedError;
  List<double>? get dropLocation => throw _privateConstructorUsedError;
  List<String>? get companyNames => throw _privateConstructorUsedError;
  bool? get isSaved =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get filteredBy => throw _privateConstructorUsedError;
  String? get pickupLocationName => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  String? get dropLocationName => throw _privateConstructorUsedError;
  int? get minWeight => throw _privateConstructorUsedError;
  int? get maxWeight => throw _privateConstructorUsedError;
  int? get minLoadDistance => throw _privateConstructorUsedError;
  int? get maxLoadDistance => throw _privateConstructorUsedError;
  int? get minPrice => throw _privateConstructorUsedError;
  int? get maxPrice => throw _privateConstructorUsedError;
  dynamic get packageType => throw _privateConstructorUsedError;
  int? get minRate => throw _privateConstructorUsedError;
  int? get maxRate => throw _privateConstructorUsedError;
  String? get loadType => throw _privateConstructorUsedError;
  int? get minLoadLength => throw _privateConstructorUsedError;
  int? get maxLoadLength => throw _privateConstructorUsedError;
  double? get pickupRadius => throw _privateConstructorUsedError;
  double? get dropRadius => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call(
      {List<String>? trailerTypes,
      List<String>? loadRequirement,
      List<double>? pickupLocation,
      List<double>? dropLocation,
      List<String>? companyNames,
      bool? isSaved,
      @JsonKey(name: '_id') String? id,
      String? filteredBy,
      String? pickupLocationName,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? date,
      String? dropLocationName,
      int? minWeight,
      int? maxWeight,
      int? minLoadDistance,
      int? maxLoadDistance,
      int? minPrice,
      int? maxPrice,
      dynamic packageType,
      int? minRate,
      int? maxRate,
      String? loadType,
      int? minLoadLength,
      int? maxLoadLength,
      double? pickupRadius,
      double? dropRadius});
}

/// @nodoc
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trailerTypes = freezed,
    Object? loadRequirement = freezed,
    Object? pickupLocation = freezed,
    Object? dropLocation = freezed,
    Object? companyNames = freezed,
    Object? isSaved = freezed,
    Object? id = freezed,
    Object? filteredBy = freezed,
    Object? pickupLocationName = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? date = freezed,
    Object? dropLocationName = freezed,
    Object? minWeight = freezed,
    Object? maxWeight = freezed,
    Object? minLoadDistance = freezed,
    Object? maxLoadDistance = freezed,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? packageType = freezed,
    Object? minRate = freezed,
    Object? maxRate = freezed,
    Object? loadType = freezed,
    Object? minLoadLength = freezed,
    Object? maxLoadLength = freezed,
    Object? pickupRadius = freezed,
    Object? dropRadius = freezed,
  }) {
    return _then(_value.copyWith(
      trailerTypes: freezed == trailerTypes
          ? _value.trailerTypes
          : trailerTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      loadRequirement: freezed == loadRequirement
          ? _value.loadRequirement
          : loadRequirement // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      pickupLocation: freezed == pickupLocation
          ? _value.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      dropLocation: freezed == dropLocation
          ? _value.dropLocation
          : dropLocation // ignore: cast_nullable_to_non_nullable
              as List<double>?,
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
      pickupLocationName: freezed == pickupLocationName
          ? _value.pickupLocationName
          : pickupLocationName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dropLocationName: freezed == dropLocationName
          ? _value.dropLocationName
          : dropLocationName // ignore: cast_nullable_to_non_nullable
              as String?,
      minWeight: freezed == minWeight
          ? _value.minWeight
          : minWeight // ignore: cast_nullable_to_non_nullable
              as int?,
      maxWeight: freezed == maxWeight
          ? _value.maxWeight
          : maxWeight // ignore: cast_nullable_to_non_nullable
              as int?,
      minLoadDistance: freezed == minLoadDistance
          ? _value.minLoadDistance
          : minLoadDistance // ignore: cast_nullable_to_non_nullable
              as int?,
      maxLoadDistance: freezed == maxLoadDistance
          ? _value.maxLoadDistance
          : maxLoadDistance // ignore: cast_nullable_to_non_nullable
              as int?,
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      packageType: freezed == packageType
          ? _value.packageType
          : packageType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      minRate: freezed == minRate
          ? _value.minRate
          : minRate // ignore: cast_nullable_to_non_nullable
              as int?,
      maxRate: freezed == maxRate
          ? _value.maxRate
          : maxRate // ignore: cast_nullable_to_non_nullable
              as int?,
      loadType: freezed == loadType
          ? _value.loadType
          : loadType // ignore: cast_nullable_to_non_nullable
              as String?,
      minLoadLength: freezed == minLoadLength
          ? _value.minLoadLength
          : minLoadLength // ignore: cast_nullable_to_non_nullable
              as int?,
      maxLoadLength: freezed == maxLoadLength
          ? _value.maxLoadLength
          : maxLoadLength // ignore: cast_nullable_to_non_nullable
              as int?,
      pickupRadius: freezed == pickupRadius
          ? _value.pickupRadius
          : pickupRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      dropRadius: freezed == dropRadius
          ? _value.dropRadius
          : dropRadius // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DatumCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$_DatumCopyWith(_$_Datum value, $Res Function(_$_Datum) then) =
      __$$_DatumCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? trailerTypes,
      List<String>? loadRequirement,
      List<double>? pickupLocation,
      List<double>? dropLocation,
      List<String>? companyNames,
      bool? isSaved,
      @JsonKey(name: '_id') String? id,
      String? filteredBy,
      String? pickupLocationName,
      DateTime? createdAt,
      DateTime? updatedAt,
      DateTime? date,
      String? dropLocationName,
      int? minWeight,
      int? maxWeight,
      int? minLoadDistance,
      int? maxLoadDistance,
      int? minPrice,
      int? maxPrice,
      dynamic packageType,
      int? minRate,
      int? maxRate,
      String? loadType,
      int? minLoadLength,
      int? maxLoadLength,
      double? pickupRadius,
      double? dropRadius});
}

/// @nodoc
class __$$_DatumCopyWithImpl<$Res> extends _$DatumCopyWithImpl<$Res, _$_Datum>
    implements _$$_DatumCopyWith<$Res> {
  __$$_DatumCopyWithImpl(_$_Datum _value, $Res Function(_$_Datum) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trailerTypes = freezed,
    Object? loadRequirement = freezed,
    Object? pickupLocation = freezed,
    Object? dropLocation = freezed,
    Object? companyNames = freezed,
    Object? isSaved = freezed,
    Object? id = freezed,
    Object? filteredBy = freezed,
    Object? pickupLocationName = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? date = freezed,
    Object? dropLocationName = freezed,
    Object? minWeight = freezed,
    Object? maxWeight = freezed,
    Object? minLoadDistance = freezed,
    Object? maxLoadDistance = freezed,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? packageType = freezed,
    Object? minRate = freezed,
    Object? maxRate = freezed,
    Object? loadType = freezed,
    Object? minLoadLength = freezed,
    Object? maxLoadLength = freezed,
    Object? pickupRadius = freezed,
    Object? dropRadius = freezed,
  }) {
    return _then(_$_Datum(
      trailerTypes: freezed == trailerTypes
          ? _value._trailerTypes
          : trailerTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      loadRequirement: freezed == loadRequirement
          ? _value._loadRequirement
          : loadRequirement // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      pickupLocation: freezed == pickupLocation
          ? _value._pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      dropLocation: freezed == dropLocation
          ? _value._dropLocation
          : dropLocation // ignore: cast_nullable_to_non_nullable
              as List<double>?,
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
      pickupLocationName: freezed == pickupLocationName
          ? _value.pickupLocationName
          : pickupLocationName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dropLocationName: freezed == dropLocationName
          ? _value.dropLocationName
          : dropLocationName // ignore: cast_nullable_to_non_nullable
              as String?,
      minWeight: freezed == minWeight
          ? _value.minWeight
          : minWeight // ignore: cast_nullable_to_non_nullable
              as int?,
      maxWeight: freezed == maxWeight
          ? _value.maxWeight
          : maxWeight // ignore: cast_nullable_to_non_nullable
              as int?,
      minLoadDistance: freezed == minLoadDistance
          ? _value.minLoadDistance
          : minLoadDistance // ignore: cast_nullable_to_non_nullable
              as int?,
      maxLoadDistance: freezed == maxLoadDistance
          ? _value.maxLoadDistance
          : maxLoadDistance // ignore: cast_nullable_to_non_nullable
              as int?,
      minPrice: freezed == minPrice
          ? _value.minPrice
          : minPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      maxPrice: freezed == maxPrice
          ? _value.maxPrice
          : maxPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      packageType: freezed == packageType
          ? _value.packageType
          : packageType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      minRate: freezed == minRate
          ? _value.minRate
          : minRate // ignore: cast_nullable_to_non_nullable
              as int?,
      maxRate: freezed == maxRate
          ? _value.maxRate
          : maxRate // ignore: cast_nullable_to_non_nullable
              as int?,
      loadType: freezed == loadType
          ? _value.loadType
          : loadType // ignore: cast_nullable_to_non_nullable
              as String?,
      minLoadLength: freezed == minLoadLength
          ? _value.minLoadLength
          : minLoadLength // ignore: cast_nullable_to_non_nullable
              as int?,
      maxLoadLength: freezed == maxLoadLength
          ? _value.maxLoadLength
          : maxLoadLength // ignore: cast_nullable_to_non_nullable
              as int?,
      pickupRadius: freezed == pickupRadius
          ? _value.pickupRadius
          : pickupRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      dropRadius: freezed == dropRadius
          ? _value.dropRadius
          : dropRadius // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Datum implements _Datum {
  const _$_Datum(
      {final List<String>? trailerTypes,
      final List<String>? loadRequirement,
      final List<double>? pickupLocation,
      final List<double>? dropLocation,
      final List<String>? companyNames,
      this.isSaved,
      @JsonKey(name: '_id') this.id,
      this.filteredBy,
      this.pickupLocationName,
      this.createdAt,
      this.updatedAt,
      this.date,
      this.dropLocationName,
      this.minWeight,
      this.maxWeight,
      this.minLoadDistance,
      this.maxLoadDistance,
      this.minPrice,
      this.maxPrice,
      this.packageType,
      this.minRate,
      this.maxRate,
      this.loadType,
      this.minLoadLength,
      this.maxLoadLength,
      this.pickupRadius,
      this.dropRadius})
      : _trailerTypes = trailerTypes,
        _loadRequirement = loadRequirement,
        _pickupLocation = pickupLocation,
        _dropLocation = dropLocation,
        _companyNames = companyNames;

  factory _$_Datum.fromJson(Map<String, dynamic> json) =>
      _$$_DatumFromJson(json);

  final List<String>? _trailerTypes;
  @override
  List<String>? get trailerTypes {
    final value = _trailerTypes;
    if (value == null) return null;
    if (_trailerTypes is EqualUnmodifiableListView) return _trailerTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _loadRequirement;
  @override
  List<String>? get loadRequirement {
    final value = _loadRequirement;
    if (value == null) return null;
    if (_loadRequirement is EqualUnmodifiableListView) return _loadRequirement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _pickupLocation;
  @override
  List<double>? get pickupLocation {
    final value = _pickupLocation;
    if (value == null) return null;
    if (_pickupLocation is EqualUnmodifiableListView) return _pickupLocation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<double>? _dropLocation;
  @override
  List<double>? get dropLocation {
    final value = _dropLocation;
    if (value == null) return null;
    if (_dropLocation is EqualUnmodifiableListView) return _dropLocation;
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
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? filteredBy;
  @override
  final String? pickupLocationName;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? date;
  @override
  final String? dropLocationName;
  @override
  final int? minWeight;
  @override
  final int? maxWeight;
  @override
  final int? minLoadDistance;
  @override
  final int? maxLoadDistance;
  @override
  final int? minPrice;
  @override
  final int? maxPrice;
  @override
  final dynamic packageType;
  @override
  final int? minRate;
  @override
  final int? maxRate;
  @override
  final String? loadType;
  @override
  final int? minLoadLength;
  @override
  final int? maxLoadLength;
  @override
  final double? pickupRadius;
  @override
  final double? dropRadius;

  @override
  String toString() {
    return 'Datum(trailerTypes: $trailerTypes, loadRequirement: $loadRequirement, pickupLocation: $pickupLocation, dropLocation: $dropLocation, companyNames: $companyNames, isSaved: $isSaved, id: $id, filteredBy: $filteredBy, pickupLocationName: $pickupLocationName, createdAt: $createdAt, updatedAt: $updatedAt, date: $date, dropLocationName: $dropLocationName, minWeight: $minWeight, maxWeight: $maxWeight, minLoadDistance: $minLoadDistance, maxLoadDistance: $maxLoadDistance, minPrice: $minPrice, maxPrice: $maxPrice, packageType: $packageType, minRate: $minRate, maxRate: $maxRate, loadType: $loadType, minLoadLength: $minLoadLength, maxLoadLength: $maxLoadLength, pickupRadius: $pickupRadius, dropRadius: $dropRadius)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Datum &&
            const DeepCollectionEquality()
                .equals(other._trailerTypes, _trailerTypes) &&
            const DeepCollectionEquality()
                .equals(other._loadRequirement, _loadRequirement) &&
            const DeepCollectionEquality()
                .equals(other._pickupLocation, _pickupLocation) &&
            const DeepCollectionEquality()
                .equals(other._dropLocation, _dropLocation) &&
            const DeepCollectionEquality()
                .equals(other._companyNames, _companyNames) &&
            (identical(other.isSaved, isSaved) || other.isSaved == isSaved) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.filteredBy, filteredBy) ||
                other.filteredBy == filteredBy) &&
            (identical(other.pickupLocationName, pickupLocationName) ||
                other.pickupLocationName == pickupLocationName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dropLocationName, dropLocationName) ||
                other.dropLocationName == dropLocationName) &&
            (identical(other.minWeight, minWeight) ||
                other.minWeight == minWeight) &&
            (identical(other.maxWeight, maxWeight) ||
                other.maxWeight == maxWeight) &&
            (identical(other.minLoadDistance, minLoadDistance) ||
                other.minLoadDistance == minLoadDistance) &&
            (identical(other.maxLoadDistance, maxLoadDistance) ||
                other.maxLoadDistance == maxLoadDistance) &&
            (identical(other.minPrice, minPrice) ||
                other.minPrice == minPrice) &&
            (identical(other.maxPrice, maxPrice) ||
                other.maxPrice == maxPrice) &&
            const DeepCollectionEquality()
                .equals(other.packageType, packageType) &&
            (identical(other.minRate, minRate) || other.minRate == minRate) &&
            (identical(other.maxRate, maxRate) || other.maxRate == maxRate) &&
            (identical(other.loadType, loadType) ||
                other.loadType == loadType) &&
            (identical(other.minLoadLength, minLoadLength) ||
                other.minLoadLength == minLoadLength) &&
            (identical(other.maxLoadLength, maxLoadLength) ||
                other.maxLoadLength == maxLoadLength) &&
            (identical(other.pickupRadius, pickupRadius) ||
                other.pickupRadius == pickupRadius) &&
            (identical(other.dropRadius, dropRadius) ||
                other.dropRadius == dropRadius));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_trailerTypes),
        const DeepCollectionEquality().hash(_loadRequirement),
        const DeepCollectionEquality().hash(_pickupLocation),
        const DeepCollectionEquality().hash(_dropLocation),
        const DeepCollectionEquality().hash(_companyNames),
        isSaved,
        id,
        filteredBy,
        pickupLocationName,
        createdAt,
        updatedAt,
        date,
        dropLocationName,
        minWeight,
        maxWeight,
        minLoadDistance,
        maxLoadDistance,
        minPrice,
        maxPrice,
        const DeepCollectionEquality().hash(packageType),
        minRate,
        maxRate,
        loadType,
        minLoadLength,
        maxLoadLength,
        pickupRadius,
        dropRadius
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DatumCopyWith<_$_Datum> get copyWith =>
      __$$_DatumCopyWithImpl<_$_Datum>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DatumToJson(
      this,
    );
  }
}

abstract class _Datum implements Datum {
  const factory _Datum(
      {final List<String>? trailerTypes,
      final List<String>? loadRequirement,
      final List<double>? pickupLocation,
      final List<double>? dropLocation,
      final List<String>? companyNames,
      final bool? isSaved,
      @JsonKey(name: '_id') final String? id,
      final String? filteredBy,
      final String? pickupLocationName,
      final DateTime? createdAt,
      final DateTime? updatedAt,
      final DateTime? date,
      final String? dropLocationName,
      final int? minWeight,
      final int? maxWeight,
      final int? minLoadDistance,
      final int? maxLoadDistance,
      final int? minPrice,
      final int? maxPrice,
      final dynamic packageType,
      final int? minRate,
      final int? maxRate,
      final String? loadType,
      final int? minLoadLength,
      final int? maxLoadLength,
      final double? pickupRadius,
      final double? dropRadius}) = _$_Datum;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$_Datum.fromJson;

  @override
  List<String>? get trailerTypes;
  @override
  List<String>? get loadRequirement;
  @override
  List<double>? get pickupLocation;
  @override
  List<double>? get dropLocation;
  @override
  List<String>? get companyNames;
  @override
  bool? get isSaved;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get filteredBy;
  @override
  String? get pickupLocationName;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get date;
  @override
  String? get dropLocationName;
  @override
  int? get minWeight;
  @override
  int? get maxWeight;
  @override
  int? get minLoadDistance;
  @override
  int? get maxLoadDistance;
  @override
  int? get minPrice;
  @override
  int? get maxPrice;
  @override
  dynamic get packageType;
  @override
  int? get minRate;
  @override
  int? get maxRate;
  @override
  String? get loadType;
  @override
  int? get minLoadLength;
  @override
  int? get maxLoadLength;
  @override
  double? get pickupRadius;
  @override
  double? get dropRadius;
  @override
  @JsonKey(ignore: true)
  _$$_DatumCopyWith<_$_Datum> get copyWith =>
      throw _privateConstructorUsedError;
}
