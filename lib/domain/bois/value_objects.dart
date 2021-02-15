import 'package:dartz/dartz.dart';

import 'package:kvebek/domain/core/failures.dart';
import 'package:kvebek/domain/core/validators.dart';
import 'package:kvebek/domain/core/value_objects.dart';

// Harda oldugunu bildirmek uchun input edilecek textFieldin saxliyacagi deyer
class PlaceName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 20;

  bool isNotEmpty() {
    return value.fold((_) => null, (input) {
      if (input.isNotEmpty) {
        return true;
      } else {
        return false;
      }
    });
  }

  factory PlaceName(String input) {
    assert(input != null);
    return PlaceName._(validateMaxInputLength(input, maxLength));
  }

  const PlaceName._(this.value);
}

class TimeForFirestore {
  final int value;

  factory TimeForFirestore(int time) {
    assert(time != null);
    return TimeForFirestore._(ifEmptyThen(time));
  }

  const TimeForFirestore._(this.value);
}
//TODO: Elave objectler elave ele
