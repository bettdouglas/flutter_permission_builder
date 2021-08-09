import 'package:flutter/foundation.dart';
import 'package:permission_builder/src/permission_service.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:permission_builder/src/permission_states.dart';

/// Service that request for permissions in defaultpermissionprovider
// final permissionsService = PermissionsService();

///Handles state of the permissions
class PermissionProvider<T> with ChangeNotifier {
  /// The permission you need to request
  /// ```
  ///   PermissionBuilder(
  ///          permission: Permission.location,
  ///      ```
  final Permission permission;

  PermissionState<T> _permissionState = PermissionState.initial();

  /// Exposes the current state of the permission
  PermissionState<T> get state => _permissionState;

  /// the service that asks for permission. Not using extension methods
  /// to get testing
  PermissionService permissionsService;

  /// Used internally to manage state of the permission.
  /// if lazy is false, it automatically requests permission when created
  /// otherwise waits for request to be made
  PermissionProvider(
    this.permission,
    this.permissionsService,
    bool lazy,
  ) {
    if (!lazy) {
      request;
    }
  }

  Future _init() async {
    _permissionState = PermissionState.requesting();
    notifyListeners();
    final permissionStatus = await permissionsService.request(permission);
    if (permissionStatus.isGranted) {
      _permissionState = PermissionState.granted();
    } else if (permissionStatus.isDenied) {
      _permissionState = PermissionState.denied();
    } else if (permissionStatus.isPermanentlyDenied) {
      _permissionState = PermissionState.permanentlyDenied();
    } else if (permissionStatus.isRestricted) {
      _permissionState = PermissionState.restricted();
    }
    notifyListeners();
  }

  /// Function to requst for permission
  Future get request async => await _init();

  /// Function that opens app settings
  Future<bool> get openSettings => openAppSettings();
}
