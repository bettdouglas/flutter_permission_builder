import 'package:flutter/foundation.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:permission_builder/src/permission_states.dart';
import 'package:permission_builder/src/permission_states.dart';

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


  /// Used internally to manage state of the permission.
  /// if lazy is false, it automatically requests permission when created
  /// otherwise waits for request to be made
  PermissionProvider(this.permission,bool lazy) {
    if(!lazy) {
      _init();
    }
  }

  _init() async {
    final permissionStatus = await permission.request();
    if(permissionStatus.isGranted) {
      _permissionState = PermissionState.granted();
    } else if(permissionStatus.isDenied) {
      _permissionState = PermissionState.denied();
    } else if(permissionStatus.isPermanentlyDenied) {
      _permissionState = PermissionState.permanentlyDenied();
    } else if(permissionStatus.isRestricted) {
      _permissionState = PermissionState.restricted();
    } else if(permissionStatus.isUndetermined) {
      _permissionState = PermissionState.initial();
    }
    notifyListeners();
  }

  /// Function to requst for permission
  Function get request => _init;

  /// Function that opens app settings 
  Future get openSettings => openAppSettings();

}