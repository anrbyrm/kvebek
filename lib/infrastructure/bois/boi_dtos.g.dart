// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boi_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BoiDto _$_$_BoiDtoFromJson(Map<String, dynamic> json) {
  return _$_BoiDto(
    name: json['name'] as String,
    fullName: json['fullName'] as String,
    photoUrl: json['photoUrl'] as String,
    blurHash: json['blurHash'] as String,
    placeName: json['placeName'] as String,
    hachan: json['hachan'] as int,
    haveCar: json['haveCar'] as bool,
    withCar: json['withCar'] as bool,
  );
}

Map<String, dynamic> _$_$_BoiDtoToJson(_$_BoiDto instance) => <String, dynamic>{
      'name': instance.name,
      'fullName': instance.fullName,
      'photoUrl': instance.photoUrl,
      'blurHash': instance.blurHash,
      'placeName': instance.placeName,
      'hachan': instance.hachan,
      'haveCar': instance.haveCar,
      'withCar': instance.withCar,
    };
