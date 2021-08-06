import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'animated_switcher_test.freezed.dart';

final yesUniqueKey = UniqueKey();
final noUniqueKey = UniqueKey();
final errorUniqueKey = UniqueKey();

final toYesKey = UniqueKey();
final toNoKey = UniqueKey();
final toErrorKey = UniqueKey();

@freezed
class CanNotify with _$CanNotify {
  const factory CanNotify.yes() = _YesCanNotify;
  const factory CanNotify.no() = _CannNotify;
  const factory CanNotify.error() = _CannNotifyError;
}

class CanNotifyStore with ChangeNotifier {
  CanNotify _canNotify = CanNotify.no();
  CanNotify get state => _canNotify;

  void get toYes => setAndNotify(CanNotify.yes());
  void get toNo => setAndNotify(CanNotify.no());
  void get toError => setAndNotify(CanNotify.error());

  void setAndNotify(CanNotify newState) {
    _canNotify = newState;
    notifyListeners();
  }
}
