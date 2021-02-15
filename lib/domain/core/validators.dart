import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';

import 'failures.dart';

Either<ValueFailure<String>, String> validateMaxInputLength(
  String input,
  int maxLenght,
) {
  if (input.length <= maxLenght) {
    return right(input);
  } else {
    return left(
        ValueFailure.exceedingLength(failedValue: input, max: maxLenght));
  }
}

Either<ValueFailure<String>, String> validateInputNotEmpty(
  String input,
) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

int ifEmptyThen(int time) {
  if (time == null) {
    return Timestamp.now().millisecondsSinceEpoch;
  } else {
    return time;
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 7) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}
