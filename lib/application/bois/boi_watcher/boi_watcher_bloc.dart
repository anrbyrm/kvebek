import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kvebek/domain/bois/boi.dart';
import 'package:kvebek/domain/bois/boi_failure.dart';
import 'package:kvebek/domain/bois/i_boi_repository.dart';

part 'boi_watcher_event.dart';
part 'boi_watcher_state.dart';
part 'boi_watcher_bloc.freezed.dart';

@injectable
class BoiWatcherBloc extends Bloc<BoiWatcherEvent, BoiWatcherState> {
  final IBoiRepository _boiRepository;

  StreamSubscription<Either<BoiFailure, List<Boi>>> _boiStreamSubscription;

  BoiWatcherBloc(this._boiRepository) : super(const _Initial());

  @override
  Stream<BoiWatcherState> mapEventToState(
    BoiWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const BoiWatcherState.loadInProgress();
        await Future.delayed(const Duration(milliseconds: 500));
        await _boiStreamSubscription?.cancel();
        _boiStreamSubscription =
            _boiRepository.watchAllIncludeCurrentBoi().listen(
                  (failureOrBois) =>
                      add(BoiWatcherEvent.boisReceived(failureOrBois)),
                );
      },
      // watchOutsideStarted: (e) async* {
      //   yield const BoiWatcherState.loadInProgress();
      //   await Future.delayed(const Duration(milliseconds: 500));
      //   await _boiStreamSubscription?.cancel();
      //   _boiStreamSubscription =
      //       _boiRepository.watchOutside().listen((failureOrBois) {
      //     add(BoiWatcherEvent.boisReceived(failureOrBois));
      //   });
      // },
      boisReceived: (e) async* {
        yield e.failureOrBois.fold(
          (f) => BoiWatcherState.loadFailure(f),
          (boisOrBoi) => BoiWatcherState.loadSuccess(boisOrBoi),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _boiStreamSubscription?.cancel();
    return super.close();
  }
}
