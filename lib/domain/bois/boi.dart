import 'package:kvebek/domain/bois/value_objects.dart';
import 'package:kvebek/domain/core/value_objects.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'boi.freezed.dart';

//Specifik userler kodda [Boi] olaraq gorsenir.
@freezed
abstract class Boi with _$Boi {
  const factory Boi({
    @required UniqueId id,
    @required String name,
    @required String fullName,
    @required String photoUrl,
    @required String blurHash,
    @required PlaceName placeName,
    @required TimeForFirestore hachan,
    @required bool haveCar,
    @required bool withCar,
  }) = _Boi;

  const Boi._();

  factory Boi.empty() => Boi(
        id: UniqueId(),
        name: '',
        fullName: '',
        photoUrl: '',
        blurHash: 'LEEC@40000?wL4v|VrX900.8%2IV',
        placeName: PlaceName(''),
        hachan: TimeForFirestore(1644465600000),
        haveCar: false,
        withCar: false,
      );
}
