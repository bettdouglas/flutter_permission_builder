// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'freezed_state_transitions_test.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$_CanNotifyTearOff {
  const _$_CanNotifyTearOff();

  _YesCanNotify yes() {
    return const _YesCanNotify();
  }

  _CannNotify no() {
    return const _CannNotify();
  }

  _CannNotifyError error() {
    return const _CannNotifyError();
  }
}

/// @nodoc
const _$CanNotify = _$_CanNotifyTearOff();

/// @nodoc
mixin _$_CanNotify {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() yes,
    required TResult Function() no,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? yes,
    TResult Function()? no,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_YesCanNotify value) yes,
    required TResult Function(_CannNotify value) no,
    required TResult Function(_CannNotifyError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_YesCanNotify value)? yes,
    TResult Function(_CannNotify value)? no,
    TResult Function(_CannNotifyError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CanNotifyCopyWith<$Res> {
  factory _$CanNotifyCopyWith(
          _CanNotify value, $Res Function(_CanNotify) then) =
      __$CanNotifyCopyWithImpl<$Res>;
}

/// @nodoc
class __$CanNotifyCopyWithImpl<$Res> implements _$CanNotifyCopyWith<$Res> {
  __$CanNotifyCopyWithImpl(this._value, this._then);

  final _CanNotify _value;
  // ignore: unused_field
  final $Res Function(_CanNotify) _then;
}

/// @nodoc
abstract class _$YesCanNotifyCopyWith<$Res> {
  factory _$YesCanNotifyCopyWith(
          _YesCanNotify value, $Res Function(_YesCanNotify) then) =
      __$YesCanNotifyCopyWithImpl<$Res>;
}

/// @nodoc
class __$YesCanNotifyCopyWithImpl<$Res> extends __$CanNotifyCopyWithImpl<$Res>
    implements _$YesCanNotifyCopyWith<$Res> {
  __$YesCanNotifyCopyWithImpl(
      _YesCanNotify _value, $Res Function(_YesCanNotify) _then)
      : super(_value, (v) => _then(v as _YesCanNotify));

  @override
  _YesCanNotify get _value => super._value as _YesCanNotify;
}

/// @nodoc

class _$_YesCanNotify with DiagnosticableTreeMixin implements _YesCanNotify {
  const _$_YesCanNotify();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return '_CanNotify.yes()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', '_CanNotify.yes'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _YesCanNotify);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() yes,
    required TResult Function() no,
    required TResult Function() error,
  }) {
    return yes();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? yes,
    TResult Function()? no,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (yes != null) {
      return yes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_YesCanNotify value) yes,
    required TResult Function(_CannNotify value) no,
    required TResult Function(_CannNotifyError value) error,
  }) {
    return yes(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_YesCanNotify value)? yes,
    TResult Function(_CannNotify value)? no,
    TResult Function(_CannNotifyError value)? error,
    required TResult orElse(),
  }) {
    if (yes != null) {
      return yes(this);
    }
    return orElse();
  }
}

abstract class _YesCanNotify implements _CanNotify {
  const factory _YesCanNotify() = _$_YesCanNotify;
}

/// @nodoc
abstract class _$CannNotifyCopyWith<$Res> {
  factory _$CannNotifyCopyWith(
          _CannNotify value, $Res Function(_CannNotify) then) =
      __$CannNotifyCopyWithImpl<$Res>;
}

/// @nodoc
class __$CannNotifyCopyWithImpl<$Res> extends __$CanNotifyCopyWithImpl<$Res>
    implements _$CannNotifyCopyWith<$Res> {
  __$CannNotifyCopyWithImpl(
      _CannNotify _value, $Res Function(_CannNotify) _then)
      : super(_value, (v) => _then(v as _CannNotify));

  @override
  _CannNotify get _value => super._value as _CannNotify;
}

/// @nodoc

class _$_CannNotify with DiagnosticableTreeMixin implements _CannNotify {
  const _$_CannNotify();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return '_CanNotify.no()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', '_CanNotify.no'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CannNotify);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() yes,
    required TResult Function() no,
    required TResult Function() error,
  }) {
    return no();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? yes,
    TResult Function()? no,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (no != null) {
      return no();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_YesCanNotify value) yes,
    required TResult Function(_CannNotify value) no,
    required TResult Function(_CannNotifyError value) error,
  }) {
    return no(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_YesCanNotify value)? yes,
    TResult Function(_CannNotify value)? no,
    TResult Function(_CannNotifyError value)? error,
    required TResult orElse(),
  }) {
    if (no != null) {
      return no(this);
    }
    return orElse();
  }
}

abstract class _CannNotify implements _CanNotify {
  const factory _CannNotify() = _$_CannNotify;
}

/// @nodoc
abstract class _$CannNotifyErrorCopyWith<$Res> {
  factory _$CannNotifyErrorCopyWith(
          _CannNotifyError value, $Res Function(_CannNotifyError) then) =
      __$CannNotifyErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$CannNotifyErrorCopyWithImpl<$Res>
    extends __$CanNotifyCopyWithImpl<$Res>
    implements _$CannNotifyErrorCopyWith<$Res> {
  __$CannNotifyErrorCopyWithImpl(
      _CannNotifyError _value, $Res Function(_CannNotifyError) _then)
      : super(_value, (v) => _then(v as _CannNotifyError));

  @override
  _CannNotifyError get _value => super._value as _CannNotifyError;
}

/// @nodoc

class _$_CannNotifyError
    with DiagnosticableTreeMixin
    implements _CannNotifyError {
  const _$_CannNotifyError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return '_CanNotify.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', '_CanNotify.error'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CannNotifyError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() yes,
    required TResult Function() no,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? yes,
    TResult Function()? no,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_YesCanNotify value) yes,
    required TResult Function(_CannNotify value) no,
    required TResult Function(_CannNotifyError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_YesCanNotify value)? yes,
    TResult Function(_CannNotify value)? no,
    TResult Function(_CannNotifyError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CannNotifyError implements _CanNotify {
  const factory _CannNotifyError() = _$_CannNotifyError;
}
