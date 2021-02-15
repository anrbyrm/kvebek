part of 'boi_watcher_bloc.dart';

@freezed
abstract class BoiWatcherState with _$BoiWatcherState {
  const factory BoiWatcherState.initial() = _Initial;
  const factory BoiWatcherState.loadInProgress() = _LoadInProgress;
  const factory BoiWatcherState.loadSuccess(List<Boi> boisList) = _LoadSuccess;
  const factory BoiWatcherState.loadFailure(BoiFailure boiFailure) =
      _LoadFailure;
}
