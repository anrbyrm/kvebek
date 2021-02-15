import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kvebek/domain/auth/i_auth_facade.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../domain/auth/auth_failure.dart';
import '../../domain/auth/value_objects.dart';

part 'log_in_bloc.freezed.dart';
part 'log_in_event.dart';
part 'log_in_state.dart';

@injectable
class LogInBloc extends Bloc<LogInEvent, LogInState> {
  final IAuthFacade _authFacade;

  LogInBloc(this._authFacade) : super(LogInState.initial());

  @override
  Stream<LogInState> mapEventToState(
    LogInEvent event,
  ) async* {
    yield* event.map(
      nameChanged: (e) async* {
        final name = Name.dirty(e.name);
        yield state.copyWith(
            name: name, isFailure: false, authFailureOrSuccessOption: none());
      },
      passwordChanged: (e) async* {
        final password = Password.dirty(e.password);
        yield state.copyWith(
            password: password,
            isFailure: false,
            authFailureOrSuccessOption: none());
      },
      signInWithNameAndPassword: (e) async* {
        Either<AuthFailure, Unit> failureOrSuccess;

        final isPasswordValid = state.password.valid;

        if (isPasswordValid) {
          yield state.copyWith(
            isSubmitting: true,
            isFailure: true,
            authFailureOrSuccessOption: none(),
          );

          failureOrSuccess = await _authFacade.signInwithEmailAndPassword(
            name: state.name.value,
            password: state.password.value,
          );
        }

        yield state.copyWith(
          isSubmitting: false,
          isFailure: true,
          showErrorMessages: true,
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
