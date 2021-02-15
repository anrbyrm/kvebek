import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kvebek/domain/bois/value_objects.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kvebek/domain/bois/boi.dart';
import 'package:kvebek/domain/bois/boi_failure.dart';
import 'package:kvebek/domain/bois/i_boi_repository.dart';

part 'boi_detail_event.dart';
part 'boi_detail_state.dart';
part 'boi_detail_bloc.freezed.dart';

@injectable
class BoiDetailBloc extends Bloc<BoiDetailEvent, BoiDetailState> {
  final IBoiRepository _boiRepository;

  BoiDetailBloc(this._boiRepository) : super(BoiDetailState.initial());

  @override
  Stream<BoiDetailState> mapEventToState(
    BoiDetailEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialBoi.fold(
          () => state,
          (initialBoi) => state.copyWith(
            boi: initialBoi,
            isEditing: false,
          ),
        );
      },
      placeNameChanged: (e) async* {
        yield state.copyWith(
          boi: state.boi.copyWith(placeName: PlaceName(e.placeName)),
          isEditing: true,
          saveFailureOrSuccessOption: none(),
        );
      },
      timeChanged: (e) async* {
        yield state.copyWith(
          boi: state.boi.copyWith(hachan: TimeForFirestore(e.time)),
          isEditing: true,
        );
      },
      withCarChanged: (e) async* {
        yield state.copyWith(
          boi: state.boi.copyWith(withCar: e.check),
          isEditing: true,
        );
      },
      atHomeSaved: (e) async* {
        Either<BoiFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        failureOrSuccess = await _boiRepository.update(
          state.boi.copyWith(
              placeName: PlaceName(''),
              hachan: TimeForFirestore(1644465600000),
              withCar: false),
        );

        yield state.copyWith(
          isSaving: false,
          isEditing: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      saved: (e) async* {
        Either<BoiFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        failureOrSuccess = await _boiRepository.update(state.boi);

        yield state.copyWith(
          isSaving: false,
          isEditing: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
