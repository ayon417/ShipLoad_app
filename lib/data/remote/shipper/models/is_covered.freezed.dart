// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'is_covered.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IsCoveredRequest _$IsCoveredRequestFromJson(Map<String, dynamic> json) {
  return _IsCoveredRequest.fromJson(json);
}

/// @nodoc
mixin _$IsCoveredRequest {
  bool? get isCovered => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IsCoveredRequestCopyWith<IsCoveredRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IsCoveredRequestCopyWith<$Res> {
  factory $IsCoveredRequestCopyWith(
          IsCoveredRequest value, $Res Function(IsCoveredRequest) then) =
      _$IsCoveredRequestCopyWithImpl<$Res, IsCoveredRequest>;
  @useResult
  $Res call({bool? isCovered});
}

/// @nodoc
class _$IsCoveredRequestCopyWithImpl<$Res, $Val extends IsCoveredRequest>
    implements $IsCoveredRequestCopyWith<$Res> {
  _$IsCoveredRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCovered = freezed,
  }) {
    return _then(_value.copyWith(
      isCovered: freezed == isCovered
          ? _value.isCovered
          : isCovered // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IsCoveredRequestCopyWith<$Res>
    implements $IsCoveredRequestCopyWith<$Res> {
  factory _$$_IsCoveredRequestCopyWith(
          _$_IsCoveredRequest value, $Res Function(_$_IsCoveredRequest) then) =
      __$$_IsCoveredRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isCovered});
}

/// @nodoc
class __$$_IsCoveredRequestCopyWithImpl<$Res>
    extends _$IsCoveredRequestCopyWithImpl<$Res, _$_IsCoveredRequest>
    implements _$$_IsCoveredRequestCopyWith<$Res> {
  __$$_IsCoveredRequestCopyWithImpl(
      _$_IsCoveredRequest _value, $Res Function(_$_IsCoveredRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCovered = freezed,
  }) {
    return _then(_$_IsCoveredRequest(
      isCovered: freezed == isCovered
          ? _value.isCovered
          : isCovered // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_IsCoveredRequest implements _IsCoveredRequest {
  const _$_IsCoveredRequest({this.isCovered});

  factory _$_IsCoveredRequest.fromJson(Map<String, dynamic> json) =>
      _$$_IsCoveredRequestFromJson(json);

  @override
  final bool? isCovered;

  @override
  String toString() {
    return 'IsCoveredRequest(isCovered: $isCovered)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsCoveredRequest &&
            (identical(other.isCovered, isCovered) ||
                other.isCovered == isCovered));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isCovered);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IsCoveredRequestCopyWith<_$_IsCoveredRequest> get copyWith =>
      __$$_IsCoveredRequestCopyWithImpl<_$_IsCoveredRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IsCoveredRequestToJson(
      this,
    );
  }
}

abstract class _IsCoveredRequest implements IsCoveredRequest {
  const factory _IsCoveredRequest({final bool? isCovered}) =
      _$_IsCoveredRequest;

  factory _IsCoveredRequest.fromJson(Map<String, dynamic> json) =
      _$_IsCoveredRequest.fromJson;

  @override
  bool? get isCovered;
  @override
  @JsonKey(ignore: true)
  _$$_IsCoveredRequestCopyWith<_$_IsCoveredRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

IsCoveredResponse _$IsCoveredResponseFromJson(Map<String, dynamic> json) {
  return _IsCoveredResponse.fromJson(json);
}

/// @nodoc
mixin _$IsCoveredResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IsCoveredResponseCopyWith<IsCoveredResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IsCoveredResponseCopyWith<$Res> {
  factory $IsCoveredResponseCopyWith(
          IsCoveredResponse value, $Res Function(IsCoveredResponse) then) =
      _$IsCoveredResponseCopyWithImpl<$Res, IsCoveredResponse>;
  @useResult
  $Res call({int code, String message, bool isSuccess, Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$IsCoveredResponseCopyWithImpl<$Res, $Val extends IsCoveredResponse>
    implements $IsCoveredResponseCopyWith<$Res> {
  _$IsCoveredResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$_IsCoveredResponseCopyWith<$Res>
    implements $IsCoveredResponseCopyWith<$Res> {
  factory _$$_IsCoveredResponseCopyWith(_$_IsCoveredResponse value,
          $Res Function(_$_IsCoveredResponse) then) =
      __$$_IsCoveredResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, bool isSuccess, Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_IsCoveredResponseCopyWithImpl<$Res>
    extends _$IsCoveredResponseCopyWithImpl<$Res, _$_IsCoveredResponse>
    implements _$$_IsCoveredResponseCopyWith<$Res> {
  __$$_IsCoveredResponseCopyWithImpl(
      _$_IsCoveredResponse _value, $Res Function(_$_IsCoveredResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? isSuccess = null,
    Object? data = null,
  }) {
    return _then(_$_IsCoveredResponse(
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
class _$_IsCoveredResponse implements _IsCoveredResponse {
  const _$_IsCoveredResponse(
      {required this.code,
      required this.message,
      required this.isSuccess,
      required this.data});

  factory _$_IsCoveredResponse.fromJson(Map<String, dynamic> json) =>
      _$$_IsCoveredResponseFromJson(json);

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
    return 'IsCoveredResponse(code: $code, message: $message, isSuccess: $isSuccess, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IsCoveredResponse &&
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
  _$$_IsCoveredResponseCopyWith<_$_IsCoveredResponse> get copyWith =>
      __$$_IsCoveredResponseCopyWithImpl<_$_IsCoveredResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IsCoveredResponseToJson(
      this,
    );
  }
}

abstract class _IsCoveredResponse implements IsCoveredResponse {
  const factory _IsCoveredResponse(
      {required final int code,
      required final String message,
      required final bool isSuccess,
      required final Data data}) = _$_IsCoveredResponse;

  factory _IsCoveredResponse.fromJson(Map<String, dynamic> json) =
      _$_IsCoveredResponse.fromJson;

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
  _$$_IsCoveredResponseCopyWith<_$_IsCoveredResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  PickupLocation get pickupLocation => throw _privateConstructorUsedError;
  DropLocation get dropLocation => throw _privateConstructorUsedError;
  List<String> get trailerType => throw _privateConstructorUsedError;
  List<dynamic> get loadRequirement => throw _privateConstructorUsedError;
  bool get isCovered => throw _privateConstructorUsedError;
  bool get isSaved => throw _privateConstructorUsedError;
  bool get isPaid => throw _privateConstructorUsedError;
  List<String> get createdBy => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  String get packageType => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get companyName => throw _privateConstructorUsedError;
  double get ratePerMile => throw _privateConstructorUsedError;
  double get loadLength => throw _privateConstructorUsedError;
  DateTime get pickupDate => throw _privateConstructorUsedError;
  DateTime get dropDate => throw _privateConstructorUsedError;
  String get corporateEmail => throw _privateConstructorUsedError;
  String get loadType => throw _privateConstructorUsedError;
  List<ActiveShipmentStop> get activeShipmentStops =>
      throw _privateConstructorUsedError;
  String get loadDocumentUrl => throw _privateConstructorUsedError;
  String get loadId => throw _privateConstructorUsedError;
  double get loadDistance => throw _privateConstructorUsedError;
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
      {PickupLocation pickupLocation,
      DropLocation dropLocation,
      List<String> trailerType,
      List<dynamic> loadRequirement,
      bool isCovered,
      bool isSaved,
      bool isPaid,
      List<String> createdBy,
      @JsonKey(name: "_id") String? id,
      String packageType,
      String phoneNumber,
      double quantity,
      double amount,
      String companyName,
      double ratePerMile,
      double loadLength,
      DateTime pickupDate,
      DateTime dropDate,
      String corporateEmail,
      String loadType,
      List<ActiveShipmentStop> activeShipmentStops,
      String loadDocumentUrl,
      String loadId,
      double loadDistance,
      DateTime createdAt,
      DateTime updatedAt});

  $PickupLocationCopyWith<$Res> get pickupLocation;
  $DropLocationCopyWith<$Res> get dropLocation;
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
    Object? pickupLocation = null,
    Object? dropLocation = null,
    Object? trailerType = null,
    Object? loadRequirement = null,
    Object? isCovered = null,
    Object? isSaved = null,
    Object? isPaid = null,
    Object? createdBy = null,
    Object? id = freezed,
    Object? packageType = null,
    Object? phoneNumber = null,
    Object? quantity = null,
    Object? amount = null,
    Object? companyName = null,
    Object? ratePerMile = null,
    Object? loadLength = null,
    Object? pickupDate = null,
    Object? dropDate = null,
    Object? corporateEmail = null,
    Object? loadType = null,
    Object? activeShipmentStops = null,
    Object? loadDocumentUrl = null,
    Object? loadId = null,
    Object? loadDistance = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      pickupLocation: null == pickupLocation
          ? _value.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as PickupLocation,
      dropLocation: null == dropLocation
          ? _value.dropLocation
          : dropLocation // ignore: cast_nullable_to_non_nullable
              as DropLocation,
      trailerType: null == trailerType
          ? _value.trailerType
          : trailerType // ignore: cast_nullable_to_non_nullable
              as List<String>,
      loadRequirement: null == loadRequirement
          ? _value.loadRequirement
          : loadRequirement // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      isCovered: null == isCovered
          ? _value.isCovered
          : isCovered // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaved: null == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaid: null == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool,
      createdBy: null == createdBy
          ? _value.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      packageType: null == packageType
          ? _value.packageType
          : packageType // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
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
      loadLength: null == loadLength
          ? _value.loadLength
          : loadLength // ignore: cast_nullable_to_non_nullable
              as double,
      pickupDate: null == pickupDate
          ? _value.pickupDate
          : pickupDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dropDate: null == dropDate
          ? _value.dropDate
          : dropDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      corporateEmail: null == corporateEmail
          ? _value.corporateEmail
          : corporateEmail // ignore: cast_nullable_to_non_nullable
              as String,
      loadType: null == loadType
          ? _value.loadType
          : loadType // ignore: cast_nullable_to_non_nullable
              as String,
      activeShipmentStops: null == activeShipmentStops
          ? _value.activeShipmentStops
          : activeShipmentStops // ignore: cast_nullable_to_non_nullable
              as List<ActiveShipmentStop>,
      loadDocumentUrl: null == loadDocumentUrl
          ? _value.loadDocumentUrl
          : loadDocumentUrl // ignore: cast_nullable_to_non_nullable
              as String,
      loadId: null == loadId
          ? _value.loadId
          : loadId // ignore: cast_nullable_to_non_nullable
              as String,
      loadDistance: null == loadDistance
          ? _value.loadDistance
          : loadDistance // ignore: cast_nullable_to_non_nullable
              as double,
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

  @override
  @pragma('vm:prefer-inline')
  $PickupLocationCopyWith<$Res> get pickupLocation {
    return $PickupLocationCopyWith<$Res>(_value.pickupLocation, (value) {
      return _then(_value.copyWith(pickupLocation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DropLocationCopyWith<$Res> get dropLocation {
    return $DropLocationCopyWith<$Res>(_value.dropLocation, (value) {
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
      {PickupLocation pickupLocation,
      DropLocation dropLocation,
      List<String> trailerType,
      List<dynamic> loadRequirement,
      bool isCovered,
      bool isSaved,
      bool isPaid,
      List<String> createdBy,
      @JsonKey(name: "_id") String? id,
      String packageType,
      String phoneNumber,
      double quantity,
      double amount,
      String companyName,
      double ratePerMile,
      double loadLength,
      DateTime pickupDate,
      DateTime dropDate,
      String corporateEmail,
      String loadType,
      List<ActiveShipmentStop> activeShipmentStops,
      String loadDocumentUrl,
      String loadId,
      double loadDistance,
      DateTime createdAt,
      DateTime updatedAt});

  @override
  $PickupLocationCopyWith<$Res> get pickupLocation;
  @override
  $DropLocationCopyWith<$Res> get dropLocation;
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickupLocation = null,
    Object? dropLocation = null,
    Object? trailerType = null,
    Object? loadRequirement = null,
    Object? isCovered = null,
    Object? isSaved = null,
    Object? isPaid = null,
    Object? createdBy = null,
    Object? id = freezed,
    Object? packageType = null,
    Object? phoneNumber = null,
    Object? quantity = null,
    Object? amount = null,
    Object? companyName = null,
    Object? ratePerMile = null,
    Object? loadLength = null,
    Object? pickupDate = null,
    Object? dropDate = null,
    Object? corporateEmail = null,
    Object? loadType = null,
    Object? activeShipmentStops = null,
    Object? loadDocumentUrl = null,
    Object? loadId = null,
    Object? loadDistance = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_Data(
      pickupLocation: null == pickupLocation
          ? _value.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as PickupLocation,
      dropLocation: null == dropLocation
          ? _value.dropLocation
          : dropLocation // ignore: cast_nullable_to_non_nullable
              as DropLocation,
      trailerType: null == trailerType
          ? _value._trailerType
          : trailerType // ignore: cast_nullable_to_non_nullable
              as List<String>,
      loadRequirement: null == loadRequirement
          ? _value._loadRequirement
          : loadRequirement // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      isCovered: null == isCovered
          ? _value.isCovered
          : isCovered // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaved: null == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaid: null == isPaid
          ? _value.isPaid
          : isPaid // ignore: cast_nullable_to_non_nullable
              as bool,
      createdBy: null == createdBy
          ? _value._createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      packageType: null == packageType
          ? _value.packageType
          : packageType // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
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
      loadLength: null == loadLength
          ? _value.loadLength
          : loadLength // ignore: cast_nullable_to_non_nullable
              as double,
      pickupDate: null == pickupDate
          ? _value.pickupDate
          : pickupDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dropDate: null == dropDate
          ? _value.dropDate
          : dropDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      corporateEmail: null == corporateEmail
          ? _value.corporateEmail
          : corporateEmail // ignore: cast_nullable_to_non_nullable
              as String,
      loadType: null == loadType
          ? _value.loadType
          : loadType // ignore: cast_nullable_to_non_nullable
              as String,
      activeShipmentStops: null == activeShipmentStops
          ? _value._activeShipmentStops
          : activeShipmentStops // ignore: cast_nullable_to_non_nullable
              as List<ActiveShipmentStop>,
      loadDocumentUrl: null == loadDocumentUrl
          ? _value.loadDocumentUrl
          : loadDocumentUrl // ignore: cast_nullable_to_non_nullable
              as String,
      loadId: null == loadId
          ? _value.loadId
          : loadId // ignore: cast_nullable_to_non_nullable
              as String,
      loadDistance: null == loadDistance
          ? _value.loadDistance
          : loadDistance // ignore: cast_nullable_to_non_nullable
              as double,
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
      {required this.pickupLocation,
      required this.dropLocation,
      required final List<String> trailerType,
      required final List<dynamic> loadRequirement,
      required this.isCovered,
      required this.isSaved,
      required this.isPaid,
      required final List<String> createdBy,
      @JsonKey(name: "_id") this.id,
      required this.packageType,
      required this.phoneNumber,
      required this.quantity,
      required this.amount,
      required this.companyName,
      required this.ratePerMile,
      required this.loadLength,
      required this.pickupDate,
      required this.dropDate,
      required this.corporateEmail,
      required this.loadType,
      required final List<ActiveShipmentStop> activeShipmentStops,
      required this.loadDocumentUrl,
      required this.loadId,
      required this.loadDistance,
      required this.createdAt,
      required this.updatedAt})
      : _trailerType = trailerType,
        _loadRequirement = loadRequirement,
        _createdBy = createdBy,
        _activeShipmentStops = activeShipmentStops;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final PickupLocation pickupLocation;
  @override
  final DropLocation dropLocation;
  final List<String> _trailerType;
  @override
  List<String> get trailerType {
    if (_trailerType is EqualUnmodifiableListView) return _trailerType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trailerType);
  }

  final List<dynamic> _loadRequirement;
  @override
  List<dynamic> get loadRequirement {
    if (_loadRequirement is EqualUnmodifiableListView) return _loadRequirement;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_loadRequirement);
  }

  @override
  final bool isCovered;
  @override
  final bool isSaved;
  @override
  final bool isPaid;
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
  final String packageType;
  @override
  final String phoneNumber;
  @override
  final double quantity;
  @override
  final double amount;
  @override
  final String companyName;
  @override
  final double ratePerMile;
  @override
  final double loadLength;
  @override
  final DateTime pickupDate;
  @override
  final DateTime dropDate;
  @override
  final String corporateEmail;
  @override
  final String loadType;
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
  final String loadId;
  @override
  final double loadDistance;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

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
      {required final PickupLocation pickupLocation,
      required final DropLocation dropLocation,
      required final List<String> trailerType,
      required final List<dynamic> loadRequirement,
      required final bool isCovered,
      required final bool isSaved,
      required final bool isPaid,
      required final List<String> createdBy,
      @JsonKey(name: "_id") final String? id,
      required final String packageType,
      required final String phoneNumber,
      required final double quantity,
      required final double amount,
      required final String companyName,
      required final double ratePerMile,
      required final double loadLength,
      required final DateTime pickupDate,
      required final DateTime dropDate,
      required final String corporateEmail,
      required final String loadType,
      required final List<ActiveShipmentStop> activeShipmentStops,
      required final String loadDocumentUrl,
      required final String loadId,
      required final double loadDistance,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  PickupLocation get pickupLocation;
  @override
  DropLocation get dropLocation;
  @override
  List<String> get trailerType;
  @override
  List<dynamic> get loadRequirement;
  @override
  bool get isCovered;
  @override
  bool get isSaved;
  @override
  bool get isPaid;
  @override
  List<String> get createdBy;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String get packageType;
  @override
  String get phoneNumber;
  @override
  double get quantity;
  @override
  double get amount;
  @override
  String get companyName;
  @override
  double get ratePerMile;
  @override
  double get loadLength;
  @override
  DateTime get pickupDate;
  @override
  DateTime get dropDate;
  @override
  String get corporateEmail;
  @override
  String get loadType;
  @override
  List<ActiveShipmentStop> get activeShipmentStops;
  @override
  String get loadDocumentUrl;
  @override
  String get loadId;
  @override
  double get loadDistance;
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
  PickupLocation get pickupLocation => throw _privateConstructorUsedError;
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
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
      {PickupLocation pickupLocation,
      @JsonKey(name: "_id") String? id,
      String notes});

  $PickupLocationCopyWith<$Res> get pickupLocation;
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
    Object? pickupLocation = null,
    Object? id = freezed,
    Object? notes = null,
  }) {
    return _then(_value.copyWith(
      pickupLocation: null == pickupLocation
          ? _value.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as PickupLocation,
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

  @override
  @pragma('vm:prefer-inline')
  $PickupLocationCopyWith<$Res> get pickupLocation {
    return $PickupLocationCopyWith<$Res>(_value.pickupLocation, (value) {
      return _then(_value.copyWith(pickupLocation: value) as $Val);
    });
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
      {PickupLocation pickupLocation,
      @JsonKey(name: "_id") String? id,
      String notes});

  @override
  $PickupLocationCopyWith<$Res> get pickupLocation;
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
    Object? pickupLocation = null,
    Object? id = freezed,
    Object? notes = null,
  }) {
    return _then(_$_ActiveShipmentStop(
      pickupLocation: null == pickupLocation
          ? _value.pickupLocation
          : pickupLocation // ignore: cast_nullable_to_non_nullable
              as PickupLocation,
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
      {required this.pickupLocation,
      @JsonKey(name: "_id") this.id,
      required this.notes});

  factory _$_ActiveShipmentStop.fromJson(Map<String, dynamic> json) =>
      _$$_ActiveShipmentStopFromJson(json);

  @override
  final PickupLocation pickupLocation;
  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  final String notes;

  @override
  String toString() {
    return 'ActiveShipmentStop(pickupLocation: $pickupLocation, id: $id, notes: $notes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActiveShipmentStop &&
            (identical(other.pickupLocation, pickupLocation) ||
                other.pickupLocation == pickupLocation) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pickupLocation, id, notes);

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
      {required final PickupLocation pickupLocation,
      @JsonKey(name: "_id") final String? id,
      required final String notes}) = _$_ActiveShipmentStop;

  factory _ActiveShipmentStop.fromJson(Map<String, dynamic> json) =
      _$_ActiveShipmentStop.fromJson;

  @override
  PickupLocation get pickupLocation;
  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  String get notes;
  @override
  @JsonKey(ignore: true)
  _$$_ActiveShipmentStopCopyWith<_$_ActiveShipmentStop> get copyWith =>
      throw _privateConstructorUsedError;
}

PickupLocation _$PickupLocationFromJson(Map<String, dynamic> json) {
  return _PickupLocation.fromJson(json);
}

/// @nodoc
mixin _$PickupLocation {
  String get type => throw _privateConstructorUsedError;
  List<double> get coordinates => throw _privateConstructorUsedError;
  String get pickupLocationName => throw _privateConstructorUsedError;

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
  $Res call({String type, List<double> coordinates, String pickupLocationName});
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
    Object? type = null,
    Object? coordinates = null,
    Object? pickupLocationName = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
      pickupLocationName: null == pickupLocationName
          ? _value.pickupLocationName
          : pickupLocationName // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({String type, List<double> coordinates, String pickupLocationName});
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
    Object? type = null,
    Object? coordinates = null,
    Object? pickupLocationName = null,
  }) {
    return _then(_$_PickupLocation(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
      pickupLocationName: null == pickupLocationName
          ? _value.pickupLocationName
          : pickupLocationName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PickupLocation implements _PickupLocation {
  const _$_PickupLocation(
      {required this.type,
      required final List<double> coordinates,
      required this.pickupLocationName})
      : _coordinates = coordinates;

  factory _$_PickupLocation.fromJson(Map<String, dynamic> json) =>
      _$$_PickupLocationFromJson(json);

  @override
  final String type;
  final List<double> _coordinates;
  @override
  List<double> get coordinates {
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coordinates);
  }

  @override
  final String pickupLocationName;

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
      {required final String type,
      required final List<double> coordinates,
      required final String pickupLocationName}) = _$_PickupLocation;

  factory _PickupLocation.fromJson(Map<String, dynamic> json) =
      _$_PickupLocation.fromJson;

  @override
  String get type;
  @override
  List<double> get coordinates;
  @override
  String get pickupLocationName;
  @override
  @JsonKey(ignore: true)
  _$$_PickupLocationCopyWith<_$_PickupLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

DropLocation _$DropLocationFromJson(Map<String, dynamic> json) {
  return _DropLocation.fromJson(json);
}

/// @nodoc
mixin _$DropLocation {
  String get type => throw _privateConstructorUsedError;
  List<double> get coordinates => throw _privateConstructorUsedError;
  String get dropLocationName => throw _privateConstructorUsedError;

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
  $Res call({String type, List<double> coordinates, String dropLocationName});
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
    Object? type = null,
    Object? coordinates = null,
    Object? dropLocationName = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
      dropLocationName: null == dropLocationName
          ? _value.dropLocationName
          : dropLocationName // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({String type, List<double> coordinates, String dropLocationName});
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
    Object? type = null,
    Object? coordinates = null,
    Object? dropLocationName = null,
  }) {
    return _then(_$_DropLocation(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<double>,
      dropLocationName: null == dropLocationName
          ? _value.dropLocationName
          : dropLocationName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DropLocation implements _DropLocation {
  const _$_DropLocation(
      {required this.type,
      required final List<double> coordinates,
      required this.dropLocationName})
      : _coordinates = coordinates;

  factory _$_DropLocation.fromJson(Map<String, dynamic> json) =>
      _$$_DropLocationFromJson(json);

  @override
  final String type;
  final List<double> _coordinates;
  @override
  List<double> get coordinates {
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coordinates);
  }

  @override
  final String dropLocationName;

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
      {required final String type,
      required final List<double> coordinates,
      required final String dropLocationName}) = _$_DropLocation;

  factory _DropLocation.fromJson(Map<String, dynamic> json) =
      _$_DropLocation.fromJson;

  @override
  String get type;
  @override
  List<double> get coordinates;
  @override
  String get dropLocationName;
  @override
  @JsonKey(ignore: true)
  _$$_DropLocationCopyWith<_$_DropLocation> get copyWith =>
      throw _privateConstructorUsedError;
}
