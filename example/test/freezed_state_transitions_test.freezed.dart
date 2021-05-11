// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'freezed_state_transitions_test.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$_CanNotifyTearOff {
  const _$_CanNotifyTearOff();

// ignore: unused_element
  _YesCanNotify yes() {
    return const _YesCanNotify();
  }

// ignore: unused_element
  _CannNotify no() {
    return const _CannNotify();
  }

// ignore: unused_element
  _CannNotifyError error() {
    return const _CannNotifyError();
  }
}

/// @nodoc
// ignore: unused_element
const _$CanNotify = _$_CanNotifyTearOff();

/// @nodoc
mixin _$_CanNotify {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult yes(),
    @required TResult no(),
    @required TResult error(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult yes(),
    TResult no(),
    TResult error(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult yes(_YesCanNotify value),
    @required TResult no(_CannNotify value),
    @required TResult error(_CannNotifyError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult yes(_YesCanNotify value),
    TResult no(_CannNotify value),
    TResult error(_CannNotifyError value),
    @required TResult orElse(),
  });
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
  TResult when<TResult extends Object>({
    @required TResult yes(),
    @required TResult no(),
    @required TResult error(),
  }) {
    assert(yes != null);
    assert(no != null);
    assert(error != null);
    return yes();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult yes(),
    TResult no(),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (yes != null) {
      return yes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult yes(_YesCanNotify value),
    @required TResult no(_CannNotify value),
    @required TResult error(_CannNotifyError value),
  }) {
    assert(yes != null);
    assert(no != null);
    assert(error != null);
    return yes(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult yes(_YesCanNotify value),
    TResult no(_CannNotify value),
    TResult error(_CannNotifyError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
  TResult when<TResult extends Object>({
    @required TResult yes(),
    @required TResult no(),
    @required TResult error(),
  }) {
    assert(yes != null);
    assert(no != null);
    assert(error != null);
    return no();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult yes(),
    TResult no(),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (no != null) {
      return no();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult yes(_YesCanNotify value),
    @required TResult no(_CannNotify value),
    @required TResult error(_CannNotifyError value),
  }) {
    assert(yes != null);
    assert(no != null);
    assert(error != null);
    return no(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult yes(_YesCanNotify value),
    TResult no(_CannNotify value),
    TResult error(_CannNotifyError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
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
  TResult when<TResult extends Object>({
    @required TResult yes(),
    @required TResult no(),
    @required TResult error(),
  }) {
    assert(yes != null);
    assert(no != null);
    assert(error != null);
    return error();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult yes(),
    TResult no(),
    TResult error(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult yes(_YesCanNotify value),
    @required TResult no(_CannNotify value),
    @required TResult error(_CannNotifyError value),
  }) {
    assert(yes != null);
    assert(no != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult yes(_YesCanNotify value),
    TResult no(_CannNotify value),
    TResult error(_CannNotifyError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CannNotifyError implements _CanNotify {
  const factory _CannNotifyError() = _$_CannNotifyError;
}
