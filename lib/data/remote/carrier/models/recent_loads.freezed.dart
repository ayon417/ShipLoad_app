// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recent_loads.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CarrierRecentLoads _$CarrierRecentLoadsFromJson(Map<String, dynamic> json) {
  return _CarrierRecentLoads.fromJson(json);
}

/// @nodoc
mixin _$CarrierRecentLoads {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  List<Datum> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CarrierRecentLoadsCopyWith<CarrierRecentLoads> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CarrierRecentLoadsCopyWith<$Res> {
  factory $CarrierRecentLoadsCopyWith(
          CarrierRecentLoads value, $Res Function(CarrierRecentLoads) then) =
      _$CarrierRecentLoadsCopyWithImpl<$Res, CarrierRecentLoads>;
  @useResult
  $Res call({int code, String message, bool isSuccess, List<Datum> data});
}

/// @nodoc
class _$CarrierRecentLoadsCopyWithImpl<$Res, $Val extends CarrierRecentLoads>
    implements $CarrierRecentLoadsCopyWith<$Res> {
  _$CarrierRecentLoadsCopyWithImpl(this._value, this._then);

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
              as List<Datum>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CarrierRecentLoadsCopyWith<$Res>
    implements $CarrierRecentLoadsCopyWith<$Res> {
  factory _$$_CarrierRecentLoadsCopyWith(_$_CarrierRecentLoads value,
          $Res Function(_$_CarrierRecentLoads) then) =
      __$$_CarrierRecentLoadsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, bool isSuccess, List<Datum> data});
}

