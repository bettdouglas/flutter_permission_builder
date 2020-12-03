// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies,public_member_api_docs

part of 'permission_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// T _$identity<T>(T value) => value;

/// @nodoc
class _$PermissionStateTearOff {
  const _$PermissionStateTearOff();

// ignore: unused_element
  PermissionInitial<T> initial<T>() {
    return PermissionInitial<T>();
  }

// ignore: unused_element
  PermissionRequesting<T> requesting<T>() {
    return PermissionRequesting<T>();
  }

// ignore: unused_element
  PermissionGranted<T> granted<T>() {
    return PermissionGranted<T>();
  }

// ignore: unused_element
  PermissionDenied<T> denied<T>() {
    return PermissionDenied<T>();
  }

// ignore: unused_element
  PermissionRestricted<T> restricted<T>() {
    return PermissionRestricted<T>();
  }

// ignore: unused_element
  PermissionPermanentlyDenied<T> permanentlyDenied<T>() {
    return PermissionPermanentlyDenied<T>();
  }
}

/// @nodoc
// ignore: unused_element
const $PermissionState = _$PermissionStateTearOff();

/// @nodoc
mixin _$PermissionState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult requesting(),
    @required TResult granted(),
    @required TResult denied(),
    @required TResult restricted(),
    @required TResult permanentlyDenied(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult requesting(),
    TResult granted(),
    TResult denied(),
    TResult restricted(),
    TResult permanentlyDenied(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(PermissionInitial<T> value),
    @required TResult requesting(PermissionRequesting<T> value),
    @required TResult granted(PermissionGranted<T> value),
    @required TResult denied(PermissionDenied<T> value),
    @required TResult restricted(PermissionRestricted<T> value),
    @required TResult permanentlyDenied(PermissionPermanentlyDenied<T> value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(PermissionInitial<T> value),
    TResult requesting(PermissionRequesting<T> value),
    TResult granted(PermissionGranted<T> value),
    TResult denied(PermissionDenied<T> value),
    TResult restricted(PermissionRestricted<T> value),
    TResult permanentlyDenied(PermissionPermanentlyDenied<T> value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $PermissionStateCopyWith<T, $Res> {
  factory $PermissionStateCopyWith(
          PermissionState<T> value, $Res Function(PermissionState<T>) then) =
      _$PermissionStateCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$PermissionStateCopyWithImpl<T, $Res>
    implements $PermissionStateCopyWith<T, $Res> {
  _$PermissionStateCopyWithImpl(this._value, this._then);

  final PermissionState<T> _value;
  // ignore: unused_field
  final $Res Function(PermissionState<T>) _then;
}

/// @nodoc
abstract class $PermissionInitialCopyWith<T, $Res> {
  factory $PermissionInitialCopyWith(PermissionInitial<T> value,
          $Res Function(PermissionInitial<T>) then) =
      _$PermissionInitialCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$PermissionInitialCopyWithImpl<T, $Res>
    extends _$PermissionStateCopyWithImpl<T, $Res>
    implements $PermissionInitialCopyWith<T, $Res> {
  _$PermissionInitialCopyWithImpl(
      PermissionInitial<T> _value, $Res Function(PermissionInitial<T>) _then)
      : super(_value, (v) => _then(v as PermissionInitial<T>));

  @override
  PermissionInitial<T> get _value => super._value as PermissionInitial<T>;
}

/// @nodoc
class _$PermissionInitial<T> implements PermissionInitial<T> {
  const _$PermissionInitial();

  @override
  String toString() {
    return 'PermissionState<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PermissionInitial<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult requesting(),
    @required TResult granted(),
    @required TResult denied(),
    @required TResult restricted(),
    @required TResult permanentlyDenied(),
  }) {
    assert(initial != null);
    assert(requesting != null);
    assert(granted != null);
    assert(denied != null);
    assert(restricted != null);
    assert(permanentlyDenied != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult requesting(),
    TResult granted(),
    TResult denied(),
    TResult restricted(),
    TResult permanentlyDenied(),
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
    @required TResult initial(PermissionInitial<T> value),
    @required TResult requesting(PermissionRequesting<T> value),
    @required TResult granted(PermissionGranted<T> value),
    @required TResult denied(PermissionDenied<T> value),
    @required TResult restricted(PermissionRestricted<T> value),
    @required TResult permanentlyDenied(PermissionPermanentlyDenied<T> value),
  }) {
    assert(initial != null);
    assert(requesting != null);
    assert(granted != null);
    assert(denied != null);
    assert(restricted != null);
    assert(permanentlyDenied != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(PermissionInitial<T> value),
    TResult requesting(PermissionRequesting<T> value),
    TResult granted(PermissionGranted<T> value),
    TResult denied(PermissionDenied<T> value),
    TResult restricted(PermissionRestricted<T> value),
    TResult permanentlyDenied(PermissionPermanentlyDenied<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PermissionInitial<T> implements PermissionState<T> {
  const factory PermissionInitial() = _$PermissionInitial<T>;
}

/// @nodoc
abstract class $PermissionRequestingCopyWith<T, $Res> {
  factory $PermissionRequestingCopyWith(PermissionRequesting<T> value,
          $Res Function(PermissionRequesting<T>) then) =
      _$PermissionRequestingCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$PermissionRequestingCopyWithImpl<T, $Res>
    extends _$PermissionStateCopyWithImpl<T, $Res>
    implements $PermissionRequestingCopyWith<T, $Res> {
  _$PermissionRequestingCopyWithImpl(PermissionRequesting<T> _value,
      $Res Function(PermissionRequesting<T>) _then)
      : super(_value, (v) => _then(v as PermissionRequesting<T>));

  @override
  PermissionRequesting<T> get _value => super._value as PermissionRequesting<T>;
}

/// @nodoc
class _$PermissionRequesting<T> implements PermissionRequesting<T> {
  const _$PermissionRequesting();

  @override
  String toString() {
    return 'PermissionState<$T>.requesting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PermissionRequesting<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult requesting(),
    @required TResult granted(),
    @required TResult denied(),
    @required TResult restricted(),
    @required TResult permanentlyDenied(),
  }) {
    assert(initial != null);
    assert(requesting != null);
    assert(granted != null);
    assert(denied != null);
    assert(restricted != null);
    assert(permanentlyDenied != null);
    return requesting();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult requesting(),
    TResult granted(),
    TResult denied(),
    TResult restricted(),
    TResult permanentlyDenied(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (requesting != null) {
      return requesting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(PermissionInitial<T> value),
    @required TResult requesting(PermissionRequesting<T> value),
    @required TResult granted(PermissionGranted<T> value),
    @required TResult denied(PermissionDenied<T> value),
    @required TResult restricted(PermissionRestricted<T> value),
    @required TResult permanentlyDenied(PermissionPermanentlyDenied<T> value),
  }) {
    assert(initial != null);
    assert(requesting != null);
    assert(granted != null);
    assert(denied != null);
    assert(restricted != null);
    assert(permanentlyDenied != null);
    return requesting(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(PermissionInitial<T> value),
    TResult requesting(PermissionRequesting<T> value),
    TResult granted(PermissionGranted<T> value),
    TResult denied(PermissionDenied<T> value),
    TResult restricted(PermissionRestricted<T> value),
    TResult permanentlyDenied(PermissionPermanentlyDenied<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (requesting != null) {
      return requesting(this);
    }
    return orElse();
  }
}

abstract class PermissionRequesting<T> implements PermissionState<T> {
  const factory PermissionRequesting() = _$PermissionRequesting<T>;
}

/// @nodoc
abstract class $PermissionGrantedCopyWith<T, $Res> {
  factory $PermissionGrantedCopyWith(PermissionGranted<T> value,
          $Res Function(PermissionGranted<T>) then) =
      _$PermissionGrantedCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$PermissionGrantedCopyWithImpl<T, $Res>
    extends _$PermissionStateCopyWithImpl<T, $Res>
    implements $PermissionGrantedCopyWith<T, $Res> {
  _$PermissionGrantedCopyWithImpl(
      PermissionGranted<T> _value, $Res Function(PermissionGranted<T>) _then)
      : super(_value, (v) => _then(v as PermissionGranted<T>));

  @override
  PermissionGranted<T> get _value => super._value as PermissionGranted<T>;
}

/// @nodoc
class _$PermissionGranted<T> implements PermissionGranted<T> {
  const _$PermissionGranted();

  @override
  String toString() {
    return 'PermissionState<$T>.granted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PermissionGranted<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult requesting(),
    @required TResult granted(),
    @required TResult denied(),
    @required TResult restricted(),
    @required TResult permanentlyDenied(),
  }) {
    assert(initial != null);
    assert(requesting != null);
    assert(granted != null);
    assert(denied != null);
    assert(restricted != null);
    assert(permanentlyDenied != null);
    return granted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult requesting(),
    TResult granted(),
    TResult denied(),
    TResult restricted(),
    TResult permanentlyDenied(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (granted != null) {
      return granted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(PermissionInitial<T> value),
    @required TResult requesting(PermissionRequesting<T> value),
    @required TResult granted(PermissionGranted<T> value),
    @required TResult denied(PermissionDenied<T> value),
    @required TResult restricted(PermissionRestricted<T> value),
    @required TResult permanentlyDenied(PermissionPermanentlyDenied<T> value),
  }) {
    assert(initial != null);
    assert(requesting != null);
    assert(granted != null);
    assert(denied != null);
    assert(restricted != null);
    assert(permanentlyDenied != null);
    return granted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(PermissionInitial<T> value),
    TResult requesting(PermissionRequesting<T> value),
    TResult granted(PermissionGranted<T> value),
    TResult denied(PermissionDenied<T> value),
    TResult restricted(PermissionRestricted<T> value),
    TResult permanentlyDenied(PermissionPermanentlyDenied<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (granted != null) {
      return granted(this);
    }
    return orElse();
  }
}

abstract class PermissionGranted<T> implements PermissionState<T> {
  const factory PermissionGranted() = _$PermissionGranted<T>;
}

/// @nodoc
abstract class $PermissionDeniedCopyWith<T, $Res> {
  factory $PermissionDeniedCopyWith(
          PermissionDenied<T> value, $Res Function(PermissionDenied<T>) then) =
      _$PermissionDeniedCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$PermissionDeniedCopyWithImpl<T, $Res>
    extends _$PermissionStateCopyWithImpl<T, $Res>
    implements $PermissionDeniedCopyWith<T, $Res> {
  _$PermissionDeniedCopyWithImpl(
      PermissionDenied<T> _value, $Res Function(PermissionDenied<T>) _then)
      : super(_value, (v) => _then(v as PermissionDenied<T>));

  @override
  PermissionDenied<T> get _value => super._value as PermissionDenied<T>;
}

/// @nodoc
class _$PermissionDenied<T> implements PermissionDenied<T> {
  const _$PermissionDenied();

  @override
  String toString() {
    return 'PermissionState<$T>.denied()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PermissionDenied<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult requesting(),
    @required TResult granted(),
    @required TResult denied(),
    @required TResult restricted(),
    @required TResult permanentlyDenied(),
  }) {
    assert(initial != null);
    assert(requesting != null);
    assert(granted != null);
    assert(denied != null);
    assert(restricted != null);
    assert(permanentlyDenied != null);
    return denied();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult requesting(),
    TResult granted(),
    TResult denied(),
    TResult restricted(),
    TResult permanentlyDenied(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (denied != null) {
      return denied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(PermissionInitial<T> value),
    @required TResult requesting(PermissionRequesting<T> value),
    @required TResult granted(PermissionGranted<T> value),
    @required TResult denied(PermissionDenied<T> value),
    @required TResult restricted(PermissionRestricted<T> value),
    @required TResult permanentlyDenied(PermissionPermanentlyDenied<T> value),
  }) {
    assert(initial != null);
    assert(requesting != null);
    assert(granted != null);
    assert(denied != null);
    assert(restricted != null);
    assert(permanentlyDenied != null);
    return denied(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(PermissionInitial<T> value),
    TResult requesting(PermissionRequesting<T> value),
    TResult granted(PermissionGranted<T> value),
    TResult denied(PermissionDenied<T> value),
    TResult restricted(PermissionRestricted<T> value),
    TResult permanentlyDenied(PermissionPermanentlyDenied<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (denied != null) {
      return denied(this);
    }
    return orElse();
  }
}

abstract class PermissionDenied<T> implements PermissionState<T> {
  const factory PermissionDenied() = _$PermissionDenied<T>;
}

/// @nodoc
abstract class $PermissionRestrictedCopyWith<T, $Res> {
  factory $PermissionRestrictedCopyWith(PermissionRestricted<T> value,
          $Res Function(PermissionRestricted<T>) then) =
      _$PermissionRestrictedCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$PermissionRestrictedCopyWithImpl<T, $Res>
    extends _$PermissionStateCopyWithImpl<T, $Res>
    implements $PermissionRestrictedCopyWith<T, $Res> {
  _$PermissionRestrictedCopyWithImpl(PermissionRestricted<T> _value,
      $Res Function(PermissionRestricted<T>) _then)
      : super(_value, (v) => _then(v as PermissionRestricted<T>));

  @override
  PermissionRestricted<T> get _value => super._value as PermissionRestricted<T>;
}

/// @nodoc
class _$PermissionRestricted<T> implements PermissionRestricted<T> {
  const _$PermissionRestricted();

  @override
  String toString() {
    return 'PermissionState<$T>.restricted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PermissionRestricted<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult requesting(),
    @required TResult granted(),
    @required TResult denied(),
    @required TResult restricted(),
    @required TResult permanentlyDenied(),
  }) {
    assert(initial != null);
    assert(requesting != null);
    assert(granted != null);
    assert(denied != null);
    assert(restricted != null);
    assert(permanentlyDenied != null);
    return restricted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult requesting(),
    TResult granted(),
    TResult denied(),
    TResult restricted(),
    TResult permanentlyDenied(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (restricted != null) {
      return restricted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(PermissionInitial<T> value),
    @required TResult requesting(PermissionRequesting<T> value),
    @required TResult granted(PermissionGranted<T> value),
    @required TResult denied(PermissionDenied<T> value),
    @required TResult restricted(PermissionRestricted<T> value),
    @required TResult permanentlyDenied(PermissionPermanentlyDenied<T> value),
  }) {
    assert(initial != null);
    assert(requesting != null);
    assert(granted != null);
    assert(denied != null);
    assert(restricted != null);
    assert(permanentlyDenied != null);
    return restricted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(PermissionInitial<T> value),
    TResult requesting(PermissionRequesting<T> value),
    TResult granted(PermissionGranted<T> value),
    TResult denied(PermissionDenied<T> value),
    TResult restricted(PermissionRestricted<T> value),
    TResult permanentlyDenied(PermissionPermanentlyDenied<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (restricted != null) {
      return restricted(this);
    }
    return orElse();
  }
}

abstract class PermissionRestricted<T> implements PermissionState<T> {
  const factory PermissionRestricted() = _$PermissionRestricted<T>;
}

/// @nodoc
abstract class $PermissionPermanentlyDeniedCopyWith<T, $Res> {
  factory $PermissionPermanentlyDeniedCopyWith(
          PermissionPermanentlyDenied<T> value,
          $Res Function(PermissionPermanentlyDenied<T>) then) =
      _$PermissionPermanentlyDeniedCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$PermissionPermanentlyDeniedCopyWithImpl<T, $Res>
    extends _$PermissionStateCopyWithImpl<T, $Res>
    implements $PermissionPermanentlyDeniedCopyWith<T, $Res> {
  _$PermissionPermanentlyDeniedCopyWithImpl(
      PermissionPermanentlyDenied<T> _value,
      $Res Function(PermissionPermanentlyDenied<T>) _then)
      : super(_value, (v) => _then(v as PermissionPermanentlyDenied<T>));

  @override
  PermissionPermanentlyDenied<T> get _value =>
      super._value as PermissionPermanentlyDenied<T>;
}

/// @nodoc
class _$PermissionPermanentlyDenied<T>
    implements PermissionPermanentlyDenied<T> {
  const _$PermissionPermanentlyDenied();

  @override
  String toString() {
    return 'PermissionState<$T>.permanentlyDenied()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PermissionPermanentlyDenied<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
    @required TResult requesting(),
    @required TResult granted(),
    @required TResult denied(),
    @required TResult restricted(),
    @required TResult permanentlyDenied(),
  }) {
    assert(initial != null);
    assert(requesting != null);
    assert(granted != null);
    assert(denied != null);
    assert(restricted != null);
    assert(permanentlyDenied != null);
    return permanentlyDenied();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    TResult requesting(),
    TResult granted(),
    TResult denied(),
    TResult restricted(),
    TResult permanentlyDenied(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (permanentlyDenied != null) {
      return permanentlyDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(PermissionInitial<T> value),
    @required TResult requesting(PermissionRequesting<T> value),
    @required TResult granted(PermissionGranted<T> value),
    @required TResult denied(PermissionDenied<T> value),
    @required TResult restricted(PermissionRestricted<T> value),
    @required TResult permanentlyDenied(PermissionPermanentlyDenied<T> value),
  }) {
    assert(initial != null);
    assert(requesting != null);
    assert(granted != null);
    assert(denied != null);
    assert(restricted != null);
    assert(permanentlyDenied != null);
    return permanentlyDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(PermissionInitial<T> value),
    TResult requesting(PermissionRequesting<T> value),
    TResult granted(PermissionGranted<T> value),
    TResult denied(PermissionDenied<T> value),
    TResult restricted(PermissionRestricted<T> value),
    TResult permanentlyDenied(PermissionPermanentlyDenied<T> value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (permanentlyDenied != null) {
      return permanentlyDenied(this);
    }
    return orElse();
  }
}

abstract class PermissionPermanentlyDenied<T> implements PermissionState<T> {
  const factory PermissionPermanentlyDenied() =
      _$PermissionPermanentlyDenied<T>;
}
