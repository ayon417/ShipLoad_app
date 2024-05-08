// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'save_unsave_loads.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SaveUnsaveLoads _$SaveUnsaveLoadsFromJson(Map<String, dynamic> json) {
  return _SaveUnsaveLoads.fromJson(json);
}

/// @nodoc
mixin _$SaveUnsaveLoads {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SaveUnsaveLoadsCopyWith<SaveUnsaveLoads> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveUnsaveLoadsCopyWith<$Res> {
  factory $SaveUnsaveLoadsCopyWith(
          SaveUnsaveLoads value, $Res Function(SaveUnsaveLoads) then) =
      _$SaveUnsaveLoadsCopyWithImpl<$Res, SaveUnsaveLoads>;
  @useResult
  $Res call({int code, String message, bool isSuccess, Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$SaveUnsaveLoadsCopyWithImpl<$Res, $Val extends SaveUnsaveLoads>
    implements $SaveUnsaveLoadsCopyWith<$Res> {
  _$SaveUnsaveLoadsCopyWithImpl(this._value, this._then);

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
abstract class _$$_SaveUnsaveLoadsCopyWith<$Res>
    implements $SaveUnsaveLoadsCopyWith<$Res> {
  factory _$$_SaveUnsaveLoadsCopyWith(
          _$_SaveUnsaveLoads value, $Res Function(_$_SaveUnsaveLoads) then) =
      __$$_SaveUnsaveLoadsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, bool isSuccess, Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_SaveUnsaveLoadsCopyWithImpl<$Res>
    extends _$SaveUnsaveLoadsCopyWithImpl<$Res, _$_SaveUnsaveLoads>
    implements _$$_SaveUnsaveLoadsCopyWith<$Res> {
  __$$_SaveUnsaveLoadsCopyWithImpl(
      _$_SaveUnsaveLoads _value, $Res Function(_$_SaveUnsaveLoads) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? isSuccess = null,
    Object? data = null,
  }) {
    return _then(_$_SaveUnsaveLoads(
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
class _$_SaveUnsaveLoads implements _SaveUnsaveLoads {
  const _$_SaveUnsaveLoads(
      {required this.code,
      required this.message,
      required this.isSuccess,
      required this.data});

  factory _$_SaveUnsaveLoads.fromJson(Map<String, dynamic> json) =>
      _$$_SaveUnsaveLoadsFromJson(json);

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
    return 'SaveUnsaveLoads(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveUnsaveLoads &&
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
  _$$_SaveUnsaveLoadsCopyWith<_$_SaveUnsaveLoads> get copyWith =>
      __$$_SaveUnsaveLoadsCopyWithImpl<_$_SaveUnsaveLoads>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SaveUnsaveLoadsToJson(
      this,
    );
  }
}

abstract class _SaveUnsaveLoads implements SaveUnsaveLoads {
  const factory _SaveUnsaveLoads(
      {required final int code,
      required final String message,
      required final bool isSuccess,
      required final Data data}) = _$_SaveUnsaveLoads;

  factory _SaveUnsaveLoads.fromJson(Map<String, dynamic> json) =
      _$_SaveUnsaveLoads.fromJson;

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
  _$$_SaveUnsaveLoadsCopyWith<_$_SaveUnsaveLoads> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  List<String> get trailerType => throw _privateConstructorUsedError;
  bool get isCovered => throw _privateConstructorUsedError;
  bool get isSaved =>
      throw _privateConstructorUsedError; // required List<String> createdBy,
  @JsonKey(name: "_id")
  String? get id =>
      throw _privateConstructorUsedError; // required String pickupLocation,
// required String dropLocation,
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
      {List<String> trailerType,
      bool isCovered,
      bool isSaved,
      @JsonKey(name: "_id") String? id,
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
      DateTime updatedAt});
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
    Object? trailerType = null,
    Object? isCovered = null,
    Object? isSaved = null,
    Object? id = freezed,
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {List<String> trailerType,
      bool isCovered,
      bool isSaved,
      @JsonKey(name: "_id") String? id,
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
      DateTime updatedAt});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trailerType = null,
    Object? isCovered = null,
    Object? isSaved = null,
    Object? id = freezed,
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
  }) {
    return _then(_$_Data(
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
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {required final List<String> trailerType,
      required this.isCovered,
      required this.isSaved,
      @JsonKey(name: "_id") this.id,
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
      required this.updatedAt})
      : _trailerType = trailerType,
        _activeShipmentStops = activeShipmentStops;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

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
// required List<String> createdBy,
  @override
  @JsonKey(name: "_id")
  final String? id;
// required String pickupLocation,
// required String dropLocation,
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
  String toString() {
    return 'Data(trailerType: $trailerType, isCovered: $isCovered, isSaved: $isSaved, id: $id, packageType: $packageType, quantity: $quantity, amount: $amount, companyName: $companyName, ratePerMile: $ratePerMile, pickupDate: $pickupDate, dropDate: $dropDate, activeShipmentStops: $activeShipmentStops, loadDocumentUrl: $loadDocumentUrl, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            const DeepCollectionEquality()
                .equals(other._trailerType, _trailerType) &&
            (identical(other.isCovered, isCovered) ||
                other.isCovered == isCovered) &&
            (identical(other.isSaved, isSaved) || other.isSaved == isSaved) &&
            (identical(other.id, id) || other.id == id) &&
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
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_trailerType),
      isCovered,
      isSaved,
      id,
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
      updatedAt);

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
      {required final List<String> trailerType,
      required final bool isCovered,
      required final bool isSaved,
      @JsonKey(name: "_id") final String? id,
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
      required final DateTime updatedAt}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  List<String> get trailerType;
  @override
  bool get isCovered;
  @override
  bool get isSaved;
  @override // required List<String> createdBy,
  @JsonKey(name: "_id")
  String? get id;
  @override // required String pickupLocation,
// required String dropLocation,
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
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

ActiveShipmentStop _$ActiveShipmentStopFromJson(Map<String, dynamic> json) {
  return _ActiveShipmentStop.fromJson(json);
}

/// @nodoc
mixin _$ActiveShipmentStop {
  @JsonKey(name: "_id")
  String? get id =>
      throw _privateConstructorUsedError; // required String pickupLocation,
// required String emailAddress,
// required DateTime estimatePickupDate,
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
  $Res call({@JsonKey(name: "_id") String? id, String notes});
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
    Object? notes = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call({@JsonKey(name: "_id") String? id, String notes});
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
    Object? notes = null,
  }) {
    return _then(_$_ActiveShipmentStop(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {@JsonKey(name: "_id") this.id, required this.notes});

  factory _$_ActiveShipmentStop.fromJson(Map<String, dynamic> json) =>
      _$$_ActiveShipmentStopFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
// required String pickupLocation,
// required String emailAddress,
// required DateTime estimatePickupDate,
  @override
  final String notes;

  @override
  String toString() {
    return 'ActiveShipmentStop(id: $id, notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActiveShipmentStop &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, notes);

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
      required final String notes}) = _$_ActiveShipmentStop;

  factory _ActiveShipmentStop.fromJson(Map<String, dynamic> json) =
      _$_ActiveShipmentStop.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override // required String pickupLocation,
// required String emailAddress,
// required DateTime estimatePickupDate,
  String get notes;
  @override
  @JsonKey(ignore: true)
  _$$_ActiveShipmentStopCopyWith<_$_ActiveShipmentStop> get copyWith =>
      throw _privateConstructorUsedError;
}
