part of 'boi_detail_bloc.dart';

@freezed
abstract class BoiDetailState with _$BoiDetailState {
  const factory BoiDetailState({
    @required Boi boi,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isSaving,
    @required Option<Either<BoiFailure, Unit>> saveFailureOrSuccessOption,
  }) = _BoiDetailState;

  factory BoiDetailState.initial() => BoiDetailState(
        boi: Boi.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