/// @nodoc
class __$$_CarrierRecentLoadsCopyWithImpl<$Res>
    extends _$CarrierRecentLoadsCopyWithImpl<$Res, _$_CarrierRecentLoads>
    implements _$$_CarrierRecentLoadsCopyWith<$Res> {
  __$$_CarrierRecentLoadsCopyWithImpl(
      _$_CarrierRecentLoads _value, $Res Function(_$_CarrierRecentLoads) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? isSuccess = null,
    Object? data = null,
  }) {
    return _then(_$_CarrierRecentLoads(
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
              as List<Datum>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CarrierRecentLoads implements _CarrierRecentLoads {
  const _$_CarrierRecentLoads(
      {required this.code,
      required this.message,
      required this.isSuccess,
      required final List<Datum> data})
      : _data = data;

  factory _$_CarrierRecentLoads.fromJson(Map<String, dynamic> json) =>
      _$$_CarrierRecentLoadsFromJson(json);

  @override
  final int code;
  @override
  final String message;
  @override
  final bool isSuccess;
  final List<Datum> _data;
  @override
  List<Datum> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CarrierRecentLoads(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CarrierRecentLoads &&
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
  _$$_CarrierRecentLoadsCopyWith<_$_CarrierRecentLoads> get copyWith =>
      __$$_CarrierRecentLoadsCopyWithImpl<_$_CarrierRecentLoads>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CarrierRecentLoadsToJson(
      this,
    );
  }
}

abstract class _CarrierRecentLoads implements CarrierRecentLoads {
  const factory _CarrierRecentLoads(
      {required final int code,
      required final String message,
      required final bool isSuccess,
      required final List<Datum> data}) = _$_CarrierRecentLoads;

  factory _CarrierRecentLoads.fromJson(Map<String, dynamic> json) =
      _$_CarrierRecentLoads.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  bool get isSuccess;
  @override
  List<Datum> get data;
  @override
  @JsonKey(ignore: true)
  _$$_CarrierRecentLoadsCopyWith<_$_CarrierRecentLoads> get copyWith =>
      throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  List<String> get trailerType => throw _privateConstructorUsedError;
  bool get isCovered => throw _privateConstructorUsedError;
  bool get isSaved => throw _privateConstructorUsedError;
  List<String> get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String get pickupLocation => throw _privateConstructorUsedError;
  String get dropLocation => throw _privateConstructorUsedError;
  String get packageType => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get companyName => throw _privateConstructorUsedError;
  double get ratePerMile => throw _privateConstructorUsedError;
  DateTime get pickupDate => throw _privateConstructorUsedError;
  DateTime get dropDate => throw _privateConstructorUsedError;
  List<ActiveShipmentStop> get activeShipmentStops =>
      throw _privateConstructorUsedError;
  String get loadDocumentUrl => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get loadId => throw _privateConstructorUsedError;

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
      {List<String> trailerType,
      bool isCovered,
      bool isSaved,
      List<String> createdBy,
      @JsonKey(name: "_id") String? id,
      String pickupLocation,
      String dropLocation,
      String packageType,
      double quantity,
      double amount,
      String companyName,
      double ratePerMile,
      DateTime pickupDate,
      DateTime dropDate,
      List<ActiveShipmentStop> activeShipmentStops,
      String loadDocumentUrl,
      DateTime createdAt,
      DateTime updatedAt,
      String loadId});
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
    Object? trailerType = null,
    Object? isCovered = null,
    Object? isSaved = null,
    Object? createdBy = null,
    Object? id = freezed,
    Object? pickupLocation = null,
    Object? dropLocation = null,
    Object? packageType = null,
    Object? quantity = null,
    Object? amount = null,
    Object? companyName = null,
    Object? ratePerMile = null,
    Object? pickupDate = null,
    Object? dropDate = null,
    Object? activeShipmentStops = null,
    Object? loadDocumentUrl = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? loadId = null,
  }) {
    return _then(_value.copyWith(
      trailerType: null == trailerType
          ? _value.trailerType
          : trailerType // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isCovered: null == isCovered
          ? _value.isCovered
          : isCovered // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaved: null == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupLocation: null == pickupLocation
          ? _value.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as String,
      dropLocation: null == dropLocation
          ? _value.dropLocation
          : dropLocation // ignore: cast_nullable_to_non_nullable
              as String,
      packageType: null == packageType
          ? _value.packageType
          : packageType // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      ratePerMile: null == ratePerMile
          ? _value.ratePerMile
          : ratePerMile // ignore: cast_nullable_to_non_nullable
              as double,
      pickupDate: null == pickupDate
          ? _value.pickupDate
          : pickupDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dropDate: null == dropDate
          ? _value.dropDate
          : dropDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      activeShipmentStops: null == activeShipmentStops
          ? _value.activeShipmentStops
          : activeShipmentStops // ignore: cast_nullable_to_non_nullable
              as List<ActiveShipmentStop>,
      loadDocumentUrl: null == loadDocumentUrl
          ? _value.loadDocumentUrl
          : loadDocumentUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      loadId: null == loadId
          ? _value.loadId
          : loadId // ignore: cast_nullable_to_non_nullable
              as String,
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
      {List<String> trailerType,
      bool isCovered,
      bool isSaved,
      List<String> createdBy,
      @JsonKey(name: "_id") String? id,
      String pickupLocation,
      String dropLocation,
      String packageType,
      double quantity,
      double amount,
      String companyName,
      double ratePerMile,
      DateTime pickupDate,
      DateTime dropDate,
      List<ActiveShipmentStop> activeShipmentStops,
      String loadDocumentUrl,
      DateTime createdAt,
      DateTime updatedAt,
      String loadId});
}

/// @nodoc
class __$$_DatumCopyWithImpl<$Res> extends _$DatumCopyWithImpl<$Res, _$_Datum>
    implements _$$_DatumCopyWith<$Res> {
  __$$_DatumCopyWithImpl(_$_Datum _value, $Res Function(_$_Datum) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trailerType = null,
    Object? isCovered = null,
    Object? isSaved = null,
    Object? createdBy = null,
    Object? id = freezed,
    Object? pickupLocation = null,
    Object? dropLocation = null,
    Object? packageType = null,
    Object? quantity = null,
    Object? amount = null,
    Object? companyName = null,
    Object? ratePerMile = null,
    Object? pickupDate = null,
    Object? dropDate = null,
    Object? activeShipmentStops = null,
    Object? loadDocumentUrl = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? loadId = null,
  }) {
    return _then(_$_Datum(
      trailerType: null == trailerType
          ? _value._trailerType
          : trailerType // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isCovered: null == isCovered
          ? _value.isCovered
          : isCovered // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaved: null == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      createdBy: null == createdBy
          ? _value._createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupLocation: null == pickupLocation
          ? _value.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as String,
      dropLocation: null == dropLocation
          ? _value.dropLocation
          : dropLocation // ignore: cast_nullable_to_non_nullable
              as String,
      packageType: null == packageType
          ? _value.packageType
          : packageType // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      companyName: null == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String,
      ratePerMile: null == ratePerMile
          ? _value.ratePerMile
          : ratePerMile // ignore: cast_nullable_to_non_nullable
              as double,
      pickupDate: null == pickupDate
          ? _value.pickupDate
          : pickupDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dropDate: null == dropDate
          ? _value.dropDate
          : dropDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      activeShipmentStops: null == activeShipmentStops
          ? _value._activeShipmentStops
          : activeShipmentStops // ignore: cast_nullable_to_non_nullable
              as List<ActiveShipmentStop>,
      loadDocumentUrl: null == loadDocumentUrl
          ? _value.loadDocumentUrl
          : loadDocumentUrl // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      loadId: null == loadId
          ? _value.loadId
          : loadId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Datum implements _Datum {
  const _$_Datum(
      {required final List<String> trailerType,
      required this.isCovered,
      required this.isSaved,
      required final List<String> createdBy,
      @JsonKey(name: "_id") this.id,
      required this.pickupLocation,
      required this.dropLocation,
      required this.packageType,
      required this.quantity,
      required this.amount,
      required this.companyName,
      required this.ratePerMile,
      required this.pickupDate,
      required this.dropDate,
      required final List<ActiveShipmentStop> activeShipmentStops,
      required this.loadDocumentUrl,
      required this.createdAt,
      required this.updatedAt,
      required this.loadId})
      : _trailerType = trailerType,
        _createdBy = createdBy,
        _activeShipmentStops = activeShipmentStops;

  factory _$_Datum.fromJson(Map<String, dynamic> json) =>
      _$$_DatumFromJson(json);

  final List<String> _trailerType;
  @override
  List<String> get trailerType {
    if (_trailerType is EqualUnmodifiableListView) return _trailerType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trailerType);
  }

  @override
  final bool isCovered;
  @override
  final bool isSaved;
  final List<String> _createdBy;
  @override
  List<String> get createdBy {
    if (_createdBy is EqualUnmodifiableListView) return _createdBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_createdBy);
  }

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String pickupLocation;
  @override
  final String dropLocation;
  @override
  final String packageType;
  @override
  final double quantity;
  @override
  final double amount;
  @override
  final String companyName;
  @override
  final double ratePerMile;
  @override
  final DateTime pickupDate;
  @override
  final DateTime dropDate;
  final List<ActiveShipmentStop> _activeShipmentStops;
  @override
  List<ActiveShipmentStop> get activeShipmentStops {
    if (_activeShipmentStops is EqualUnmodifiableListView)
      return _activeShipmentStops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_activeShipmentStops);
  }

  @override
  final String loadDocumentUrl;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String loadId;

  @override
  String toString() {
    return 'Datum(trailerType: $trailerType, isCovered: $isCovered, isSaved: $isSaved, createdBy: $createdBy, id: $id, pickupLocation: $pickupLocation, dropLocation: $dropLocation, packageType: $packageType, quantity: $quantity, amount: $amount, companyName: $companyName, ratePerMile: $ratePerMile, pickupDate: $pickupDate, dropDate: $dropDate, activeShipmentStops: $activeShipmentStops, loadDocumentUrl: $loadDocumentUrl, createdAt: $createdAt, updatedAt: $updatedAt, loadId: $loadId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Datum &&
            const DeepCollectionEquality()
                .equals(other._trailerType, _trailerType) &&
            (identical(other.isCovered, isCovered) ||
                other.isCovered == isCovered) &&
            (identical(other.isSaved, isSaved) || other.isSaved == isSaved) &&
            const DeepCollectionEquality()
                .equals(other._createdBy, _createdBy) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pickupLocation, pickupLocation) ||
                other.pickupLocation == pickupLocation) &&
            (identical(other.dropLocation, dropLocation) ||
                other.dropLocation == dropLocation) &&
            (identical(other.packageType, packageType) ||
                other.packageType == packageType) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.ratePerMile, ratePerMile) ||
                other.ratePerMile == ratePerMile) &&
            (identical(other.pickupDate, pickupDate) ||
                other.pickupDate == pickupDate) &&
            (identical(other.dropDate, dropDate) ||
                other.dropDate == dropDate) &&
            const DeepCollectionEquality()
                .equals(other._activeShipmentStops, _activeShipmentStops) &&
            (identical(other.loadDocumentUrl, loadDocumentUrl) ||
                other.loadDocumentUrl == loadDocumentUrl) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.loadId, loadId) || other.loadId == loadId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_trailerType),
        isCovered,
        isSaved,
        const DeepCollectionEquality().hash(_createdBy),
        id,
        pickupLocation,
        dropLocation,
        packageType,
        quantity,
        amount,
        companyName,
        ratePerMile,
        pickupDate,
        dropDate,
        const DeepCollectionEquality().hash(_activeShipmentStops),
        loadDocumentUrl,
        createdAt,
        updatedAt,
        loadId
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
      {required final List<String> trailerType,
      required final bool isCovered,
      required final bool isSaved,
      required final List<String> createdBy,
      @JsonKey(name: "_id") final String? id,
      required final String pickupLocation,
      required final String dropLocation,
      required final String packageType,
      required final double quantity,
      required final double amount,
      required final String companyName,
      required final double ratePerMile,
      required final DateTime pickupDate,
      required final DateTime dropDate,
      required final List<ActiveShipmentStop> activeShipmentStops,
      required final String loadDocumentUrl,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final String loadId}) = _$_Datum;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$_Datum.fromJson;

  @override
  List<String> get trailerType;
  @override
  bool get isCovered;
  @override
  bool get isSaved;
  @override
  List<String> get createdBy;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String get pickupLocation;
  @override
  String get dropLocation;
  @override
  String get packageType;
  @override
  double get quantity;
  @override
  double get amount;
  @override
  String get companyName;
  @override
  double get ratePerMile;
  @override
  DateTime get pickupDate;
  @override
  DateTime get dropDate;
  @override
  List<ActiveShipmentStop> get activeShipmentStops;
  @override
  String get loadDocumentUrl;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String get loadId;
  @override
  @JsonKey(ignore: true)
  _$$_DatumCopyWith<_$_Datum> get copyWith =>
      throw _privateConstructorUsedError;
}

