import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:permission_builder/src/permission_states.dart';
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
class PermissionBuilder<T> extends StatelessWidget {

  /// Which permission to request. e.g location, calenda, camera
  final Permission permission;
  
  /// set to true to wait until user is prompted to grant permission
  /// set to false to immediately request for permission when widget is built
  final bool lazy;
  
  /// what to build when we haven't asked for permission yet
  final Widget Function(PermissionInitial<T> state,Function request) initialBuilder;
  
  /// what to build when we have requested for permission and we're waiting for user response
  final Widget Function(PermissionRequesting<T> state) requestingBuilder;
  
  /// what to build when we have been granted for permission
  final Widget Function(PermissionGranted<T> state) grantedBuilder;
  
  /// What widget to show if the permission is restricted. Maybe by OS restricting access, for example because of parental controls
  final Widget Function(PermissionRestricted<T> state,Function request) restrictedBuilder;
  
  /// what to build when we have been denied permission once
  final Widget Function(PermissionDenied<T> state,Function retry,Future openAppSettings) deniedBuilder;
  
  /// What to build when the user opted to never again see the permission request dialog for this app.
  final Widget Function(PermissionPermanentlyDenied<T> state,Function retry,Future openAppSettings)
      permanentlyDeniedBuilder;


  /// Implement the builders here and specify the permission to be requested
  const PermissionBuilder({
    Key key,
    @required this.permission,
    this.lazy = false,
    @required this.initialBuilder,
    @required this.requestingBuilder,
    @required this.grantedBuilder,
    @required this.restrictedBuilder,
    @required this.permanentlyDeniedBuilder,
    @required this.deniedBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: Key(permission.value.toString()),
      child: ChangeNotifierProvider<PermissionProvider<T>>(
        create: (context) => PermissionProvider(permission, lazy),
        builder: (context, _) {
          final provider = context.watch<PermissionProvider<T>>();
          return provider.state.map(
            initial: (_) => initialBuilder(_,provider.request),
            requesting: requestingBuilder,
            granted: grantedBuilder,
            denied: (denied) => deniedBuilder(denied,provider.request,provider.openSettings),
            restricted: (restricted) => restrictedBuilder(restricted,provider.request),
            permanentlyDenied: (_) => permanentlyDeniedBuilder(_,provider.request,provider.openSettings),
          );
        },
      ),
    );
  }
}
