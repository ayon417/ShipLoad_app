// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_filter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SaveFilterResponse _$SaveFilterResponseFromJson(Map<String, dynamic> json) {
  return _SaveFilterResponse.fromJson(json);
}

/// @nodoc
mixin _$SaveFilterResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveFilterResponseCopyWith<SaveFilterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveFilterResponseCopyWith<$Res> {
  factory $SaveFilterResponseCopyWith(
          SaveFilterResponse value, $Res Function(SaveFilterResponse) then) =
      _$SaveFilterResponseCopyWithImpl<$Res, SaveFilterResponse>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SaveFilterResponseCopyWithImpl<$Res, $Val extends SaveFilterResponse>
    implements $SaveFilterResponseCopyWith<$Res> {
  _$SaveFilterResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_SaveFilterResponseCopyWith<$Res>
    implements $SaveFilterResponseCopyWith<$Res> {
  factory _$$_SaveFilterResponseCopyWith(_$_SaveFilterResponse value,
          $Res Function(_$_SaveFilterResponse) then) =
      __$$_SaveFilterResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_SaveFilterResponseCopyWithImpl<$Res>
    extends _$SaveFilterResponseCopyWithImpl<$Res, _$_SaveFilterResponse>
    implements _$$_SaveFilterResponseCopyWith<$Res> {
  __$$_SaveFilterResponseCopyWithImpl(
      _$_SaveFilterResponse _value, $Res Function(_$_SaveFilterResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_SaveFilterResponse(
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
class _$_SaveFilterResponse implements _SaveFilterResponse {
  const _$_SaveFilterResponse(
      {this.code, this.message, this.isSuccess, this.data});

  factory _$_SaveFilterResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SaveFilterResponseFromJson(json);

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
    return 'SaveFilterResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveFilterResponse &&
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
  _$$_SaveFilterResponseCopyWith<_$_SaveFilterResponse> get copyWith =>
      __$$_SaveFilterResponseCopyWithImpl<_$_SaveFilterResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SaveFilterResponseToJson(
      this,
    );
  }
}

abstract class _SaveFilterResponse implements SaveFilterResponse {
  const factory _SaveFilterResponse(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final Data? data}) = _$_SaveFilterResponse;

  factory _SaveFilterResponse.fromJson(Map<String, dynamic> json) =
      _$_SaveFilterResponse.fromJson;

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
  _$$_SaveFilterResponseCopyWith<_$_SaveFilterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  List<String>? get trailerTypes => throw _privateConstructorUsedError;
  List<dynamic>? get loadRequirement => throw _privateConstructorUsedError;
  List<double>? get pickupLocation => throw _privateConstructorUsedError;
  List<double>? get dropLocation => throw _privateConstructorUsedError;
  List<String>? get companyNames => throw _privateConstructorUsedError;
  bool? get isSaved => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get filteredBy => throw _privateConstructorUsedError;
  int? get minWeight => throw _privateConstructorUsedError;
  double? get maxWeight => throw _privateConstructorUsedError;
  int? get minLoadDistance => throw _privateConstructorUsedError;
  int? get maxLoadDistance => throw _privateConstructorUsedError;
  int? get minPrice => throw _privateConstructorUsedError;
  double? get maxPrice => throw _privateConstructorUsedError;
  dynamic get packageType => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  int? get minRate => throw _privateConstructorUsedError;
  double? get maxRate => throw _privateConstructorUsedError;
  String? get loadType => throw _privateConstructorUsedError;
  int? get minLoadLength => throw _privateConstructorUsedError;
  double? get maxLoadLength => throw _privateConstructorUsedError;
  double? get pickupRadius => throw _privateConstructorUsedError;
  double? get dropRadius => throw _privateConstructorUsedError;
  String? get pickupLocationName => throw _privateConstructorUsedError;
  String? get dropLocationName => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

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
      {List<String>? trailerTypes,
      List<dynamic>? loadRequirement,
      List<double>? pickupLocation,
      List<double>? dropLocation,
      List<String>? companyNames,
      bool? isSaved,
      String? id,
      String? filteredBy,
      int? minWeight,
      double? maxWeight,
      int? minLoadDistance,
      int? maxLoadDistance,
      int? minPrice,
      double? maxPrice,
      dynamic packageType,
      DateTime? date,
      int? minRate,
      double? maxRate,
      String? loadType,
      int? minLoadLength,
      double? maxLoadLength,
      double? pickupRadius,
      double? dropRadius,
      String? pickupLocationName,
      String? dropLocationName,
      DateTime? createdAt,
      DateTime? updatedAt});
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
    Object? trailerTypes = freezed,
    Object? loadRequirement = freezed,
    Object? pickupLocation = freezed,
    Object? dropLocation = freezed,
    Object? companyNames = freezed,
    Object? isSaved = freezed,
    Object? id = freezed,
    Object? filteredBy = freezed,
    Object? minWeight = freezed,
    Object? maxWeight = freezed,
    Object? minLoadDistance = freezed,
    Object? maxLoadDistance = freezed,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? packageType = freezed,
    Object? date = freezed,
    Object? minRate = freezed,
    Object? maxRate = freezed,
    Object? loadType = freezed,
    Object? minLoadLength = freezed,
    Object? maxLoadLength = freezed,
    Object? pickupRadius = freezed,
    Object? dropRadius = freezed,
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
      loadRequirement: freezed == loadRequirement
          ? _value.loadRequirement
          : loadRequirement // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
      minWeight: freezed == minWeight
          ? _value.minWeight
          : minWeight // ignore: cast_nullable_to_non_nullable
              as int?,
      maxWeight: freezed == maxWeight
          ? _value.maxWeight
          : maxWeight // ignore: cast_nullable_to_non_nullable
              as double?,
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
              as double?,
      packageType: freezed == packageType
          ? _value.packageType
          : packageType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      minRate: freezed == minRate
          ? _value.minRate
          : minRate // ignore: cast_nullable_to_non_nullable
              as int?,
      maxRate: freezed == maxRate
          ? _value.maxRate
          : maxRate // ignore: cast_nullable_to_non_nullable
              as double?,
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
              as double?,
      pickupRadius: freezed == pickupRadius
          ? _value.pickupRadius
          : pickupRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      dropRadius: freezed == dropRadius
          ? _value.dropRadius
          : dropRadius // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? trailerTypes,
      List<dynamic>? loadRequirement,
      List<double>? pickupLocation,
      List<double>? dropLocation,
      List<String>? companyNames,
      bool? isSaved,
      String? id,
      String? filteredBy,
      int? minWeight,
      double? maxWeight,
      int? minLoadDistance,
      int? maxLoadDistance,
      int? minPrice,
      double? maxPrice,
      dynamic packageType,
      DateTime? date,
      int? minRate,
      double? maxRate,
      String? loadType,
      int? minLoadLength,
      double? maxLoadLength,
      double? pickupRadius,
      double? dropRadius,
      String? pickupLocationName,
      String? dropLocationName,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
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
    Object? minWeight = freezed,
    Object? maxWeight = freezed,
    Object? minLoadDistance = freezed,
    Object? maxLoadDistance = freezed,
    Object? minPrice = freezed,
    Object? maxPrice = freezed,
    Object? packageType = freezed,
    Object? date = freezed,
    Object? minRate = freezed,
    Object? maxRate = freezed,
    Object? loadType = freezed,
    Object? minLoadLength = freezed,
    Object? maxLoadLength = freezed,
    Object? pickupRadius = freezed,
    Object? dropRadius = freezed,
    Object? pickupLocationName = freezed,
    Object? dropLocationName = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Data(
      trailerTypes: freezed == trailerTypes
          ? _value._trailerTypes
          : trailerTypes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      loadRequirement: freezed == loadRequirement
          ? _value._loadRequirement
          : loadRequirement // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
      minWeight: freezed == minWeight
          ? _value.minWeight
          : minWeight // ignore: cast_nullable_to_non_nullable
              as int?,
      maxWeight: freezed == maxWeight
          ? _value.maxWeight
          : maxWeight // ignore: cast_nullable_to_non_nullable
              as double?,
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
              as double?,
      packageType: freezed == packageType
          ? _value.packageType
          : packageType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      minRate: freezed == minRate
          ? _value.minRate
          : minRate // ignore: cast_nullable_to_non_nullable
              as int?,
      maxRate: freezed == maxRate
          ? _value.maxRate
          : maxRate // ignore: cast_nullable_to_non_nullable
              as double?,
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
              as double?,
      pickupRadius: freezed == pickupRadius
          ? _value.pickupRadius
          : pickupRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      dropRadius: freezed == dropRadius
          ? _value.dropRadius
          : dropRadius // ignore: cast_nullable_to_non_nullable
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
class _$_Data implements _Data {
  const _$_Data(
      {final List<String>? trailerTypes,
      final List<dynamic>? loadRequirement,
      final List<double>? pickupLocation,
      final List<double>? dropLocation,
      final List<String>? companyNames,
      this.isSaved,
      this.id,
      this.filteredBy,
      this.minWeight,
      this.maxWeight,
      this.minLoadDistance,
      this.maxLoadDistance,
      this.minPrice,
      this.maxPrice,
      this.packageType,
      this.date,
      this.minRate,
      this.maxRate,
      this.loadType,
      this.minLoadLength,
      this.maxLoadLength,
      this.pickupRadius,
      this.dropRadius,
      this.pickupLocationName,
      this.dropLocationName,
      this.createdAt,
      this.updatedAt})
      : _trailerTypes = trailerTypes,
        _loadRequirement = loadRequirement,
        _pickupLocation = pickupLocation,
        _dropLocation = dropLocation,
        _companyNames = companyNames;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  final List<String>? _trailerTypes;
  @override
  List<String>? get trailerTypes {
    final value = _trailerTypes;
    if (value == null) return null;
    if (_trailerTypes is EqualUnmodifiableListView) return _trailerTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _loadRequirement;
  @override
  List<dynamic>? get loadRequirement {
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
  @override
  final String? id;
  @override
  final String? filteredBy;
  @override
  final int? minWeight;
  @override
  final double? maxWeight;
  @override
  final int? minLoadDistance;
  @override
  final int? maxLoadDistance;
  @override
  final int? minPrice;
  @override
  final double? maxPrice;
  @override
  final dynamic packageType;
  @override
  final DateTime? date;
  @override
  final int? minRate;
  @override
  final double? maxRate;
  @override
  final String? loadType;
  @override
  final int? minLoadLength;
  @override
  final double? maxLoadLength;
  @override
  final double? pickupRadius;
  @override
  final double? dropRadius;
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
    return 'Data(trailerTypes: $trailerTypes, loadRequirement: $loadRequirement, pickupLocation: $pickupLocation, dropLocation: $dropLocation, companyNames: $companyNames, isSaved: $isSaved, id: $id, filteredBy: $filteredBy, minWeight: $minWeight, maxWeight: $maxWeight, minLoadDistance: $minLoadDistance, maxLoadDistance: $maxLoadDistance, minPrice: $minPrice, maxPrice: $maxPrice, packageType: $packageType, date: $date, minRate: $minRate, maxRate: $maxRate, loadType: $loadType, minLoadLength: $minLoadLength, maxLoadLength: $maxLoadLength, pickupRadius: $pickupRadius, dropRadius: $dropRadius, pickupLocationName: $pickupLocationName, dropLocationName: $dropLocationName, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
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
            (identical(other.date, date) || other.date == date) &&
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
                other.dropRadius == dropRadius) &&
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
        const DeepCollectionEquality().hash(_loadRequirement),
        const DeepCollectionEquality().hash(_pickupLocation),
        const DeepCollectionEquality().hash(_dropLocation),
        const DeepCollectionEquality().hash(_companyNames),
        isSaved,
        id,
        filteredBy,
        minWeight,
        maxWeight,
        minLoadDistance,
        maxLoadDistance,
        minPrice,
        maxPrice,
        const DeepCollectionEquality().hash(packageType),
        date,
        minRate,
        maxRate,
        loadType,
        minLoadLength,
        maxLoadLength,
        pickupRadius,
        dropRadius,
        pickupLocationName,
        dropLocationName,
        createdAt,
        updatedAt
      ]);

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
      {final List<String>? trailerTypes,
      final List<dynamic>? loadRequirement,
      final List<double>? pickupLocation,
      final List<double>? dropLocation,
      final List<String>? companyNames,
      final bool? isSaved,
      final String? id,
      final String? filteredBy,
      final int? minWeight,
      final double? maxWeight,
      final int? minLoadDistance,
      final int? maxLoadDistance,
      final int? minPrice,
      final double? maxPrice,
      final dynamic packageType,
      final DateTime? date,
      final int? minRate,
      final double? maxRate,
      final String? loadType,
      final int? minLoadLength,
      final double? maxLoadLength,
      final double? pickupRadius,
      final double? dropRadius,
      final String? pickupLocationName,
      final String? dropLocationName,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  List<String>? get trailerTypes;
  @override
  List<dynamic>? get loadRequirement;
  @override
  List<double>? get pickupLocation;
  @override
  List<double>? get dropLocation;
  @override
  List<String>? get companyNames;
  @override
  bool? get isSaved;
  @override
  String? get id;
  @override
  String? get filteredBy;
  @override
  int? get minWeight;
  @override
  double? get maxWeight;
  @override
  int? get minLoadDistance;
  @override
  int? get maxLoadDistance;
  @override
  int? get minPrice;
  @override
  double? get maxPrice;
  @override
  dynamic get packageType;
  @override
  DateTime? get date;
  @override
  int? get minRate;
  @override
  double? get maxRate;
  @override
  String? get loadType;
  @override
  int? get minLoadLength;
  @override
  double? get maxLoadLength;
  @override
  double? get pickupRadius;
  @override
  double? get dropRadius;
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
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}
