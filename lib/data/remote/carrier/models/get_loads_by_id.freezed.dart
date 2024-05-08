// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_loads_by_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetLoadById _$GetLoadByIdFromJson(Map<String, dynamic> json) {
  return _GetLoadById.fromJson(json);
}

/// @nodoc
mixin _$GetLoadById {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  bool? get isSuccess => throw _privateConstructorUsedError;
  Data? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetLoadByIdCopyWith<GetLoadById> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetLoadByIdCopyWith<$Res> {
  factory $GetLoadByIdCopyWith(
          GetLoadById value, $Res Function(GetLoadById) then) =
      _$GetLoadByIdCopyWithImpl<$Res, GetLoadById>;
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetLoadByIdCopyWithImpl<$Res, $Val extends GetLoadById>
    implements $GetLoadByIdCopyWith<$Res> {
  _$GetLoadByIdCopyWithImpl(this._value, this._then);

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
abstract class _$$_GetLoadByIdCopyWith<$Res>
    implements $GetLoadByIdCopyWith<$Res> {
  factory _$$_GetLoadByIdCopyWith(
          _$_GetLoadById value, $Res Function(_$_GetLoadById) then) =
      __$$_GetLoadByIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, bool? isSuccess, Data? data});

  @override
  $DataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_GetLoadByIdCopyWithImpl<$Res>
    extends _$GetLoadByIdCopyWithImpl<$Res, _$_GetLoadById>
    implements _$$_GetLoadByIdCopyWith<$Res> {
  __$$_GetLoadByIdCopyWithImpl(
      _$_GetLoadById _value, $Res Function(_$_GetLoadById) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? isSuccess = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_GetLoadById(
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
class _$_GetLoadById implements _GetLoadById {
  const _$_GetLoadById({this.code, this.message, this.isSuccess, this.data});

  factory _$_GetLoadById.fromJson(Map<String, dynamic> json) =>
      _$$_GetLoadByIdFromJson(json);

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
    return 'GetLoadById(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetLoadById &&
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
  _$$_GetLoadByIdCopyWith<_$_GetLoadById> get copyWith =>
      __$$_GetLoadByIdCopyWithImpl<_$_GetLoadById>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetLoadByIdToJson(
      this,
    );
  }
}

abstract class _GetLoadById implements GetLoadById {
  const factory _GetLoadById(
      {final int? code,
      final String? message,
      final bool? isSuccess,
      final Data? data}) = _$_GetLoadById;

  factory _GetLoadById.fromJson(Map<String, dynamic> json) =
      _$_GetLoadById.fromJson;

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
  _$$_GetLoadByIdCopyWith<_$_GetLoadById> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  PickupLocation? get pickupLocation => throw _privateConstructorUsedError;
  DropLocation? get dropLocation => throw _privateConstructorUsedError;
  List<String>? get trailerType => throw _privateConstructorUsedError;
  List<String>? get loadRequirement => throw _privateConstructorUsedError;
  bool? get isCovered => throw _privateConstructorUsedError;
  bool? get isSaved => throw _privateConstructorUsedError;
  bool? get isPaid => throw _privateConstructorUsedError;
  List<ShipperDetails>? get createdBy =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: '_id')
  String? get id => throw _privateConstructorUsedError;
  String? get packageType => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  String? get companyName => throw _privateConstructorUsedError;
  int? get ratePerMile => throw _privateConstructorUsedError;
  int? get loadLength => throw _privateConstructorUsedError;
  DateTime? get pickupDate => throw _privateConstructorUsedError;
  DateTime? get dropDate => throw _privateConstructorUsedError;
  String? get corporateEmail => throw _privateConstructorUsedError;
  String? get loadType => throw _privateConstructorUsedError;
  List<dynamic>? get activeShipmentStops => throw _privateConstructorUsedError;
  String? get loadDocumentUrl => throw _privateConstructorUsedError;
  String? get loadId => throw _privateConstructorUsedError;
  double? get loadDistance => throw _privateConstructorUsedError;
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
      {PickupLocation? pickupLocation,
      DropLocation? dropLocation,
      List<String>? trailerType,
      List<String>? loadRequirement,
      bool? isCovered,
      bool? isSaved,
      bool? isPaid,
      List<ShipperDetails>? createdBy,
      @JsonKey(name: '_id') String? id,
      String? packageType,
      String? phoneNumber,
      int? quantity,
      int? amount,
      String? companyName,
      int? ratePerMile,
      int? loadLength,
      DateTime? pickupDate,
      DateTime? dropDate,
      String? corporateEmail,
      String? loadType,
      List<dynamic>? activeShipmentStops,
      String? loadDocumentUrl,
      String? loadId,
      double? loadDistance,
      DateTime? createdAt,
      DateTime? updatedAt});

  $PickupLocationCopyWith<$Res>? get pickupLocation;
  $DropLocationCopyWith<$Res>? get dropLocation;
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
    Object? pickupLocation = freezed,
    Object? dropLocation = freezed,
    Object? trailerType = freezed,
    Object? loadRequirement = freezed,
    Object? isCovered = freezed,
    Object? isSaved = freezed,
    Object? isPaid = freezed,
    Object? createdBy = freezed,
    Object? id = freezed,
    Object? packageType = freezed,
    Object? phoneNumber = freezed,
    Object? quantity = freezed,
    Object? amount = freezed,
    Object? companyName = freezed,
    Object? ratePerMile = freezed,
    Object? loadLength = freezed,
    Object? pickupDate = freezed,
    Object? dropDate = freezed,
    Object? corporateEmail = freezed,
    Object? loadType = freezed,
    Object? activeShipmentStops = freezed,
    Object? loadDocumentUrl = freezed,
    Object? loadId = freezed,
    Object? loadDistance = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      pickupLocation: freezed == pickupLocation
          ? _value.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as PickupLocation?,
      dropLocation: freezed == dropLocation
          ? _value.dropLocation
          : dropLocation // ignore: cast_nullable_to_non_nullable
              as DropLocation?,
      trailerType: freezed == trailerType
          ? _value.trailerType
          : trailerType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      loadRequirement: freezed == loadRequirement
          ? _value.loadRequirement
          : loadRequirement // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isCovered: freezed == isCovered
          ? _value.isCovered
          : isCovered // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSaved: freezed == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPaid: freezed == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdBy: freezed == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as List<ShipperDetails>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      packageType: freezed == packageType
          ? _value.packageType
          : packageType // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      ratePerMile: freezed == ratePerMile
          ? _value.ratePerMile
          : ratePerMile // ignore: cast_nullable_to_non_nullable
              as int?,
      loadLength: freezed == loadLength
          ? _value.loadLength
          : loadLength // ignore: cast_nullable_to_non_nullable
              as int?,
      pickupDate: freezed == pickupDate
          ? _value.pickupDate
          : pickupDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dropDate: freezed == dropDate
          ? _value.dropDate
          : dropDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      corporateEmail: freezed == corporateEmail
          ? _value.corporateEmail
          : corporateEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      loadType: freezed == loadType
          ? _value.loadType
          : loadType // ignore: cast_nullable_to_non_nullable
              as String?,
      activeShipmentStops: freezed == activeShipmentStops
          ? _value.activeShipmentStops
          : activeShipmentStops // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      loadDocumentUrl: freezed == loadDocumentUrl
          ? _value.loadDocumentUrl
          : loadDocumentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      loadId: freezed == loadId
          ? _value.loadId
          : loadId // ignore: cast_nullable_to_non_nullable
              as String?,
      loadDistance: freezed == loadDistance
          ? _value.loadDistance
          : loadDistance // ignore: cast_nullable_to_non_nullable
              as double?,
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

  @override
  @pragma('vm:prefer-inline')
  $PickupLocationCopyWith<$Res>? get pickupLocation {
    if (_value.pickupLocation == null) {
      return null;
    }

    return $PickupLocationCopyWith<$Res>(_value.pickupLocation!, (value) {
      return _then(_value.copyWith(pickupLocation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DropLocationCopyWith<$Res>? get dropLocation {
    if (_value.dropLocation == null) {
      return null;
    }

    return $DropLocationCopyWith<$Res>(_value.dropLocation!, (value) {
      return _then(_value.copyWith(dropLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PickupLocation? pickupLocation,
      DropLocation? dropLocation,
      List<String>? trailerType,
      List<String>? loadRequirement,
      bool? isCovered,
      bool? isSaved,
      bool? isPaid,
      List<ShipperDetails>? createdBy,
      @JsonKey(name: '_id') String? id,
      String? packageType,
      String? phoneNumber,
      int? quantity,
      int? amount,
      String? companyName,
      int? ratePerMile,
      int? loadLength,
      DateTime? pickupDate,
      DateTime? dropDate,
      String? corporateEmail,
      String? loadType,
      List<dynamic>? activeShipmentStops,
      String? loadDocumentUrl,
      String? loadId,
      double? loadDistance,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $PickupLocationCopyWith<$Res>? get pickupLocation;
  @override
  $DropLocationCopyWith<$Res>? get dropLocation;
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickupLocation = freezed,
    Object? dropLocation = freezed,
    Object? trailerType = freezed,
    Object? loadRequirement = freezed,
    Object? isCovered = freezed,
    Object? isSaved = freezed,
    Object? isPaid = freezed,
    Object? createdBy = freezed,
    Object? id = freezed,
    Object? packageType = freezed,
    Object? phoneNumber = freezed,
    Object? quantity = freezed,
    Object? amount = freezed,
    Object? companyName = freezed,
    Object? ratePerMile = freezed,
    Object? loadLength = freezed,
    Object? pickupDate = freezed,
    Object? dropDate = freezed,
    Object? corporateEmail = freezed,
    Object? loadType = freezed,
    Object? activeShipmentStops = freezed,
    Object? loadDocumentUrl = freezed,
    Object? loadId = freezed,
    Object? loadDistance = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_Data(
      pickupLocation: freezed == pickupLocation
          ? _value.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as PickupLocation?,
      dropLocation: freezed == dropLocation
          ? _value.dropLocation
          : dropLocation // ignore: cast_nullable_to_non_nullable
              as DropLocation?,
      trailerType: freezed == trailerType
          ? _value._trailerType
          : trailerType // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      loadRequirement: freezed == loadRequirement
          ? _value._loadRequirement
          : loadRequirement // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isCovered: freezed == isCovered
          ? _value.isCovered
          : isCovered // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSaved: freezed == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPaid: freezed == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdBy: freezed == createdBy
          ? _value._createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as List<ShipperDetails>?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      packageType: freezed == packageType
          ? _value.packageType
          : packageType // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      ratePerMile: freezed == ratePerMile
          ? _value.ratePerMile
          : ratePerMile // ignore: cast_nullable_to_non_nullable
              as int?,
      loadLength: freezed == loadLength
          ? _value.loadLength
          : loadLength // ignore: cast_nullable_to_non_nullable
              as int?,
      pickupDate: freezed == pickupDate
          ? _value.pickupDate
          : pickupDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dropDate: freezed == dropDate
          ? _value.dropDate
          : dropDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      corporateEmail: freezed == corporateEmail
          ? _value.corporateEmail
          : corporateEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      loadType: freezed == loadType
          ? _value.loadType
          : loadType // ignore: cast_nullable_to_non_nullable
              as String?,
      activeShipmentStops: freezed == activeShipmentStops
          ? _value._activeShipmentStops
          : activeShipmentStops // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      loadDocumentUrl: freezed == loadDocumentUrl
          ? _value.loadDocumentUrl
          : loadDocumentUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      loadId: freezed == loadId
          ? _value.loadId
          : loadId // ignore: cast_nullable_to_non_nullable
              as String?,
      loadDistance: freezed == loadDistance
          ? _value.loadDistance
          : loadDistance // ignore: cast_nullable_to_non_nullable
              as double?,
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
      {this.pickupLocation,
      this.dropLocation,
      final List<String>? trailerType,
      final List<String>? loadRequirement,
      this.isCovered,
      this.isSaved,
      this.isPaid,
      final List<ShipperDetails>? createdBy,
      @JsonKey(name: '_id') this.id,
      this.packageType,
      this.phoneNumber,
      this.quantity,
      this.amount,
      this.companyName,
      this.ratePerMile,
      this.loadLength,
      this.pickupDate,
      this.dropDate,
      this.corporateEmail,
      this.loadType,
      final List<dynamic>? activeShipmentStops,
      this.loadDocumentUrl,
      this.loadId,
      this.loadDistance,
      this.createdAt,
      this.updatedAt})
      : _trailerType = trailerType,
        _loadRequirement = loadRequirement,
        _createdBy = createdBy,
        _activeShipmentStops = activeShipmentStops;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final PickupLocation? pickupLocation;
  @override
  final DropLocation? dropLocation;
  final List<String>? _trailerType;
  @override
  List<String>? get trailerType {
    final value = _trailerType;
    if (value == null) return null;
    if (_trailerType is EqualUnmodifiableListView) return _trailerType;
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

  @override
  final bool? isCovered;
  @override
  final bool? isSaved;
  @override
  final bool? isPaid;
  final List<ShipperDetails>? _createdBy;
  @override
  List<ShipperDetails>? get createdBy {
    final value = _createdBy;
    if (value == null) return null;
    if (_createdBy is EqualUnmodifiableListView) return _createdBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: '_id')
  final String? id;
  @override
  final String? packageType;
  @override
  final String? phoneNumber;
  @override
  final int? quantity;
  @override
  final int? amount;
  @override
  final String? companyName;
  @override
  final int? ratePerMile;
  @override
  final int? loadLength;
  @override
  final DateTime? pickupDate;
  @override
  final DateTime? dropDate;
  @override
  final String? corporateEmail;
  @override
  final String? loadType;
  final List<dynamic>? _activeShipmentStops;
  @override
  List<dynamic>? get activeShipmentStops {
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
  final String? loadId;
  @override
  final double? loadDistance;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Data(pickupLocation: $pickupLocation, dropLocation: $dropLocation, trailerType: $trailerType, loadRequirement: $loadRequirement, isCovered: $isCovered, isSaved: $isSaved, isPaid: $isPaid, createdBy: $createdBy, id: $id, packageType: $packageType, phoneNumber: $phoneNumber, quantity: $quantity, amount: $amount, companyName: $companyName, ratePerMile: $ratePerMile, loadLength: $loadLength, pickupDate: $pickupDate, dropDate: $dropDate, corporateEmail: $corporateEmail, loadType: $loadType, activeShipmentStops: $activeShipmentStops, loadDocumentUrl: $loadDocumentUrl, loadId: $loadId, loadDistance: $loadDistance, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            (identical(other.pickupLocation, pickupLocation) ||
                other.pickupLocation == pickupLocation) &&
            (identical(other.dropLocation, dropLocation) ||
                other.dropLocation == dropLocation) &&
            const DeepCollectionEquality()
                .equals(other._trailerType, _trailerType) &&
            const DeepCollectionEquality()
                .equals(other._loadRequirement, _loadRequirement) &&
            (identical(other.isCovered, isCovered) ||
                other.isCovered == isCovered) &&
            (identical(other.isSaved, isSaved) || other.isSaved == isSaved) &&
            (identical(other.isPaid, isPaid) || other.isPaid == isPaid) &&
            const DeepCollectionEquality()
                .equals(other._createdBy, _createdBy) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.packageType, packageType) ||
                other.packageType == packageType) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.ratePerMile, ratePerMile) ||
                other.ratePerMile == ratePerMile) &&
            (identical(other.loadLength, loadLength) ||
                other.loadLength == loadLength) &&
            (identical(other.pickupDate, pickupDate) ||
                other.pickupDate == pickupDate) &&
            (identical(other.dropDate, dropDate) ||
                other.dropDate == dropDate) &&
            (identical(other.corporateEmail, corporateEmail) ||
                other.corporateEmail == corporateEmail) &&
            (identical(other.loadType, loadType) ||
                other.loadType == loadType) &&
            const DeepCollectionEquality()
                .equals(other._activeShipmentStops, _activeShipmentStops) &&
            (identical(other.loadDocumentUrl, loadDocumentUrl) ||
                other.loadDocumentUrl == loadDocumentUrl) &&
            (identical(other.loadId, loadId) || other.loadId == loadId) &&
            (identical(other.loadDistance, loadDistance) ||
                other.loadDistance == loadDistance) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        pickupLocation,
        dropLocation,
        const DeepCollectionEquality().hash(_trailerType),
        const DeepCollectionEquality().hash(_loadRequirement),
        isCovered,
        isSaved,
        isPaid,
        const DeepCollectionEquality().hash(_createdBy),
        id,
        packageType,
        phoneNumber,
        quantity,
        amount,
        companyName,
        ratePerMile,
        loadLength,
        pickupDate,
        dropDate,
        corporateEmail,
        loadType,
        const DeepCollectionEquality().hash(_activeShipmentStops),
        loadDocumentUrl,
        loadId,
        loadDistance,
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
      {final PickupLocation? pickupLocation,
      final DropLocation? dropLocation,
      final List<String>? trailerType,
      final List<String>? loadRequirement,
      final bool? isCovered,
      final bool? isSaved,
      final bool? isPaid,
      final List<ShipperDetails>? createdBy,
      @JsonKey(name: '_id') final String? id,
      final String? packageType,
      final String? phoneNumber,
      final int? quantity,
      final int? amount,
      final String? companyName,
      final int? ratePerMile,
      final int? loadLength,
      final DateTime? pickupDate,
      final DateTime? dropDate,
      final String? corporateEmail,
      final String? loadType,
      final List<dynamic>? activeShipmentStops,
      final String? loadDocumentUrl,
      final String? loadId,
      final double? loadDistance,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  PickupLocation? get pickupLocation;
  @override
  DropLocation? get dropLocation;
  @override
  List<String>? get trailerType;
  @override
  List<String>? get loadRequirement;
  @override
  bool? get isCovered;
  @override
  bool? get isSaved;
  @override
  bool? get isPaid;
  @override
  List<ShipperDetails>? get createdBy;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: '_id')
  String? get id;
  @override
  String? get packageType;
  @override
  String? get phoneNumber;
  @override
  int? get quantity;
  @override
  int? get amount;
  @override
  String? get companyName;
  @override
  int? get ratePerMile;
  @override
  int? get loadLength;
  @override
  DateTime? get pickupDate;
  @override
  DateTime? get dropDate;
  @override
  String? get corporateEmail;
  @override
  String? get loadType;
  @override
  List<dynamic>? get activeShipmentStops;
  @override
  String? get loadDocumentUrl;
  @override
  String? get loadId;
  @override
  double? get loadDistance;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

DropLocation _$DropLocationFromJson(Map<String, dynamic> json) {
  return _DropLocation.fromJson(json);
}

/// @nodoc
mixin _$DropLocation {
  String? get type => throw _privateConstructorUsedError;
  List<double>? get coordinates => throw _privateConstructorUsedError;
  String? get dropLocationName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DropLocationCopyWith<DropLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DropLocationCopyWith<$Res> {
  factory $DropLocationCopyWith(
          DropLocation value, $Res Function(DropLocation) then) =
      _$DropLocationCopyWithImpl<$Res, DropLocation>;
  @useResult
  $Res call(
      {String? type, List<double>? coordinates, String? dropLocationName});
}

/// @nodoc
class _$DropLocationCopyWithImpl<$Res, $Val extends DropLocation>
    implements $DropLocationCopyWith<$Res> {
  _$DropLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
    Object? dropLocationName = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      dropLocationName: freezed == dropLocationName
          ? _value.dropLocationName
          : dropLocationName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DropLocationCopyWith<$Res>
    implements $DropLocationCopyWith<$Res> {
  factory _$$_DropLocationCopyWith(
          _$_DropLocation value, $Res Function(_$_DropLocation) then) =
      __$$_DropLocationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? type, List<double>? coordinates, String? dropLocationName});
}

/// @nodoc
class __$$_DropLocationCopyWithImpl<$Res>
    extends _$DropLocationCopyWithImpl<$Res, _$_DropLocation>
    implements _$$_DropLocationCopyWith<$Res> {
  __$$_DropLocationCopyWithImpl(
      _$_DropLocation _value, $Res Function(_$_DropLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
    Object? dropLocationName = freezed,
  }) {
    return _then(_$_DropLocation(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      dropLocationName: freezed == dropLocationName
          ? _value.dropLocationName
          : dropLocationName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DropLocation implements _DropLocation {
  const _$_DropLocation(
      {this.type, final List<double>? coordinates, this.dropLocationName})
      : _coordinates = coordinates;

  factory _$_DropLocation.fromJson(Map<String, dynamic> json) =>
      _$$_DropLocationFromJson(json);

  @override
  final String? type;
  final List<double>? _coordinates;
  @override
  List<double>? get coordinates {
    final value = _coordinates;
    if (value == null) return null;
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? dropLocationName;

  @override
  String toString() {
    return 'DropLocation(type: $type, coordinates: $coordinates, dropLocationName: $dropLocationName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DropLocation &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates) &&
            (identical(other.dropLocationName, dropLocationName) ||
                other.dropLocationName == dropLocationName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type,
      const DeepCollectionEquality().hash(_coordinates), dropLocationName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DropLocationCopyWith<_$_DropLocation> get copyWith =>
      __$$_DropLocationCopyWithImpl<_$_DropLocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DropLocationToJson(
      this,
    );
  }
}

abstract class _DropLocation implements DropLocation {
  const factory _DropLocation(
      {final String? type,
      final List<double>? coordinates,
      final String? dropLocationName}) = _$_DropLocation;

  factory _DropLocation.fromJson(Map<String, dynamic> json) =
      _$_DropLocation.fromJson;

  @override
  String? get type;
  @override
  List<double>? get coordinates;
  @override
  String? get dropLocationName;
  @override
  @JsonKey(ignore: true)
  _$$_DropLocationCopyWith<_$_DropLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

PickupLocation _$PickupLocationFromJson(Map<String, dynamic> json) {
  return _PickupLocation.fromJson(json);
}

/// @nodoc
mixin _$PickupLocation {
  String? get type => throw _privateConstructorUsedError;
  List<double>? get coordinates => throw _privateConstructorUsedError;
  String? get pickupLocationName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PickupLocationCopyWith<PickupLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickupLocationCopyWith<$Res> {
  factory $PickupLocationCopyWith(
          PickupLocation value, $Res Function(PickupLocation) then) =
      _$PickupLocationCopyWithImpl<$Res, PickupLocation>;
  @useResult
  $Res call(
      {String? type, List<double>? coordinates, String? pickupLocationName});
}

/// @nodoc
class _$PickupLocationCopyWithImpl<$Res, $Val extends PickupLocation>
    implements $PickupLocationCopyWith<$Res> {
  _$PickupLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
    Object? pickupLocationName = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      pickupLocationName: freezed == pickupLocationName
          ? _value.pickupLocationName
          : pickupLocationName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PickupLocationCopyWith<$Res>
    implements $PickupLocationCopyWith<$Res> {
  factory _$$_PickupLocationCopyWith(
          _$_PickupLocation value, $Res Function(_$_PickupLocation) then) =
      __$$_PickupLocationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? type, List<double>? coordinates, String? pickupLocationName});
}

/// @nodoc
class __$$_PickupLocationCopyWithImpl<$Res>
    extends _$PickupLocationCopyWithImpl<$Res, _$_PickupLocation>
    implements _$$_PickupLocationCopyWith<$Res> {
  __$$_PickupLocationCopyWithImpl(
      _$_PickupLocation _value, $Res Function(_$_PickupLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? coordinates = freezed,
    Object? pickupLocationName = freezed,
  }) {
    return _then(_$_PickupLocation(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      coordinates: freezed == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      pickupLocationName: freezed == pickupLocationName
          ? _value.pickupLocationName
          : pickupLocationName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PickupLocation implements _PickupLocation {
  const _$_PickupLocation(
      {this.type, final List<double>? coordinates, this.pickupLocationName})
      : _coordinates = coordinates;

  factory _$_PickupLocation.fromJson(Map<String, dynamic> json) =>
      _$$_PickupLocationFromJson(json);

  @override
  final String? type;
  final List<double>? _coordinates;
  @override
  List<double>? get coordinates {
    final value = _coordinates;
    if (value == null) return null;
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? pickupLocationName;

  @override
  String toString() {
    return 'PickupLocation(type: $type, coordinates: $coordinates, pickupLocationName: $pickupLocationName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PickupLocation &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates) &&
            (identical(other.pickupLocationName, pickupLocationName) ||
                other.pickupLocationName == pickupLocationName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type,
      const DeepCollectionEquality().hash(_coordinates), pickupLocationName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PickupLocationCopyWith<_$_PickupLocation> get copyWith =>
      __$$_PickupLocationCopyWithImpl<_$_PickupLocation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PickupLocationToJson(
      this,
    );
  }
}

abstract class _PickupLocation implements PickupLocation {
  const factory _PickupLocation(
      {final String? type,
      final List<double>? coordinates,
      final String? pickupLocationName}) = _$_PickupLocation;

  factory _PickupLocation.fromJson(Map<String, dynamic> json) =
      _$_PickupLocation.fromJson;

  @override
  String? get type;
  @override
  List<double>? get coordinates;
  @override
  String? get pickupLocationName;
  @override
  @JsonKey(ignore: true)
  _$$_PickupLocationCopyWith<_$_PickupLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

ShipperDetails _$ShipperDetailsFromJson(Map<String, dynamic> json) {
  return _ShipperDetails.fromJson(json);
}

/// @nodoc
mixin _$ShipperDetails {
  String? get fullName => throw _privateConstructorUsedError;
  String? get profilePicUrl => throw _privateConstructorUsedError;
  String? get mcNumber => throw _privateConstructorUsedError;
  String? get role =>
      throw _privateConstructorUsedError; // bool? isEmailVerified,
// dynamic passwordResetOtp,
// String? passwordResetTokenUrl,
// List<dynamic>? savedLoad,
// List<dynamic>? savedFilter,
// bool? isMcNumberVerified,
// String? safetyScore,
// bool? isAdminVerified,
// bool? trialUser,
// bool? premiumUser,
  String? get email => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get companyName => throw _privateConstructorUsedError;
  String? get corporateEmail => throw _privateConstructorUsedError;
  String? get companyWebsite =>
      throw _privateConstructorUsedError; // String? stripeCustomerId,
// List<dynamic>? activeShippingAddress,
// List<dynamic>? bankAccount,
// List<dynamic>? recentSearchedLocations,
// String? otp,
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShipperDetailsCopyWith<ShipperDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShipperDetailsCopyWith<$Res> {
  factory $ShipperDetailsCopyWith(
          ShipperDetails value, $Res Function(ShipperDetails) then) =
      _$ShipperDetailsCopyWithImpl<$Res, ShipperDetails>;
  @useResult
  $Res call(
      {String? fullName,
      String? profilePicUrl,
      String? mcNumber,
      String? role,
      String? email,
      String? location,
      String? phoneNumber,
      String? companyName,
      String? corporateEmail,
      String? companyWebsite,
      String? id});
}

/// @nodoc
class _$ShipperDetailsCopyWithImpl<$Res, $Val extends ShipperDetails>
    implements $ShipperDetailsCopyWith<$Res> {
  _$ShipperDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? profilePicUrl = freezed,
    Object? mcNumber = freezed,
    Object? role = freezed,
    Object? email = freezed,
    Object? location = freezed,
    Object? phoneNumber = freezed,
    Object? companyName = freezed,
    Object? corporateEmail = freezed,
    Object? companyWebsite = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicUrl: freezed == profilePicUrl
          ? _value.profilePicUrl
          : profilePicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mcNumber: freezed == mcNumber
          ? _value.mcNumber
          : mcNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      corporateEmail: freezed == corporateEmail
          ? _value.corporateEmail
          : corporateEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      companyWebsite: freezed == companyWebsite
          ? _value.companyWebsite
          : companyWebsite // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShipperDetailsCopyWith<$Res>
    implements $ShipperDetailsCopyWith<$Res> {
  factory _$$_ShipperDetailsCopyWith(
          _$_ShipperDetails value, $Res Function(_$_ShipperDetails) then) =
      __$$_ShipperDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? fullName,
      String? profilePicUrl,
      String? mcNumber,
      String? role,
      String? email,
      String? location,
      String? phoneNumber,
      String? companyName,
      String? corporateEmail,
      String? companyWebsite,
      String? id});
}

/// @nodoc
class __$$_ShipperDetailsCopyWithImpl<$Res>
    extends _$ShipperDetailsCopyWithImpl<$Res, _$_ShipperDetails>
    implements _$$_ShipperDetailsCopyWith<$Res> {
  __$$_ShipperDetailsCopyWithImpl(
      _$_ShipperDetails _value, $Res Function(_$_ShipperDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? profilePicUrl = freezed,
    Object? mcNumber = freezed,
    Object? role = freezed,
    Object? email = freezed,
    Object? location = freezed,
    Object? phoneNumber = freezed,
    Object? companyName = freezed,
    Object? corporateEmail = freezed,
    Object? companyWebsite = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_ShipperDetails(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePicUrl: freezed == profilePicUrl
          ? _value.profilePicUrl
          : profilePicUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      mcNumber: freezed == mcNumber
          ? _value.mcNumber
          : mcNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      companyName: freezed == companyName
          ? _value.companyName
          : companyName // ignore: cast_nullable_to_non_nullable
              as String?,
      corporateEmail: freezed == corporateEmail
          ? _value.corporateEmail
          : corporateEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      companyWebsite: freezed == companyWebsite
          ? _value.companyWebsite
          : companyWebsite // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShipperDetails implements _ShipperDetails {
  const _$_ShipperDetails(
      {this.fullName,
      this.profilePicUrl,
      this.mcNumber,
      this.role,
      this.email,
      this.location,
      this.phoneNumber,
      this.companyName,
      this.corporateEmail,
      this.companyWebsite,
      this.id});

  factory _$_ShipperDetails.fromJson(Map<String, dynamic> json) =>
      _$$_ShipperDetailsFromJson(json);

  @override
  final String? fullName;
  @override
  final String? profilePicUrl;
  @override
  final String? mcNumber;
  @override
  final String? role;
// bool? isEmailVerified,
// dynamic passwordResetOtp,
// String? passwordResetTokenUrl,
// List<dynamic>? savedLoad,
// List<dynamic>? savedFilter,
// bool? isMcNumberVerified,
// String? safetyScore,
// bool? isAdminVerified,
// bool? trialUser,
// bool? premiumUser,
  @override
  final String? email;
  @override
  final String? location;
  @override
  final String? phoneNumber;
  @override
  final String? companyName;
  @override
  final String? corporateEmail;
  @override
  final String? companyWebsite;
// String? stripeCustomerId,
// List<dynamic>? activeShippingAddress,
// List<dynamic>? bankAccount,
// List<dynamic>? recentSearchedLocations,
// String? otp,
  @override
  final String? id;

  @override
  String toString() {
    return 'ShipperDetails(fullName: $fullName, profilePicUrl: $profilePicUrl, mcNumber: $mcNumber, role: $role, email: $email, location: $location, phoneNumber: $phoneNumber, companyName: $companyName, corporateEmail: $corporateEmail, companyWebsite: $companyWebsite, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShipperDetails &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.profilePicUrl, profilePicUrl) ||
                other.profilePicUrl == profilePicUrl) &&
            (identical(other.mcNumber, mcNumber) ||
                other.mcNumber == mcNumber) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.companyName, companyName) ||
                other.companyName == companyName) &&
            (identical(other.corporateEmail, corporateEmail) ||
                other.corporateEmail == corporateEmail) &&
            (identical(other.companyWebsite, companyWebsite) ||
                other.companyWebsite == companyWebsite) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fullName,
      profilePicUrl,
      mcNumber,
      role,
      email,
      location,
      phoneNumber,
      companyName,
      corporateEmail,
      companyWebsite,
      id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShipperDetailsCopyWith<_$_ShipperDetails> get copyWith =>
      __$$_ShipperDetailsCopyWithImpl<_$_ShipperDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShipperDetailsToJson(
      this,
    );
  }
}

abstract class _ShipperDetails implements ShipperDetails {
  const factory _ShipperDetails(
      {final String? fullName,
      final String? profilePicUrl,
      final String? mcNumber,
      final String? role,
      final String? email,
      final String? location,
      final String? phoneNumber,
      final String? companyName,
      final String? corporateEmail,
      final String? companyWebsite,
      final String? id}) = _$_ShipperDetails;

  factory _ShipperDetails.fromJson(Map<String, dynamic> json) =
      _$_ShipperDetails.fromJson;

  @override
  String? get fullName;
  @override
  String? get profilePicUrl;
  @override
  String? get mcNumber;
  @override
  String? get role;
  @override // bool? isEmailVerified,
// dynamic passwordResetOtp,
// String? passwordResetTokenUrl,
// List<dynamic>? savedLoad,
// List<dynamic>? savedFilter,
// bool? isMcNumberVerified,
// String? safetyScore,
// bool? isAdminVerified,
// bool? trialUser,
// bool? premiumUser,
  String? get email;
  @override
  String? get location;
  @override
  String? get phoneNumber;
  @override
  String? get companyName;
  @override
  String? get corporateEmail;
  @override
  String? get companyWebsite;
  @override // String? stripeCustomerId,
// List<dynamic>? activeShippingAddress,
// List<dynamic>? bankAccount,
// List<dynamic>? recentSearchedLocations,
// String? otp,
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_ShipperDetailsCopyWith<_$_ShipperDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

GetLoadByIdRequest _$GetLoadByIdRequestFromJson(Map<String, dynamic> json) {
  return _GetLoadByIdRequest.fromJson(json);
}

/// @nodoc
mixin _$GetLoadByIdRequest {
  String? get loadId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetLoadByIdRequestCopyWith<GetLoadByIdRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetLoadByIdRequestCopyWith<$Res> {
  factory $GetLoadByIdRequestCopyWith(
          GetLoadByIdRequest value, $Res Function(GetLoadByIdRequest) then) =
      _$GetLoadByIdRequestCopyWithImpl<$Res, GetLoadByIdRequest>;
  @useResult
  $Res call({String? loadId});
}

/// @nodoc
class _$GetLoadByIdRequestCopyWithImpl<$Res, $Val extends GetLoadByIdRequest>
    implements $GetLoadByIdRequestCopyWith<$Res> {
  _$GetLoadByIdRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadId = freezed,
  }) {
    return _then(_value.copyWith(
      loadId: freezed == loadId
          ? _value.loadId
          : loadId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetLoadByIdRequestCopyWith<$Res>
    implements $GetLoadByIdRequestCopyWith<$Res> {
  factory _$$_GetLoadByIdRequestCopyWith(_$_GetLoadByIdRequest value,
          $Res Function(_$_GetLoadByIdRequest) then) =
      __$$_GetLoadByIdRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? loadId});
}

/// @nodoc
class __$$_GetLoadByIdRequestCopyWithImpl<$Res>
    extends _$GetLoadByIdRequestCopyWithImpl<$Res, _$_GetLoadByIdRequest>
    implements _$$_GetLoadByIdRequestCopyWith<$Res> {
  __$$_GetLoadByIdRequestCopyWithImpl(
      _$_GetLoadByIdRequest _value, $Res Function(_$_GetLoadByIdRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadId = freezed,
  }) {
    return _then(_$_GetLoadByIdRequest(
      loadId: freezed == loadId
          ? _value.loadId
          : loadId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GetLoadByIdRequest implements _GetLoadByIdRequest {
  const _$_GetLoadByIdRequest({this.loadId});

  factory _$_GetLoadByIdRequest.fromJson(Map<String, dynamic> json) =>
      _$$_GetLoadByIdRequestFromJson(json);

  @override
  final String? loadId;

  @override
  String toString() {
    return 'GetLoadByIdRequest(loadId: $loadId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetLoadByIdRequest &&
            (identical(other.loadId, loadId) || other.loadId == loadId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, loadId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetLoadByIdRequestCopyWith<_$_GetLoadByIdRequest> get copyWith =>
      __$$_GetLoadByIdRequestCopyWithImpl<_$_GetLoadByIdRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetLoadByIdRequestToJson(
      this,
    );
  }
}

abstract class _GetLoadByIdRequest implements GetLoadByIdRequest {
  const factory _GetLoadByIdRequest({final String? loadId}) =
      _$_GetLoadByIdRequest;

  factory _GetLoadByIdRequest.fromJson(Map<String, dynamic> json) =
      _$_GetLoadByIdRequest.fromJson;

  @override
  String? get loadId;
  @override
  @JsonKey(ignore: true)
  _$$_GetLoadByIdRequestCopyWith<_$_GetLoadByIdRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
