part of 'boi_detail_bloc.dart';

@freezed
abstract class BoiDetailEvent with _$BoiDetailEvent {
  const factory BoiDetailEvent.initialized(Option<Boi> initialBoi) =
      _Initialized;
  const factory BoiDetailEvent.placeNameChanged(String placeName) =
      _PlaceNameChanged;
  const factory BoiDetailEvent.timeChanged(int time) = _TimeChanged;
  // ignore: avoid_positional_boolean_parameters
  const factory BoiDetailEvent.withCarChanged(bool check) = _HaveCarChanged;
  const factory BoiDetailEvent.saved() = _Saved;
  const factory BoiDetailEvent.atHomeSaved() = _AtHomeSaved;
}
