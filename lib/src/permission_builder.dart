import 'package:flutter/material.dart';
import 'package:permission_builder/src/permission_service.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:permission_builder/src/permission_provider.dart';
import 'package:provider/provider.dart';

///
///
///```dart
///class LocationPermissionWidget extends StatelessWidget {
///   @override
///    Widget build(BuildContext context) {
///        return PermissionBuilder(
///            permission: Permission.location, // can be any permission in Permission.
///            // We didn't ask for permission yet.
///            initialBuilder: (_, askPermissionFn) => FirstTimePermissionWidget(),
///            // Permission requested. Awaiting for user input. Will rebuild after user input
///            requestingBuilder: (_) => RequestingPermissionWidget(),
///            // User has granted us permission
///            grantedBuilder: (_) => PermissionGrantedWidget(),
///            // The OS restricts access, for example because of parental controls
///            restrictedBuilder: (_, askPermissionFn) => PermissionRestrictedWidget(),
///            //The user opted to never again see the permission request dialog for this app.
///            permanentlyDeniedBuilder: (_, askPermissionFn, openSettingsFn) => PermanentlyDeniedWidget(
///                requestPermissionFn: askPermissionFn,
///                openSettingsFn: openSettingsFn,
///            ),
///            // User denied the permission once
///            deniedBuilder: (_, askPermissionFn, openSettingsFn) => PermissionDeniedWidget(
///                openSettingsFn: openSettingsFn,
///                requestPermissionFn: askPermissionFn,
///            ),
///        );
///    }
/// }
///
///```
///
class PermissionBuilder extends StatelessWidget {
  /// Which permission to request. e.g location, calenda, camera
  final Permission permission;

  /// handler to request permissions
  late PermissionService _permissionsService;

  /// set to true to wait until user is prompted to grant permission
  /// set to false to immediately request for permission when widget is built
  final bool lazy;

  /// what to build when we haven't asked for permission yet
  final Widget Function(Future request) initialBuilder;

  /// what to build when we have requested for permission and we're waiting for user response
  final Widget requestingBuilder;

  /// what to build when we have been granted for permission
  final Widget grantedBuilder;

  /// What widget to show if the permission is restricted. Maybe by OS restricting access, for example because of parental controls
  final Widget Function(Future request) restrictedBuilder;

  /// what to build when we have been denied permission once
  final Widget Function(Future retry, Future openAppSettings) deniedBuilder;

  /// What to build when the user opted to never again see the permission request dialog for this app.
  final Widget Function(Future retry, Future openAppSettings)
      permanentlyDeniedBuilder;

  /// Implement the builders here and specify the permission to be requested
  PermissionBuilder({
    Key? key,
    required this.permission,
    this.lazy = false,
    required this.initialBuilder,
    required this.requestingBuilder,
    required this.grantedBuilder,
    required this.restrictedBuilder,
    required this.permanentlyDeniedBuilder,
    required this.deniedBuilder,
    PermissionService? permissionService,
  }) : super(key: key) {
    _permissionsService = permissionService ?? PermissionService();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: Key(permission.value.toString()),
      child: ChangeNotifierProvider<PermissionProvider>(
        create: (context) => PermissionProvider(
          permission,
          _permissionsService,
          lazy,
        ),
        builder: (context, _) {
          final provider = context.watch<PermissionProvider>();
          return provider.state.map(
            initial: (_) => initialBuilder(
              provider.request,
            ),
            requesting: (_) => requestingBuilder,
            granted: (_) => grantedBuilder,
            denied: (_) => deniedBuilder(
              provider.request,
              provider.openSettings,
            ),
            restricted: (restricted) => restrictedBuilder(
              provider.request,
            ),
            permanentlyDenied: (_) => permanentlyDeniedBuilder(
              provider.request,
              provider.openSettings,
            ),
          );
        },
      ),
    );
  }
}
