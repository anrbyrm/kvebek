part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authCheck() = AuthCheck;
  const factory AuthEvent.signOut() = SignOut;
}
