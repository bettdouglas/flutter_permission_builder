import 'package:permission_handler/permission_handler.dart';
import 'package:permission_handler/permission_handler.dart' as permissionHandler
    show openAppSettings;

/// Service to handle requesting of permissions.
/// Using extension methods disables testing
class PermissionsService {
  /// Check the status of a specific [Permission]
  Future<PermissionStatus> status(Permission permission) {
    return permission.status;
  }

  /// Open the app settings.
  Future<bool> openAppSettings() {
    return permissionHandler.openAppSettings();
  }

  /// Request permissions for a single permission.
  Future<PermissionStatus> request(Permission permission) {
    return permission.request();
  }
}
