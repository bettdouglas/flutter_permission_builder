import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:permissive_builder/src/permission_provider.dart';
import 'package:permissive_builder/src/permission_states.dart';
import 'package:provider/provider.dart';

class PermissionBuilder<T> extends StatelessWidget {

  final Permission permission;
  final bool lazy;
  final Widget Function(PermissionInitial<T> state,Function request) initialBuilder;
  final Widget Function(PermissionRequesting<T> state) requestingBuilder;
  final Widget Function(PermissionGranted<T> state) grantedBuilder;
  final Widget Function(PermissionRestricted<T> state,Function request) restrictedBuilder;
  final Widget Function(PermissionDenied<T> state,Function retry,Future openAppSettings) deniedBuilder;
  final Widget Function(PermissionPermanentlyDenied<T> state,Function retry,Future openAppSettings)
      permanentlyDeniedBuilder;

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
