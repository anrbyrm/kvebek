part of 'log_in_bloc.dart';

@freezed
abstract class LogInState with _$LogInState {
  const factory LogInState({
    @required Name name,
    @required Password password,
    @required bool isSubmitting,
    @required bool showErrorMessages,
    @required bool isFailure,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _LogInState;

  factory LogInState.initial() => LogInState(
      name: const Name.pure(),
      password: const Password.pure(),
      isSubmitting: false,
      isFailure: false,
      showErrorMessages: false,
      authFailureOrSuccessOption: none());
}
