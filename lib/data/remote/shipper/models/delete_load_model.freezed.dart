// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_load_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeleteLoadResponse _$DeleteLoadResponseFromJson(Map<String, dynamic> json) {
  return _DeleteLoadResponse.fromJson(json);
}

/// @nodoc
mixin _$DeleteLoadResponse {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteLoadResponseCopyWith<DeleteLoadResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteLoadResponseCopyWith<$Res> {
  factory $DeleteLoadResponseCopyWith(
          DeleteLoadResponse value, $Res Function(DeleteLoadResponse) then) =
      _$DeleteLoadResponseCopyWithImpl<$Res, DeleteLoadResponse>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$DeleteLoadResponseCopyWithImpl<$Res, $Val extends DeleteLoadResponse>
    implements $DeleteLoadResponseCopyWith<$Res> {
  _$DeleteLoadResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_DeleteLoadResponseCopyWith<$Res>
    implements $DeleteLoadResponseCopyWith<$Res> {
  factory _$$_DeleteLoadResponseCopyWith(_$_DeleteLoadResponse value,
          $Res Function(_$_DeleteLoadResponse) then) =
      __$$_DeleteLoadResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_DeleteLoadResponseCopyWithImpl<$Res>
    extends _$DeleteLoadResponseCopyWithImpl<$Res, _$_DeleteLoadResponse>
    implements _$$_DeleteLoadResponseCopyWith<$Res> {
  __$$_DeleteLoadResponseCopyWithImpl(
      _$_DeleteLoadResponse _value, $Res Function(_$_DeleteLoadResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_DeleteLoadResponse(
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
class _$_DeleteLoadResponse implements _DeleteLoadResponse {
  const _$_DeleteLoadResponse(
      {this.code, this.message, this.isSuccess, this.data});

  factory _$_DeleteLoadResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DeleteLoadResponseFromJson(json);

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
    return 'DeleteLoadResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteLoadResponse &&
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
  _$$_DeleteLoadResponseCopyWith<_$_DeleteLoadResponse> get copyWith =>
      __$$_DeleteLoadResponseCopyWithImpl<_$_DeleteLoadResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeleteLoadResponseToJson(
      this,
    );
  }
}

abstract class _DeleteLoadResponse implements DeleteLoadResponse {
  const factory _DeleteLoadResponse(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final Data? data}) = _$_DeleteLoadResponse;

  factory _DeleteLoadResponse.fromJson(Map<String, dynamic> json) =
      _$_DeleteLoadResponse.fromJson;

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
  _$$_DeleteLoadResponseCopyWith<_$_DeleteLoadResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  List<String>? get trailerType => throw _privateConstructorUsedError;
  bool? get isCovered => throw _privateConstructorUsedError;
  List<String>? get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: '_id')
  String? get id =>
      throw _privateConstructorUsedError; //  String pickupLocation,
//  String dropLocation,
  String? get packageType => throw _privateConstructorUsedError;
  double? get quantity => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  String? get companyName => throw _privateConstructorUsedError;
  double? get ratePerMile => throw _privateConstructorUsedError;
  DateTime? get pickupDate => throw _privateConstructorUsedError;
  DateTime? get dropDate => throw _privateConstructorUsedError;
  List<ActiveShipmentStop>? get activeShipmentStops =>
      throw _privateConstructorUsedError;
  String? get loadDocumentUrl => throw _privateConstructorUsedError;
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
      {List<String>? trailerType,
      bool? isCovered,
      List<String>? createdBy,
      @JsonKey(name: '_id') String? id,
      String? packageType,
      double? quantity,
      double? amount,
      String? companyName,
      double? ratePerMile,
      DateTime? pickupDate,
      DateTime? dropDate,
      List<ActiveShipmentStop>? activeShipmentStops,
      String? loadDocumentUrl,
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
    Object? trailerType = freezed,
    Object? isCovered = freezed,
    Object? createdBy = freezed,
    Object? id = freezed,
    Object? packageType = freezed,
    Object? quantity = freezed,
    Object? amount = freezed,
    Object? companyName = freezed,
    Object? ratePerMile = freezed,
    Object? pickupDate = freezed,
    Object? dropDate = freezed,
    Object? activeShipmentStops = freezed,
    Object? loadDocumentUrl = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      trailerType: freezed == trailerType
          ? _value.trailerType
          : trailerType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isCovered: freezed == isCovered
          ? _value.isCovered
          : isCovered // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      packageType: freezed == packageType
          ? _value.packageType
          : packageType // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      ratePerMile: freezed == ratePerMile
          ? _value.ratePerMile
          : ratePerMile // ignore: cast_nullable_to_non_nullable
              as double?,
      pickupDate: freezed == pickupDate
          ? _value.pickupDate
          : pickupDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dropDate: freezed == dropDate
          ? _value.dropDate
          : dropDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      activeShipmentStops: freezed == activeShipmentStops
          ? _value.activeShipmentStops
          : activeShipmentStops // ignore: cast_nullable_to_non_nullable
              as List<ActiveShipmentStop>?,
      loadDocumentUrl: freezed == loadDocumentUrl
          ? _value.loadDocumentUrl
          : loadDocumentUrl // ignore: cast_nullable_to_non_nullable
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
      {List<String>? trailerType,
      bool? isCovered,
      List<String>? createdBy,
      @JsonKey(name: '_id') String? id,
      String? packageType,
      double? quantity,
      double? amount,
      String? companyName,
      double? ratePerMile,
      DateTime? pickupDate,
      DateTime? dropDate,
      List<ActiveShipmentStop>? activeShipmentStops,
      String? loadDocumentUrl,
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
    Object? trailerType = freezed,
    Object? isCovered = freezed,
    Object? createdBy = freezed,
    Object? id = freezed,
    Object? packageType = freezed,
    Object? quantity = freezed,
    Object? amount = freezed,
    Object? companyName = freezed,
    Object? ratePerMile = freezed,
    Object? pickupDate = freezed,
    Object? dropDate = freezed,
    Object? activeShipmentStops = freezed,
    Object? loadDocumentUrl = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Data(
      trailerType: freezed == trailerType
          ? _value._trailerType
          : trailerType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isCovered: freezed == isCovered
          ? _value.isCovered
          : isCovered // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdBy: freezed == createdBy
          ? _value._createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      packageType: freezed == packageType
          ? _value.packageType
          : packageType // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      ratePerMile: freezed == ratePerMile
          ? _value.ratePerMile
          : ratePerMile // ignore: cast_nullable_to_non_nullable
              as double?,
      pickupDate: freezed == pickupDate
          ? _value.pickupDate
          : pickupDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dropDate: freezed == dropDate
          ? _value.dropDate
          : dropDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      activeShipmentStops: freezed == activeShipmentStops
          ? _value._activeShipmentStops
          : activeShipmentStops // ignore: cast_nullable_to_non_nullable
              as List<ActiveShipmentStop>?,
      loadDocumentUrl: freezed == loadDocumentUrl
          ? _value.loadDocumentUrl
          : loadDocumentUrl // ignore: cast_nullable_to_non_nullable
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
      {final List<String>? trailerType,
      this.isCovered,
      final List<String>? createdBy,
      @JsonKey(name: '_id') this.id,
      this.packageType,
      this.quantity,
      this.amount,
      this.companyName,
      this.ratePerMile,
      this.pickupDate,
      this.dropDate,
      final List<ActiveShipmentStop>? activeShipmentStops,
      this.loadDocumentUrl,
      this.createdAt,
      this.updatedAt})
      : _trailerType = trailerType,
        _createdBy = createdBy,
        _activeShipmentStops = activeShipmentStops;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  final List<String>? _trailerType;
  @override
  List<String>? get trailerType {
    final value = _trailerType;
    if (value == null) return null;
    if (_trailerType is EqualUnmodifiableListView) return _trailerType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isCovered;
  final List<String>? _createdBy;
  @override
  List<String>? get createdBy {
    final value = _createdBy;
    if (value == null) return null;
    if (_createdBy is EqualUnmodifiableListView) return _createdBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: '_id')
  final String? id;
//  String pickupLocation,
//  String dropLocation,
  @override
  final String? packageType;
  @override
  final double? quantity;
  @override
  final double? amount;
  @override
  final String? companyName;
  @override
  final double? ratePerMile;
  @override
  final DateTime? pickupDate;
  @override
  final DateTime? dropDate;
  final List<ActiveShipmentStop>? _activeShipmentStops;
  @override
  List<ActiveShipmentStop>? get activeShipmentStops {
    final value = _activeShipmentStops;
    if (value == null) return null;
    if (_activeShipmentStops is EqualUnmodifiableListView)
      return _activeShipmentStops;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? loadDocumentUrl;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Data(trailerType: $trailerType, isCovered: $isCovered, createdBy: $createdBy, id: $id, packageType: $packageType, quantity: $quantity, amount: $amount, companyName: $companyName, ratePerMile: $ratePerMile, pickupDate: $pickupDate, dropDate: $dropDate, activeShipmentStops: $activeShipmentStops, loadDocumentUrl: $loadDocumentUrl, createdAt: $createdAt, updatedAt: $updatedAt)';
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
            const DeepCollectionEquality()
                .equals(other._createdBy, _createdBy) &&
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
      const DeepCollectionEquality().hash(_createdBy),
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
      {final List<String>? trailerType,
      final bool? isCovered,
      final List<String>? createdBy,
      @JsonKey(name: '_id') final String? id,
      final String? packageType,
      final double? quantity,
      final double? amount,
      final String? companyName,
      final double? ratePerMile,
      final DateTime? pickupDate,
      final DateTime? dropDate,
      final List<ActiveShipmentStop>? activeShipmentStops,
      final String? loadDocumentUrl,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  List<String>? get trailerType;
  @override
  bool? get isCovered;
  @override
  List<String>? get createdBy;
  @override
  @JsonKey(name: '_id')
  String? get id;
  @override //  String pickupLocation,
//  String dropLocation,
  String? get packageType;
  @override
  double? get quantity;
  @override
  double? get amount;
  @override
  String? get companyName;
  @override
  double? get ratePerMile;
  @override
  DateTime? get pickupDate;
  @override
  DateTime? get dropDate;
  @override
  List<ActiveShipmentStop>? get activeShipmentStops;
  @override
  String? get loadDocumentUrl;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

ActiveShipmentStop _$ActiveShipmentStopFromJson(Map<String, dynamic> json) {
  return _ActiveShipmentStop.fromJson(json);
}

/// @nodoc
mixin _$ActiveShipmentStop {
  @JsonKey(name: '_id')
  String? get id =>
      throw _privateConstructorUsedError; // String? pickupLocation,
  String? get emailAddress => throw _privateConstructorUsedError;
  DateTime? get estimatePickupDate => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

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
      {@JsonKey(name: '_id') String? id,
      String? emailAddress,
      DateTime? estimatePickupDate,
      String? notes});
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
    Object? emailAddress = freezed,
    Object? estimatePickupDate = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      emailAddress: freezed == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      estimatePickupDate: freezed == estimatePickupDate
          ? _value.estimatePickupDate
          : estimatePickupDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {@JsonKey(name: '_id') String? id,
      String? emailAddress,
      DateTime? estimatePickupDate,
      String? notes});
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
    Object? emailAddress = freezed,
    Object? estimatePickupDate = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$_ActiveShipmentStop(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      emailAddress: freezed == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      estimatePickupDate: freezed == estimatePickupDate
          ? _value.estimatePickupDate
          : estimatePickupDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActiveShipmentStop implements _ActiveShipmentStop {
  const _$_ActiveShipmentStop(
      {@JsonKey(name: '_id') this.id,
      this.emailAddress,
      this.estimatePickupDate,
      this.notes});

  factory _$_ActiveShipmentStop.fromJson(Map<String, dynamic> json) =>
      _$$_ActiveShipmentStopFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String? id;
// String? pickupLocation,
  @override
  final String? emailAddress;
  @override
  final DateTime? estimatePickupDate;
  @override
  final String? notes;

  @override
  String toString() {
    return 'ActiveShipmentStop(id: $id, emailAddress: $emailAddress, estimatePickupDate: $estimatePickupDate, notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActiveShipmentStop &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.estimatePickupDate, estimatePickupDate) ||
                other.estimatePickupDate == estimatePickupDate) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, emailAddress, estimatePickupDate, notes);

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
      {@JsonKey(name: '_id') final String? id,
      final String? emailAddress,
      final DateTime? estimatePickupDate,
      final String? notes}) = _$_ActiveShipmentStop;

  factory _ActiveShipmentStop.fromJson(Map<String, dynamic> json) =
      _$_ActiveShipmentStop.fromJson;

  @override
  @JsonKey(name: '_id')
  String? get id;
  @override // String? pickupLocation,
  String? get emailAddress;
  @override
  DateTime? get estimatePickupDate;
  @override
  String? get notes;
  @override
  @JsonKey(ignore: true)
  _$$_ActiveShipmentStopCopyWith<_$_ActiveShipmentStop> get copyWith =>
      throw _privateConstructorUsedError;
}