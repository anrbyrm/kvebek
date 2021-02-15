// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'boi_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BoiWatcherEventTearOff {
  const _$BoiWatcherEventTearOff();

// ignore: unused_element
  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }

// ignore: unused_element
  _BoisReceived boisReceived(Either<BoiFailure, List<Boi>> failureOrBois) {
    return _BoisReceived(
      failureOrBois,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BoiWatcherEvent = _$BoiWatcherEventTearOff();

/// @nodoc
mixin _$BoiWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required TResult boisReceived(Either<BoiFailure, List<Boi>> failureOrBois),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult boisReceived(Either<BoiFailure, List<Boi>> failureOrBois),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult boisReceived(_BoisReceived value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult boisReceived(_BoisReceived value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $BoiWatcherEventCopyWith<$Res> {
  factory $BoiWatcherEventCopyWith(
          BoiWatcherEvent value, $Res Function(BoiWatcherEvent) then) =
      _$BoiWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BoiWatcherEventCopyWithImpl<$Res>
    implements $BoiWatcherEventCopyWith<$Res> {
  _$BoiWatcherEventCopyWithImpl(this._value, this._then);

  final BoiWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(BoiWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$BoiWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;
}

/// @nodoc
class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'BoiWatcherEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required TResult boisReceived(Either<BoiFailure, List<Boi>> failureOrBois),
  }) {
    assert(watchAllStarted != null);
    assert(boisReceived != null);
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult boisReceived(Either<BoiFailure, List<Boi>> failureOrBois),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult boisReceived(_BoisReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(boisReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult boisReceived(_BoisReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements BoiWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

/// @nodoc
abstract class _$BoisReceivedCopyWith<$Res> {
  factory _$BoisReceivedCopyWith(
          _BoisReceived value, $Res Function(_BoisReceived) then) =
      __$BoisReceivedCopyWithImpl<$Res>;
  $Res call({Either<BoiFailure, List<Boi>> failureOrBois});
}

/// @nodoc
class __$BoisReceivedCopyWithImpl<$Res>
    extends _$BoiWatcherEventCopyWithImpl<$Res>
    implements _$BoisReceivedCopyWith<$Res> {
  __$BoisReceivedCopyWithImpl(
      _BoisReceived _value, $Res Function(_BoisReceived) _then)
      : super(_value, (v) => _then(v as _BoisReceived));

  @override
  _BoisReceived get _value => super._value as _BoisReceived;

  @override
  $Res call({
    Object failureOrBois = freezed,
  }) {
    return _then(_BoisReceived(
      failureOrBois == freezed
          ? _value.failureOrBois
          : failureOrBois as Either<BoiFailure, List<Boi>>,
    ));
  }
}

/// @nodoc
class _$_BoisReceived implements _BoisReceived {
  const _$_BoisReceived(this.failureOrBois) : assert(failureOrBois != null);

  @override
  final Either<BoiFailure, List<Boi>> failureOrBois;

  @override
  String toString() {
    return 'BoiWatcherEvent.boisReceived(failureOrBois: $failureOrBois)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BoisReceived &&
            (identical(other.failureOrBois, failureOrBois) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrBois, failureOrBois)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failureOrBois);

  @override
  _$BoisReceivedCopyWith<_BoisReceived> get copyWith =>
      __$BoisReceivedCopyWithImpl<_BoisReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult watchAllStarted(),
    @required TResult boisReceived(Either<BoiFailure, List<Boi>> failureOrBois),
  }) {
    assert(watchAllStarted != null);
    assert(boisReceived != null);
    return boisReceived(failureOrBois);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult watchAllStarted(),
    TResult boisReceived(Either<BoiFailure, List<Boi>> failureOrBois),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (boisReceived != null) {
      return boisReceived(failureOrBois);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult watchAllStarted(_WatchAllStarted value),
    @required TResult boisReceived(_BoisReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(boisReceived != null);
    return boisReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult watchAllStarted(_WatchAllStarted value),
    TResult boisReceived(_BoisReceived value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (boisReceived != null) {
      return boisReceived(this);
    }
    return orElse();
  }
}

abstract class _BoisReceived implements BoiWatcherEvent {
  const factory _BoisReceived(Either<BoiFailure, List<Boi>> failureOrBois) =
      _$_BoisReceived;

  Either<BoiFailure, List<Boi>> get failureOrBois;
  _$BoisReceivedCopyWith<_BoisReceived> get copyWith;
}

/// @nodoc
class _$BoiWatcherStateTearOff {
  const _$BoiWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(List<Boi> boisList) {
    return _LoadSuccess(
      boisList,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(BoiFailure boiFailure) {
    return _LoadFailure(
      boiFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BoiWatcherState = _$BoiWatcherStateTearOff();

/// @nodoc
mixin _$BoiWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(List<Boi> boisList),
    @required TResult loadFailure(BoiFailure boiFailure),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<Boi> boisList),
    TResult loadFailure(BoiFailure boiFailure),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $BoiWatcherStateCopyWith<$Res> {
  factory $BoiWatcherStateCopyWith(
          BoiWatcherState value, $Res Function(BoiWatcherState) then) =
      _$BoiWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BoiWatcherStateCopyWithImpl<$Res>
    implements $BoiWatcherStateCopyWith<$Res> {
  _$BoiWatcherStateCopyWithImpl(this._value, this._then);

  final BoiWatcherState _value;
  // ignore: unused_field
  final $Res Function(BoiWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$BoiWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'BoiWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(List<Boi> boisList),
    @required TResult loadFailure(BoiFailure boiFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<Boi> boisList),
    TResult loadFailure(BoiFailure boiFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BoiWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$BoiWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc
class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'BoiWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(List<Boi> boisList),
    @required TResult loadFailure(BoiFailure boiFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<Boi> boisList),
    TResult loadFailure(BoiFailure boiFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements BoiWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Boi> boisList});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$BoiWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object boisList = freezed,
  }) {
    return _then(_LoadSuccess(
      boisList == freezed ? _value.boisList : boisList as List<Boi>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.boisList) : assert(boisList != null);

  @override
  final List<Boi> boisList;

  @override
  String toString() {
    return 'BoiWatcherState.loadSuccess(boisList: $boisList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.boisList, boisList) ||
                const DeepCollectionEquality()
                    .equals(other.boisList, boisList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(boisList);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(List<Boi> boisList),
    @required TResult loadFailure(BoiFailure boiFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(boisList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<Boi> boisList),
    TResult loadFailure(BoiFailure boiFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(boisList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements BoiWatcherState {
  const factory _LoadSuccess(List<Boi> boisList) = _$_LoadSuccess;

  List<Boi> get boisList;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({BoiFailure boiFailure});

  $BoiFailureCopyWith<$Res> get boiFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$BoiWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object boiFailure = freezed,
  }) {
    return _then(_LoadFailure(
      boiFailure == freezed ? _value.boiFailure : boiFailure as BoiFailure,
    ));
  }

  @override
  $BoiFailureCopyWith<$Res> get boiFailure {
    if (_value.boiFailure == null) {
      return null;
    }
    return $BoiFailureCopyWith<$Res>(_value.boiFailure, (value) {
      return _then(_value.copyWith(boiFailure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.boiFailure) : assert(boiFailure != null);

  @override
  final BoiFailure boiFailure;

  @override
  String toString() {
    return 'BoiWatcherState.loadFailure(boiFailure: $boiFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.boiFailure, boiFailure) ||
                const DeepCollectionEquality()
                    .equals(other.boiFailure, boiFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(boiFailure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult loadInProgress(),
    @required TResult loadSuccess(List<Boi> boisList),
    @required TResult loadFailure(BoiFailure boiFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(boiFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult loadInProgress(),
    TResult loadSuccess(List<Boi> boisList),
    TResult loadFailure(BoiFailure boiFailure),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(boiFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
    @required TResult loadInProgress(_LoadInProgress value),
    @required TResult loadSuccess(_LoadSuccess value),
    @required TResult loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    TResult loadInProgress(_LoadInProgress value),
    TResult loadSuccess(_LoadSuccess value),
    TResult loadFailure(_LoadFailure value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements BoiWatcherState {
  const factory _LoadFailure(BoiFailure boiFailure) = _$_LoadFailure;

  BoiFailure get boiFailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
