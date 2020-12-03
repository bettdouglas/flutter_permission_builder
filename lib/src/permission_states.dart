import 'package:freezed_annotation/freezed_annotation.dart';

part 'permission_states.freezed.dart';

@freezed
abstract class PermissionState<T> with _$PermissionState<T> {
  const factory PermissionState.initial() = PermissionInitial;
  const factory PermissionState.requesting() = PermissionRequesting;
  const factory PermissionState.granted() = PermissionGranted;
  const factory PermissionState.denied() = PermissionDenied;
  const factory PermissionState.restricted() = PermissionRestricted;
  const factory PermissionState.permanentlyDenied() = PermissionPermanentlyDenied;
}