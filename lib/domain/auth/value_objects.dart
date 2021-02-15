import 'package:formz/formz.dart';

enum ValidationError { invalid }

class Name extends FormzInput<String, ValidationError> {
  const Name.pure() : super.pure('');
  const Name.dirty([String value = '']) : super.dirty(value);

  @override
  ValidationError validator(String value) {
    return value.isNotEmpty ? null : ValidationError.invalid;
  }
}

class Password extends FormzInput<String, ValidationError> {
  const Password.pure() : super.pure('');
  const Password.dirty([String value = '']) : super.dirty(value);

  @override
  ValidationError validator(String value) {
    return value.length > 6 ? null : ValidationError.invalid;
  }
}
