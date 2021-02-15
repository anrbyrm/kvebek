// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'boi_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
BoiDto _$BoiDtoFromJson(Map<String, dynamic> json) {
  return _BoiDto.fromJson(json);
}

/// @nodoc
class _$BoiDtoTearOff {
  const _$BoiDtoTearOff();

// ignore: unused_element
  _BoiDto call(
      {@JsonKey(ignore: true) String id,
      @required String name,
      @required String fullName,
      @required String photoUrl,
      @required String blurHash,
      @required String placeName,
      @required int hachan,
      @required bool haveCar,
      @required bool withCar}) {
    return _BoiDto(
      id: id,
      name: name,
      fullName: fullName,
      photoUrl: photoUrl,
      blurHash: blurHash,
      placeName: placeName,
      hachan: hachan,
      haveCar: haveCar,
      withCar: withCar,
    );
  }

// ignore: unused_element
  BoiDto fromJson(Map<String, Object> json) {
    return BoiDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $BoiDto = _$BoiDtoTearOff();

/// @nodoc
mixin _$BoiDto {
  @JsonKey(ignore: true)
  String get id;
  String get name;
  String get fullName;
  String get photoUrl;
  String get blurHash;
  String get placeName;
  int get hachan;
  bool get haveCar;
  bool get withCar;

  Map<String, dynamic> toJson();
  $BoiDtoCopyWith<BoiDto> get copyWith;
}

/// @nodoc
abstract class $BoiDtoCopyWith<$Res> {
  factory $BoiDtoCopyWith(BoiDto value, $Res Function(BoiDto) then) =
      _$BoiDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String name,
      String fullName,
      String photoUrl,
      String blurHash,
      String placeName,
      int hachan,
      bool haveCar,
      bool withCar});
}

/// @nodoc
class _$BoiDtoCopyWithImpl<$Res> implements $BoiDtoCopyWith<$Res> {
  _$BoiDtoCopyWithImpl(this._value, this._then);

  final BoiDto _value;
  // ignore: unused_field
  final $Res Function(BoiDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object fullName = freezed,
    Object photoUrl = freezed,
    Object blurHash = freezed,
    Object placeName = freezed,
    Object hachan = freezed,
    Object haveCar = freezed,
    Object withCar = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      blurHash: blurHash == freezed ? _value.blurHash : blurHash as String,
      placeName: placeName == freezed ? _value.placeName : placeName as String,
      hachan: hachan == freezed ? _value.hachan : hachan as int,
      haveCar: haveCar == freezed ? _value.haveCar : haveCar as bool,
      withCar: withCar == freezed ? _value.withCar : withCar as bool,
    ));
  }
}

/// @nodoc
abstract class _$BoiDtoCopyWith<$Res> implements $BoiDtoCopyWith<$Res> {
  factory _$BoiDtoCopyWith(_BoiDto value, $Res Function(_BoiDto) then) =
      __$BoiDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String name,
      String fullName,
      String photoUrl,
      String blurHash,
      String placeName,
      int hachan,
      bool haveCar,
      bool withCar});
}

/// @nodoc
class __$BoiDtoCopyWithImpl<$Res> extends _$BoiDtoCopyWithImpl<$Res>
    implements _$BoiDtoCopyWith<$Res> {
  __$BoiDtoCopyWithImpl(_BoiDto _value, $Res Function(_BoiDto) _then)
      : super(_value, (v) => _then(v as _BoiDto));

  @override
  _BoiDto get _value => super._value as _BoiDto;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object fullName = freezed,
    Object photoUrl = freezed,
    Object blurHash = freezed,
    Object placeName = freezed,
    Object hachan = freezed,
    Object haveCar = freezed,
    Object withCar = freezed,
  }) {
    return _then(_BoiDto(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      photoUrl: photoUrl == freezed ? _value.photoUrl : photoUrl as String,
      blurHash: blurHash == freezed ? _value.blurHash : blurHash as String,
      placeName: placeName == freezed ? _value.placeName : placeName as String,
      hachan: hachan == freezed ? _value.hachan : hachan as int,
      haveCar: haveCar == freezed ? _value.haveCar : haveCar as bool,
      withCar: withCar == freezed ? _value.withCar : withCar as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_BoiDto extends _BoiDto {
  const _$_BoiDto(
      {@JsonKey(ignore: true) this.id,
      @required this.name,
      @required this.fullName,
      @required this.photoUrl,
      @required this.blurHash,
      @required this.placeName,
      @required this.hachan,
      @required this.haveCar,
      @required this.withCar})
      : assert(name != null),
        assert(fullName != null),
        assert(photoUrl != null),
        assert(blurHash != null),
        assert(placeName != null),
        assert(hachan != null),
        assert(haveCar != null),
        assert(withCar != null),
        super._();

  factory _$_BoiDto.fromJson(Map<String, dynamic> json) =>
      _$_$_BoiDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String name;
  @override
  final String fullName;
  @override
  final String photoUrl;
  @override
  final String blurHash;
  @override
  final String placeName;
  @override
  final int hachan;
  @override
  final bool haveCar;
  @override
  final bool withCar;

  @override
  String toString() {
    return 'BoiDto(id: $id, name: $name, fullName: $fullName, photoUrl: $photoUrl, blurHash: $blurHash, placeName: $placeName, hachan: $hachan, haveCar: $haveCar, withCar: $withCar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BoiDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.photoUrl, photoUrl) ||
                const DeepCollectionEquality()
                    .equals(other.photoUrl, photoUrl)) &&
            (identical(other.blurHash, blurHash) ||
                const DeepCollectionEquality()
                    .equals(other.blurHash, blurHash)) &&
            (identical(other.placeName, placeName) ||
                const DeepCollectionEquality()
                    .equals(other.placeName, placeName)) &&
            (identical(other.hachan, hachan) ||
                const DeepCollectionEquality().equals(other.hachan, hachan)) &&
            (identical(other.haveCar, haveCar) ||
                const DeepCollectionEquality()
                    .equals(other.haveCar, haveCar)) &&
            (identical(other.withCar, withCar) ||
                const DeepCollectionEquality().equals(other.withCar, withCar)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(photoUrl) ^
      const DeepCollectionEquality().hash(blurHash) ^
      const DeepCollectionEquality().hash(placeName) ^
      const DeepCollectionEquality().hash(hachan) ^
      const DeepCollectionEquality().hash(haveCar) ^
      const DeepCollectionEquality().hash(withCar);

  @override
  _$BoiDtoCopyWith<_BoiDto> get copyWith =>
      __$BoiDtoCopyWithImpl<_BoiDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BoiDtoToJson(this);
  }
}

abstract class _BoiDto extends BoiDto {
  const _BoiDto._() : super._();
  const factory _BoiDto(
      {@JsonKey(ignore: true) String id,
      @required String name,
      @required String fullName,
      @required String photoUrl,
      @required String blurHash,
      @required String placeName,
      @required int hachan,
      @required bool haveCar,
      @required bool withCar}) = _$_BoiDto;

  factory _BoiDto.fromJson(Map<String, dynamic> json) = _$_BoiDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get name;
  @override
  String get fullName;
  @override
  String get photoUrl;
  @override
  String get blurHash;
  @override
  String get placeName;
  @override
  int get hachan;
  @override
  bool get haveCar;
  @override
  bool get withCar;
  @override
  _$BoiDtoCopyWith<_BoiDto> get copyWith;
}