ActiveShipmentStop _$ActiveShipmentStopFromJson(Map<String, dynamic> json) {
  return _ActiveShipmentStop.fromJson(json);
}

/// @nodoc
mixin _$ActiveShipmentStop {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String get pickupLocation => throw _privateConstructorUsedError;
  String get emailAddress => throw _privateConstructorUsedError;
  DateTime get estimatePickupDate => throw _privateConstructorUsedError;
  String get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActiveShipmentStopCopyWith<ActiveShipmentStop> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveShipmentStopCopyWith<$Res> {
  factory $ActiveShipmentStopCopyWith(
          ActiveShipmentStop value, $Res Function(ActiveShipmentStop) then) =
      _$ActiveShipmentStopCopyWithImpl<$Res, ActiveShipmentStop>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String pickupLocation,
      String emailAddress,
      DateTime estimatePickupDate,
      String notes});
}

/// @nodoc
class _$ActiveShipmentStopCopyWithImpl<$Res, $Val extends ActiveShipmentStop>
    implements $ActiveShipmentStopCopyWith<$Res> {
  _$ActiveShipmentStopCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pickupLocation = null,
    Object? emailAddress = null,
    Object? estimatePickupDate = null,
    Object? notes = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupLocation: null == pickupLocation
          ? _value.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      estimatePickupDate: null == estimatePickupDate
          ? _value.estimatePickupDate
          : estimatePickupDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ActiveShipmentStopCopyWith<$Res>
    implements $ActiveShipmentStopCopyWith<$Res> {
  factory _$$_ActiveShipmentStopCopyWith(_$_ActiveShipmentStop value,
          $Res Function(_$_ActiveShipmentStop) then) =
      __$$_ActiveShipmentStopCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      String pickupLocation,
      String emailAddress,
      DateTime estimatePickupDate,
      String notes});
}

