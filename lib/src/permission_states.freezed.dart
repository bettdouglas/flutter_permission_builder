// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'permission_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PermissionStateTearOff {
  const _$PermissionStateTearOff();

  PermissionInitial<T> initial<T>() {
    return PermissionInitial<T>();
  }

  PermissionRequesting<T> requesting<T>() {
    return PermissionRequesting<T>();
  }

  PermissionGranted<T> granted<T>() {
    return PermissionGranted<T>();
  }

  PermissionDenied<T> denied<T>() {
    return PermissionDenied<T>();
  }

  PermissionRestricted<T> restricted<T>() {
    return PermissionRestricted<T>();
  }

  PermissionPermanentlyDenied<T> permanentlyDenied<T>() {
    return PermissionPermanentlyDenied<T>();
  }
}

/// @nodoc
const $PermissionState = _$PermissionStateTearOff();

/// @nodoc
mixin _$PermissionState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requesting,
    required TResult Function() granted,
    required TResult Function() denied,
    required TResult Function() restricted,
    required TResult Function() permanentlyDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requesting,
    TResult Function()? granted,
    TResult Function()? denied,
    TResult Function()? restricted,
    TResult Function()? permanentlyDenied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionInitial<T> value) initial,
    required TResult Function(PermissionRequesting<T> value) requesting,
    required TResult Function(PermissionGranted<T> value) granted,
    required TResult Function(PermissionDenied<T> value) denied,
    required TResult Function(PermissionRestricted<T> value) restricted,
    required TResult Function(PermissionPermanentlyDenied<T> value)
        permanentlyDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionInitial<T> value)? initial,
    TResult Function(PermissionRequesting<T> value)? requesting,
    TResult Function(PermissionGranted<T> value)? granted,
    TResult Function(PermissionDenied<T> value)? denied,
    TResult Function(PermissionRestricted<T> value)? restricted,
    TResult Function(PermissionPermanentlyDenied<T> value)? permanentlyDenied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requesting,
    required TResult Function() granted,
    required TResult Function() denied,
    required TResult Function() restricted,
    required TResult Function() permanentlyDenied,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requesting,
    TResult Function()? granted,
    TResult Function()? denied,
    TResult Function()? restricted,
    TResult Function()? permanentlyDenied,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionInitial<T> value) initial,
    required TResult Function(PermissionRequesting<T> value) requesting,
    required TResult Function(PermissionGranted<T> value) granted,
    required TResult Function(PermissionDenied<T> value) denied,
    required TResult Function(PermissionRestricted<T> value) restricted,
    required TResult Function(PermissionPermanentlyDenied<T> value)
        permanentlyDenied,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionInitial<T> value)? initial,
    TResult Function(PermissionRequesting<T> value)? requesting,
    TResult Function(PermissionGranted<T> value)? granted,
    TResult Function(PermissionDenied<T> value)? denied,
    TResult Function(PermissionRestricted<T> value)? restricted,
    TResult Function(PermissionPermanentlyDenied<T> value)? permanentlyDenied,
    required TResult orElse(),
  }) {
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requesting,
    required TResult Function() granted,
    required TResult Function() denied,
    required TResult Function() restricted,
    required TResult Function() permanentlyDenied,
  }) {
    return requesting();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requesting,
    TResult Function()? granted,
    TResult Function()? denied,
    TResult Function()? restricted,
    TResult Function()? permanentlyDenied,
    required TResult orElse(),
  }) {
    if (requesting != null) {
      return requesting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionInitial<T> value) initial,
    required TResult Function(PermissionRequesting<T> value) requesting,
    required TResult Function(PermissionGranted<T> value) granted,
    required TResult Function(PermissionDenied<T> value) denied,
    required TResult Function(PermissionRestricted<T> value) restricted,
    required TResult Function(PermissionPermanentlyDenied<T> value)
        permanentlyDenied,
  }) {
    return requesting(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionInitial<T> value)? initial,
    TResult Function(PermissionRequesting<T> value)? requesting,
    TResult Function(PermissionGranted<T> value)? granted,
    TResult Function(PermissionDenied<T> value)? denied,
    TResult Function(PermissionRestricted<T> value)? restricted,
    TResult Function(PermissionPermanentlyDenied<T> value)? permanentlyDenied,
    required TResult orElse(),
  }) {
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requesting,
    required TResult Function() granted,
    required TResult Function() denied,
    required TResult Function() restricted,
    required TResult Function() permanentlyDenied,
  }) {
    return granted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requesting,
    TResult Function()? granted,
    TResult Function()? denied,
    TResult Function()? restricted,
    TResult Function()? permanentlyDenied,
    required TResult orElse(),
  }) {
    if (granted != null) {
      return granted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionInitial<T> value) initial,
    required TResult Function(PermissionRequesting<T> value) requesting,
    required TResult Function(PermissionGranted<T> value) granted,
    required TResult Function(PermissionDenied<T> value) denied,
    required TResult Function(PermissionRestricted<T> value) restricted,
    required TResult Function(PermissionPermanentlyDenied<T> value)
        permanentlyDenied,
  }) {
    return granted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionInitial<T> value)? initial,
    TResult Function(PermissionRequesting<T> value)? requesting,
    TResult Function(PermissionGranted<T> value)? granted,
    TResult Function(PermissionDenied<T> value)? denied,
    TResult Function(PermissionRestricted<T> value)? restricted,
    TResult Function(PermissionPermanentlyDenied<T> value)? permanentlyDenied,
    required TResult orElse(),
  }) {
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requesting,
    required TResult Function() granted,
    required TResult Function() denied,
    required TResult Function() restricted,
    required TResult Function() permanentlyDenied,
  }) {
    return denied();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requesting,
    TResult Function()? granted,
    TResult Function()? denied,
    TResult Function()? restricted,
    TResult Function()? permanentlyDenied,
    required TResult orElse(),
  }) {
    if (denied != null) {
      return denied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionInitial<T> value) initial,
    required TResult Function(PermissionRequesting<T> value) requesting,
    required TResult Function(PermissionGranted<T> value) granted,
    required TResult Function(PermissionDenied<T> value) denied,
    required TResult Function(PermissionRestricted<T> value) restricted,
    required TResult Function(PermissionPermanentlyDenied<T> value)
        permanentlyDenied,
  }) {
    return denied(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionInitial<T> value)? initial,
    TResult Function(PermissionRequesting<T> value)? requesting,
    TResult Function(PermissionGranted<T> value)? granted,
    TResult Function(PermissionDenied<T> value)? denied,
    TResult Function(PermissionRestricted<T> value)? restricted,
    TResult Function(PermissionPermanentlyDenied<T> value)? permanentlyDenied,
    required TResult orElse(),
  }) {
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requesting,
    required TResult Function() granted,
    required TResult Function() denied,
    required TResult Function() restricted,
    required TResult Function() permanentlyDenied,
  }) {
    return restricted();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requesting,
    TResult Function()? granted,
    TResult Function()? denied,
    TResult Function()? restricted,
    TResult Function()? permanentlyDenied,
    required TResult orElse(),
  }) {
    if (restricted != null) {
      return restricted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionInitial<T> value) initial,
    required TResult Function(PermissionRequesting<T> value) requesting,
    required TResult Function(PermissionGranted<T> value) granted,
    required TResult Function(PermissionDenied<T> value) denied,
    required TResult Function(PermissionRestricted<T> value) restricted,
    required TResult Function(PermissionPermanentlyDenied<T> value)
        permanentlyDenied,
  }) {
    return restricted(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionInitial<T> value)? initial,
    TResult Function(PermissionRequesting<T> value)? requesting,
    TResult Function(PermissionGranted<T> value)? granted,
    TResult Function(PermissionDenied<T> value)? denied,
    TResult Function(PermissionRestricted<T> value)? restricted,
    TResult Function(PermissionPermanentlyDenied<T> value)? permanentlyDenied,
    required TResult orElse(),
  }) {
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
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() requesting,
    required TResult Function() granted,
    required TResult Function() denied,
    required TResult Function() restricted,
    required TResult Function() permanentlyDenied,
  }) {
    return permanentlyDenied();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? requesting,
    TResult Function()? granted,
    TResult Function()? denied,
    TResult Function()? restricted,
    TResult Function()? permanentlyDenied,
    required TResult orElse(),
  }) {
    if (permanentlyDenied != null) {
      return permanentlyDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PermissionInitial<T> value) initial,
    required TResult Function(PermissionRequesting<T> value) requesting,
    required TResult Function(PermissionGranted<T> value) granted,
    required TResult Function(PermissionDenied<T> value) denied,
    required TResult Function(PermissionRestricted<T> value) restricted,
    required TResult Function(PermissionPermanentlyDenied<T> value)
        permanentlyDenied,
  }) {
    return permanentlyDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PermissionInitial<T> value)? initial,
    TResult Function(PermissionRequesting<T> value)? requesting,
    TResult Function(PermissionGranted<T> value)? granted,
    TResult Function(PermissionDenied<T> value)? denied,
    TResult Function(PermissionRestricted<T> value)? restricted,
    TResult Function(PermissionPermanentlyDenied<T> value)? permanentlyDenied,
    required TResult orElse(),
  }) {
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
