// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'boi_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BoiDetailEventTearOff {
  const _$BoiDetailEventTearOff();

// ignore: unused_element
  _Initialized initialized(Option<Boi> initialBoi) {
    return _Initialized(
      initialBoi,
    );
  }

// ignore: unused_element
  _PlaceNameChanged placeNameChanged(String placeName) {
    return _PlaceNameChanged(
      placeName,
    );
  }

// ignore: unused_element
  _TimeChanged timeChanged(int time) {
    return _TimeChanged(
      time,
    );
  }

// ignore: unused_element
  // ignore: avoid_positional_boolean_parameters
  _HaveCarChanged withCarChanged(bool check) {
    return _HaveCarChanged(
      check,
    );
  }

// ignore: unused_element
  _Saved saved() {
    return const _Saved();
  }

// ignore: unused_element
  _AtHomeSaved atHomeSaved() {
    return const _AtHomeSaved();
  }
}

/// @nodoc
// ignore: unused_element
const $BoiDetailEvent = _$BoiDetailEventTearOff();

/// @nodoc
mixin _$BoiDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Boi> initialBoi),
    @required TResult placeNameChanged(String placeName),
    @required TResult timeChanged(int time),
    @required TResult withCarChanged(bool check),
    @required TResult saved(),
    @required TResult atHomeSaved(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Boi> initialBoi),
    TResult placeNameChanged(String placeName),
    TResult timeChanged(int time),
    TResult withCarChanged(bool check),
    TResult saved(),
    TResult atHomeSaved(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult placeNameChanged(_PlaceNameChanged value),
    @required TResult timeChanged(_TimeChanged value),
    @required TResult withCarChanged(_HaveCarChanged value),
    @required TResult saved(_Saved value),
    @required TResult atHomeSaved(_AtHomeSaved value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult placeNameChanged(_PlaceNameChanged value),
    TResult timeChanged(_TimeChanged value),
    TResult withCarChanged(_HaveCarChanged value),
    TResult saved(_Saved value),
    TResult atHomeSaved(_AtHomeSaved value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $BoiDetailEventCopyWith<$Res> {
  factory $BoiDetailEventCopyWith(
          BoiDetailEvent value, $Res Function(BoiDetailEvent) then) =
      _$BoiDetailEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BoiDetailEventCopyWithImpl<$Res>
    implements $BoiDetailEventCopyWith<$Res> {
  _$BoiDetailEventCopyWithImpl(this._value, this._then);

  final BoiDetailEvent _value;
  // ignore: unused_field
  final $Res Function(BoiDetailEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Boi> initialBoi});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res>
    extends _$BoiDetailEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialBoi = freezed,
  }) {
    return _then(_Initialized(
      initialBoi == freezed ? _value.initialBoi : initialBoi as Option<Boi>,
    ));
  }
}

/// @nodoc
class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialBoi) : assert(initialBoi != null);

  @override
  final Option<Boi> initialBoi;

  @override
  String toString() {
    return 'BoiDetailEvent.initialized(initialBoi: $initialBoi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialBoi, initialBoi) ||
                const DeepCollectionEquality()
                    .equals(other.initialBoi, initialBoi)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(initialBoi);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Boi> initialBoi),
    @required TResult placeNameChanged(String placeName),
    @required TResult timeChanged(int time),
    @required TResult withCarChanged(bool check),
    @required TResult saved(),
    @required TResult atHomeSaved(),
  }) {
    assert(initialized != null);
    assert(placeNameChanged != null);
    assert(timeChanged != null);
    assert(withCarChanged != null);
    assert(saved != null);
    assert(atHomeSaved != null);
    return initialized(initialBoi);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Boi> initialBoi),
    TResult placeNameChanged(String placeName),
    TResult timeChanged(int time),
    TResult withCarChanged(bool check),
    TResult saved(),
    TResult atHomeSaved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialBoi);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult placeNameChanged(_PlaceNameChanged value),
    @required TResult timeChanged(_TimeChanged value),
    @required TResult withCarChanged(_HaveCarChanged value),
    @required TResult saved(_Saved value),
    @required TResult atHomeSaved(_AtHomeSaved value),
  }) {
    assert(initialized != null);
    assert(placeNameChanged != null);
    assert(timeChanged != null);
    assert(withCarChanged != null);
    assert(saved != null);
    assert(atHomeSaved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult placeNameChanged(_PlaceNameChanged value),
    TResult timeChanged(_TimeChanged value),
    TResult withCarChanged(_HaveCarChanged value),
    TResult saved(_Saved value),
    TResult atHomeSaved(_AtHomeSaved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements BoiDetailEvent {
  const factory _Initialized(Option<Boi> initialBoi) = _$_Initialized;

  Option<Boi> get initialBoi;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

/// @nodoc
abstract class _$PlaceNameChangedCopyWith<$Res> {
  factory _$PlaceNameChangedCopyWith(
          _PlaceNameChanged value, $Res Function(_PlaceNameChanged) then) =
      __$PlaceNameChangedCopyWithImpl<$Res>;
  $Res call({String placeName});
}

/// @nodoc
class __$PlaceNameChangedCopyWithImpl<$Res>
    extends _$BoiDetailEventCopyWithImpl<$Res>
    implements _$PlaceNameChangedCopyWith<$Res> {
  __$PlaceNameChangedCopyWithImpl(
      _PlaceNameChanged _value, $Res Function(_PlaceNameChanged) _then)
      : super(_value, (v) => _then(v as _PlaceNameChanged));

  @override
  _PlaceNameChanged get _value => super._value as _PlaceNameChanged;

  @override
  $Res call({
    Object placeName = freezed,
  }) {
    return _then(_PlaceNameChanged(
      placeName == freezed ? _value.placeName : placeName as String,
    ));
  }
}

/// @nodoc
class _$_PlaceNameChanged implements _PlaceNameChanged {
  const _$_PlaceNameChanged(this.placeName) : assert(placeName != null);

  @override
  final String placeName;

  @override
  String toString() {
    return 'BoiDetailEvent.placeNameChanged(placeName: $placeName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PlaceNameChanged &&
            (identical(other.placeName, placeName) ||
                const DeepCollectionEquality()
                    .equals(other.placeName, placeName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(placeName);

  @override
  _$PlaceNameChangedCopyWith<_PlaceNameChanged> get copyWith =>
      __$PlaceNameChangedCopyWithImpl<_PlaceNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Boi> initialBoi),
    @required TResult placeNameChanged(String placeName),
    @required TResult timeChanged(int time),
    @required TResult withCarChanged(bool check),
    @required TResult saved(),
    @required TResult atHomeSaved(),
  }) {
    assert(initialized != null);
    assert(placeNameChanged != null);
    assert(timeChanged != null);
    assert(withCarChanged != null);
    assert(saved != null);
    assert(atHomeSaved != null);
    return placeNameChanged(placeName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Boi> initialBoi),
    TResult placeNameChanged(String placeName),
    TResult timeChanged(int time),
    TResult withCarChanged(bool check),
    TResult saved(),
    TResult atHomeSaved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (placeNameChanged != null) {
      return placeNameChanged(placeName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult placeNameChanged(_PlaceNameChanged value),
    @required TResult timeChanged(_TimeChanged value),
    @required TResult withCarChanged(_HaveCarChanged value),
    @required TResult saved(_Saved value),
    @required TResult atHomeSaved(_AtHomeSaved value),
  }) {
    assert(initialized != null);
    assert(placeNameChanged != null);
    assert(timeChanged != null);
    assert(withCarChanged != null);
    assert(saved != null);
    assert(atHomeSaved != null);
    return placeNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult placeNameChanged(_PlaceNameChanged value),
    TResult timeChanged(_TimeChanged value),
    TResult withCarChanged(_HaveCarChanged value),
    TResult saved(_Saved value),
    TResult atHomeSaved(_AtHomeSaved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (placeNameChanged != null) {
      return placeNameChanged(this);
    }
    return orElse();
  }
}

abstract class _PlaceNameChanged implements BoiDetailEvent {
  const factory _PlaceNameChanged(String placeName) = _$_PlaceNameChanged;

  String get placeName;
  _$PlaceNameChangedCopyWith<_PlaceNameChanged> get copyWith;
}

/// @nodoc
abstract class _$TimeChangedCopyWith<$Res> {
  factory _$TimeChangedCopyWith(
          _TimeChanged value, $Res Function(_TimeChanged) then) =
      __$TimeChangedCopyWithImpl<$Res>;
  $Res call({int time});
}

/// @nodoc
class __$TimeChangedCopyWithImpl<$Res>
    extends _$BoiDetailEventCopyWithImpl<$Res>
    implements _$TimeChangedCopyWith<$Res> {
  __$TimeChangedCopyWithImpl(
      _TimeChanged _value, $Res Function(_TimeChanged) _then)
      : super(_value, (v) => _then(v as _TimeChanged));

  @override
  _TimeChanged get _value => super._value as _TimeChanged;

  @override
  $Res call({
    Object time = freezed,
  }) {
    return _then(_TimeChanged(
      time == freezed ? _value.time : time as int,
    ));
  }
}

/// @nodoc
class _$_TimeChanged implements _TimeChanged {
  const _$_TimeChanged(this.time) : assert(time != null);

  @override
  final int time;

  @override
  String toString() {
    return 'BoiDetailEvent.timeChanged(time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TimeChanged &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(time);

  @override
  _$TimeChangedCopyWith<_TimeChanged> get copyWith =>
      __$TimeChangedCopyWithImpl<_TimeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Boi> initialBoi),
    @required TResult placeNameChanged(String placeName),
    @required TResult timeChanged(int time),
    @required TResult withCarChanged(bool check),
    @required TResult saved(),
    @required TResult atHomeSaved(),
  }) {
    assert(initialized != null);
    assert(placeNameChanged != null);
    assert(timeChanged != null);
    assert(withCarChanged != null);
    assert(saved != null);
    assert(atHomeSaved != null);
    return timeChanged(time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Boi> initialBoi),
    TResult placeNameChanged(String placeName),
    TResult timeChanged(int time),
    TResult withCarChanged(bool check),
    TResult saved(),
    TResult atHomeSaved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (timeChanged != null) {
      return timeChanged(time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult placeNameChanged(_PlaceNameChanged value),
    @required TResult timeChanged(_TimeChanged value),
    @required TResult withCarChanged(_HaveCarChanged value),
    @required TResult saved(_Saved value),
    @required TResult atHomeSaved(_AtHomeSaved value),
  }) {
    assert(initialized != null);
    assert(placeNameChanged != null);
    assert(timeChanged != null);
    assert(withCarChanged != null);
    assert(saved != null);
    assert(atHomeSaved != null);
    return timeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult placeNameChanged(_PlaceNameChanged value),
    TResult timeChanged(_TimeChanged value),
    TResult withCarChanged(_HaveCarChanged value),
    TResult saved(_Saved value),
    TResult atHomeSaved(_AtHomeSaved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (timeChanged != null) {
      return timeChanged(this);
    }
    return orElse();
  }
}

abstract class _TimeChanged implements BoiDetailEvent {
  const factory _TimeChanged(int time) = _$_TimeChanged;

  int get time;
  _$TimeChangedCopyWith<_TimeChanged> get copyWith;
}

/// @nodoc
abstract class _$HaveCarChangedCopyWith<$Res> {
  factory _$HaveCarChangedCopyWith(
          _HaveCarChanged value, $Res Function(_HaveCarChanged) then) =
      __$HaveCarChangedCopyWithImpl<$Res>;
  $Res call({bool check});
}

/// @nodoc
class __$HaveCarChangedCopyWithImpl<$Res>
    extends _$BoiDetailEventCopyWithImpl<$Res>
    implements _$HaveCarChangedCopyWith<$Res> {
  __$HaveCarChangedCopyWithImpl(
      _HaveCarChanged _value, $Res Function(_HaveCarChanged) _then)
      : super(_value, (v) => _then(v as _HaveCarChanged));

  @override
  _HaveCarChanged get _value => super._value as _HaveCarChanged;

  @override
  $Res call({
    Object check = freezed,
  }) {
    return _then(_HaveCarChanged(
      check == freezed ? _value.check : check as bool,
    ));
  }
}

/// @nodoc
class _$_HaveCarChanged implements _HaveCarChanged {
  // ignore: avoid_positional_boolean_parameters
  const _$_HaveCarChanged(this.check) : assert(check != null);

  @override
  final bool check;

  @override
  String toString() {
    return 'BoiDetailEvent.withCarChanged(check: $check)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HaveCarChanged &&
            (identical(other.check, check) ||
                const DeepCollectionEquality().equals(other.check, check)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(check);

  @override
  _$HaveCarChangedCopyWith<_HaveCarChanged> get copyWith =>
      __$HaveCarChangedCopyWithImpl<_HaveCarChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Boi> initialBoi),
    @required TResult placeNameChanged(String placeName),
    @required TResult timeChanged(int time),
    @required TResult withCarChanged(bool check),
    @required TResult saved(),
    @required TResult atHomeSaved(),
  }) {
    assert(initialized != null);
    assert(placeNameChanged != null);
    assert(timeChanged != null);
    assert(withCarChanged != null);
    assert(saved != null);
    assert(atHomeSaved != null);
    return withCarChanged(check);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Boi> initialBoi),
    TResult placeNameChanged(String placeName),
    TResult timeChanged(int time),
    TResult withCarChanged(bool check),
    TResult saved(),
    TResult atHomeSaved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (withCarChanged != null) {
      return withCarChanged(check);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult placeNameChanged(_PlaceNameChanged value),
    @required TResult timeChanged(_TimeChanged value),
    @required TResult withCarChanged(_HaveCarChanged value),
    @required TResult saved(_Saved value),
    @required TResult atHomeSaved(_AtHomeSaved value),
  }) {
    assert(initialized != null);
    assert(placeNameChanged != null);
    assert(timeChanged != null);
    assert(withCarChanged != null);
    assert(saved != null);
    assert(atHomeSaved != null);
    return withCarChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult placeNameChanged(_PlaceNameChanged value),
    TResult timeChanged(_TimeChanged value),
    TResult withCarChanged(_HaveCarChanged value),
    TResult saved(_Saved value),
    TResult atHomeSaved(_AtHomeSaved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (withCarChanged != null) {
      return withCarChanged(this);
    }
    return orElse();
  }
}

abstract class _HaveCarChanged implements BoiDetailEvent {
  // ignore: avoid_positional_boolean_parameters
  const factory _HaveCarChanged(bool check) = _$_HaveCarChanged;

  bool get check;
  _$HaveCarChangedCopyWith<_HaveCarChanged> get copyWith;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$BoiDetailEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc
class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'BoiDetailEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Boi> initialBoi),
    @required TResult placeNameChanged(String placeName),
    @required TResult timeChanged(int time),
    @required TResult withCarChanged(bool check),
    @required TResult saved(),
    @required TResult atHomeSaved(),
  }) {
    assert(initialized != null);
    assert(placeNameChanged != null);
    assert(timeChanged != null);
    assert(withCarChanged != null);
    assert(saved != null);
    assert(atHomeSaved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Boi> initialBoi),
    TResult placeNameChanged(String placeName),
    TResult timeChanged(int time),
    TResult withCarChanged(bool check),
    TResult saved(),
    TResult atHomeSaved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult placeNameChanged(_PlaceNameChanged value),
    @required TResult timeChanged(_TimeChanged value),
    @required TResult withCarChanged(_HaveCarChanged value),
    @required TResult saved(_Saved value),
    @required TResult atHomeSaved(_AtHomeSaved value),
  }) {
    assert(initialized != null);
    assert(placeNameChanged != null);
    assert(timeChanged != null);
    assert(withCarChanged != null);
    assert(saved != null);
    assert(atHomeSaved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult placeNameChanged(_PlaceNameChanged value),
    TResult timeChanged(_TimeChanged value),
    TResult withCarChanged(_HaveCarChanged value),
    TResult saved(_Saved value),
    TResult atHomeSaved(_AtHomeSaved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements BoiDetailEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
abstract class _$AtHomeSavedCopyWith<$Res> {
  factory _$AtHomeSavedCopyWith(
          _AtHomeSaved value, $Res Function(_AtHomeSaved) then) =
      __$AtHomeSavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$AtHomeSavedCopyWithImpl<$Res>
    extends _$BoiDetailEventCopyWithImpl<$Res>
    implements _$AtHomeSavedCopyWith<$Res> {
  __$AtHomeSavedCopyWithImpl(
      _AtHomeSaved _value, $Res Function(_AtHomeSaved) _then)
      : super(_value, (v) => _then(v as _AtHomeSaved));

  @override
  _AtHomeSaved get _value => super._value as _AtHomeSaved;
}

/// @nodoc
class _$_AtHomeSaved implements _AtHomeSaved {
  const _$_AtHomeSaved();

  @override
  String toString() {
    return 'BoiDetailEvent.atHomeSaved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AtHomeSaved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initialized(Option<Boi> initialBoi),
    @required TResult placeNameChanged(String placeName),
    @required TResult timeChanged(int time),
    @required TResult withCarChanged(bool check),
    @required TResult saved(),
    @required TResult atHomeSaved(),
  }) {
    assert(initialized != null);
    assert(placeNameChanged != null);
    assert(timeChanged != null);
    assert(withCarChanged != null);
    assert(saved != null);
    assert(atHomeSaved != null);
    return atHomeSaved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initialized(Option<Boi> initialBoi),
    TResult placeNameChanged(String placeName),
    TResult timeChanged(int time),
    TResult withCarChanged(bool check),
    TResult saved(),
    TResult atHomeSaved(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (atHomeSaved != null) {
      return atHomeSaved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initialized(_Initialized value),
    @required TResult placeNameChanged(_PlaceNameChanged value),
    @required TResult timeChanged(_TimeChanged value),
    @required TResult withCarChanged(_HaveCarChanged value),
    @required TResult saved(_Saved value),
    @required TResult atHomeSaved(_AtHomeSaved value),
  }) {
    assert(initialized != null);
    assert(placeNameChanged != null);
    assert(timeChanged != null);
    assert(withCarChanged != null);
    assert(saved != null);
    assert(atHomeSaved != null);
    return atHomeSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initialized(_Initialized value),
    TResult placeNameChanged(_PlaceNameChanged value),
    TResult timeChanged(_TimeChanged value),
    TResult withCarChanged(_HaveCarChanged value),
    TResult saved(_Saved value),
    TResult atHomeSaved(_AtHomeSaved value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (atHomeSaved != null) {
      return atHomeSaved(this);
    }
    return orElse();
  }
}

abstract class _AtHomeSaved implements BoiDetailEvent {
  const factory _AtHomeSaved() = _$_AtHomeSaved;
}

/// @nodoc
class _$BoiDetailStateTearOff {
  const _$BoiDetailStateTearOff();

// ignore: unused_element
  _BoiDetailState call(
      {@required Boi boi,
      @required bool showErrorMessages,
      @required bool isEditing,
      @required bool isSaving,
      @required Option<Either<BoiFailure, Unit>> saveFailureOrSuccessOption}) {
    return _BoiDetailState(
      boi: boi,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BoiDetailState = _$BoiDetailStateTearOff();

/// @nodoc
mixin _$BoiDetailState {
  Boi get boi;
  bool get showErrorMessages;
  bool get isEditing;
  bool get isSaving;
  Option<Either<BoiFailure, Unit>> get saveFailureOrSuccessOption;

  $BoiDetailStateCopyWith<BoiDetailState> get copyWith;
}

/// @nodoc
abstract class $BoiDetailStateCopyWith<$Res> {
  factory $BoiDetailStateCopyWith(
          BoiDetailState value, $Res Function(BoiDetailState) then) =
      _$BoiDetailStateCopyWithImpl<$Res>;
  $Res call(
      {Boi boi,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<BoiFailure, Unit>> saveFailureOrSuccessOption});

  $BoiCopyWith<$Res> get boi;
}

/// @nodoc
class _$BoiDetailStateCopyWithImpl<$Res>
    implements $BoiDetailStateCopyWith<$Res> {
  _$BoiDetailStateCopyWithImpl(this._value, this._then);

  final BoiDetailState _value;
  // ignore: unused_field
  final $Res Function(BoiDetailState) _then;

  @override
  $Res call({
    Object boi = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      boi: boi == freezed ? _value.boi : boi as Boi,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<BoiFailure, Unit>>,
    ));
  }

  @override
  $BoiCopyWith<$Res> get boi {
    if (_value.boi == null) {
      return null;
    }
    return $BoiCopyWith<$Res>(_value.boi, (value) {
      return _then(_value.copyWith(boi: value));
    });
  }
}

/// @nodoc
abstract class _$BoiDetailStateCopyWith<$Res>
    implements $BoiDetailStateCopyWith<$Res> {
  factory _$BoiDetailStateCopyWith(
          _BoiDetailState value, $Res Function(_BoiDetailState) then) =
      __$BoiDetailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Boi boi,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<BoiFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $BoiCopyWith<$Res> get boi;
}

/// @nodoc
class __$BoiDetailStateCopyWithImpl<$Res>
    extends _$BoiDetailStateCopyWithImpl<$Res>
    implements _$BoiDetailStateCopyWith<$Res> {
  __$BoiDetailStateCopyWithImpl(
      _BoiDetailState _value, $Res Function(_BoiDetailState) _then)
      : super(_value, (v) => _then(v as _BoiDetailState));

  @override
  _BoiDetailState get _value => super._value as _BoiDetailState;

  @override
  $Res call({
    Object boi = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_BoiDetailState(
      boi: boi == freezed ? _value.boi : boi as Boi,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<BoiFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_BoiDetailState implements _BoiDetailState {
  const _$_BoiDetailState(
      {@required this.boi,
      @required this.showErrorMessages,
      @required this.isEditing,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption})
      : assert(boi != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final Boi boi;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<BoiFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'BoiDetailState(boi: $boi, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BoiDetailState &&
            (identical(other.boi, boi) ||
                const DeepCollectionEquality().equals(other.boi, boi)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(boi) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$BoiDetailStateCopyWith<_BoiDetailState> get copyWith =>
      __$BoiDetailStateCopyWithImpl<_BoiDetailState>(this, _$identity);
}

abstract class _BoiDetailState implements BoiDetailState {
  const factory _BoiDetailState(
          {@required
              Boi boi,
          @required
              bool showErrorMessages,
          @required
              bool isEditing,
          @required
              bool isSaving,
          @required
              Option<Either<BoiFailure, Unit>> saveFailureOrSuccessOption}) =
      _$_BoiDetailState;

  @override
  Boi get boi;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<BoiFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  _$BoiDetailStateCopyWith<_BoiDetailState> get copyWith;
}
