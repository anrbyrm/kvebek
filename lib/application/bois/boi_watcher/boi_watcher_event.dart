part of 'boi_watcher_bloc.dart';

@freezed
abstract class BoiWatcherEvent with _$BoiWatcherEvent {
  const factory BoiWatcherEvent.watchAllStarted() = _WatchAllStarted;
  // const factory BoiWatcherEvent.watchOutsideStarted() = _WatchOutsideStarted;
  const factory BoiWatcherEvent.boisReceived(
      Either<BoiFailure, List<Boi>> failureOrBois) = _BoisReceived;
}
