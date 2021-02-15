import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kvebek/domain/bois/boi.dart';
import 'package:kvebek/domain/bois/value_objects.dart';
import 'package:kvebek/domain/core/value_objects.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'boi_dtos.g.dart';
part 'boi_dtos.freezed.dart';

@freezed
abstract class BoiDto implements _$BoiDto {
  const factory BoiDto({
    @JsonKey(ignore: true) String id,
    @required String name,
    @required String fullName,
    @required String photoUrl,
    @required String blurHash,
    @required String placeName,
    @required int hachan,
    @required bool haveCar,
    @required bool withCar,
  }) = _BoiDto;

  factory BoiDto.fromDomain(Boi boi) {
    return BoiDto(
      id: boi.id.getOrCrash(),
      name: boi.name,
      placeName: boi.placeName.getOrCrash(),
      fullName: boi.fullName,
      photoUrl: boi.photoUrl,
      blurHash: boi.blurHash,
      hachan: boi.hachan.value,
      haveCar: boi.haveCar,
      withCar: boi.withCar,
    );
  }

  Boi toDomain() {
    return Boi(
      id: UniqueId.fromUniqueString(id),
      name: name,
      fullName: fullName,
      placeName: PlaceName(placeName),
      photoUrl: photoUrl,
      blurHash: blurHash,
      hachan: TimeForFirestore(hachan),
      haveCar: haveCar,
      withCar: withCar,
    );
  }

  factory BoiDto.fromJson(Map<String, dynamic> json) => _$BoiDtoFromJson(json);

  factory BoiDto.fromFirestore(DocumentSnapshot doc) {
    return BoiDto.fromJson(doc.data()).copyWith(id: doc.id);
  }

  //TODO: ServerTimestamp deyeri elave ele.

  const BoiDto._();
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}
