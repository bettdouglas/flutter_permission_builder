import 'package:flutter/foundation.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:permissive_builder/src/permission_states.dart';

class PermissionProvider<T> with ChangeNotifier {

  final Permission permission;

  PermissionState<T> _permissionState = PermissionState.initial();

  PermissionState<T> get state => _permissionState;

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

  Function get request => _init;

  Future get openSettings => openAppSettings();

}