/// @nodoc
class __$$_ActiveShipmentStopCopyWithImpl<$Res>
    extends _$ActiveShipmentStopCopyWithImpl<$Res, _$_ActiveShipmentStop>
    implements _$$_ActiveShipmentStopCopyWith<$Res> {
  __$$_ActiveShipmentStopCopyWithImpl(
      _$_ActiveShipmentStop _value, $Res Function(_$_ActiveShipmentStop) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? pickupLocation = null,
    Object? emailAddress = null,
    Object? estimatePickupDate = null,
    Object? notes = null,
  }) {
    return _then(_$_ActiveShipmentStop(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      pickupLocation: null == pickupLocation
          ? _value.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      estimatePickupDate: null == estimatePickupDate
          ? _value.estimatePickupDate
          : estimatePickupDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActiveShipmentStop implements _ActiveShipmentStop {
  const _$_ActiveShipmentStop(
      {@JsonKey(name: "_id") this.id,
      required this.pickupLocation,
      required this.emailAddress,
      required this.estimatePickupDate,
      required this.notes});

  factory _$_ActiveShipmentStop.fromJson(Map<String, dynamic> json) =>
      _$$_ActiveShipmentStopFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String pickupLocation;
  @override
  final String emailAddress;
  @override
  final DateTime estimatePickupDate;
  @override
  final String notes;

  @override
  String toString() {
    return 'ActiveShipmentStop(id: $id, pickupLocation: $pickupLocation, emailAddress: $emailAddress, estimatePickupDate: $estimatePickupDate, notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActiveShipmentStop &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.pickupLocation, pickupLocation) ||
                other.pickupLocation == pickupLocation) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.estimatePickupDate, estimatePickupDate) ||
                other.estimatePickupDate == estimatePickupDate) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, pickupLocation, emailAddress, estimatePickupDate, notes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActiveShipmentStopCopyWith<_$_ActiveShipmentStop> get copyWith =>
      __$$_ActiveShipmentStopCopyWithImpl<_$_ActiveShipmentStop>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActiveShipmentStopToJson(
      this,
    );
  }
}

abstract class _ActiveShipmentStop implements ActiveShipmentStop {
  const factory _ActiveShipmentStop(
      {@JsonKey(name: "_id") final String? id,
      required final String pickupLocation,
      required final String emailAddress,
      required final DateTime estimatePickupDate,
      required final String notes}) = _$_ActiveShipmentStop;

  factory _ActiveShipmentStop.fromJson(Map<String, dynamic> json) =
      _$_ActiveShipmentStop.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String get pickupLocation;
  @override
  String get emailAddress;
  @override
  DateTime get estimatePickupDate;
  @override
  String get notes;
  @override
  @JsonKey(ignore: true)
  _$$_ActiveShipmentStopCopyWith<_$_ActiveShipmentStop> get copyWith =>
      throw _privateConstructorUsedError;
}
