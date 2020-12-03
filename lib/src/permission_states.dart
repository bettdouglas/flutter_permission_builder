import 'package:freezed_annotation/freezed_annotation.dart';

part 'permission_states.freezed.dart';

@freezed
/// Models the various states of the permission using freezed union types
abstract class PermissionState<T> with _$PermissionState<T> {
  /// We didn't ask for permission yet.
  const factory PermissionState.initial() = PermissionInitial;

  /// Permission requested. Awaiting for user input. Will rebuild after user input
  const factory PermissionState.requesting() = PermissionRequesting;

  /// User has granted us permission
  const factory PermissionState.granted() = PermissionGranted;

  /// User denied the permission once
  const factory PermissionState.denied() = PermissionDenied;

  /// The OS restricts access, for example because of parental controls
  const factory PermissionState.restricted() = PermissionRestricted;

  /// The user opted to never again see the permission request dialog for this app.
  const factory PermissionState.permanentlyDenied() = PermissionPermanentlyDenied;
}