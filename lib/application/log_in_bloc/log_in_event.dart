part of 'log_in_bloc.dart';

@freezed
abstract class LogInEvent with _$LogInEvent {
  const factory LogInEvent.nameChanged(String name) = NameChanged;
  const factory LogInEvent.passwordChanged(String password) = PasswordChanged;
  const factory LogInEvent.signInWithNameAndPassword() =
      SignInWithNameAndPassword;
}
