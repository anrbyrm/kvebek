import 'package:freezed_annotation/freezed_annotation.dart';

part 'boi_failure.freezed.dart';

// [Boi] classi uchun chixa bilecek exceptionlar:
@freezed
abstract class BoiFailure with _$BoiFailure {
  const factory BoiFailure.unexpected() = _Unexpected;
  const factory BoiFailure.insufficientPermissions() = _InsufficientPermissions;
  const factory BoiFailure.unableToUpdate() = _UnableToUpdate;
  // Eger user silinibse main screende onun yerine placeholder gorsenecek.
  const factory BoiFailure.deleted() = _Deleted;
}
