import 'package:flutter/material.dart';
import 'package:permission_builder/permission_builder.dart';

class LocationPermissionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PermissionBuilder(
      permission: Permission.location,
      lazy: true,
      initialBuilder: (askPermissionFn) => _FirstTimePermissionWidget(
        requestPermissionFn: () async => await askPermissionFn,
      ),
      requestingBuilder: _RequestingPermissionWidget(),
      grantedBuilder: _GrantedPermissionWidget(),
      restrictedBuilder: (askPermissionFn) => _RestrictedPermissionWidget(
        requestPermissionFn: () async => await askPermissionFn,
      ),
      permanentlyDeniedBuilder: (askPermissionFn, openSettingsFn) =>
          _PermanentlyDeniedWidget(
        requestPermissionFn: () async => await askPermissionFn,
        openSettingsFn: openSettingsFn,
      ),
      deniedBuilder: (askPermissionFn, openSettingsFn) =>
          DeniedPermissionWidget(
        openSettingsFn: openSettingsFn,
        requestPermissionFn: () async => askPermissionFn,
      ),
    );
  }
}

/// Widget to be build when permission is denied
class DeniedPermissionWidget extends StatelessWidget {
  /// Widget to be build when permission is denied

  const DeniedPermissionWidget({
    Key key,
    @required this.requestPermissionFn,
    @required this.openSettingsFn,
  }) : super(key: key);

  /// Future funtion that requests the for permission. Await this function to request for permission again
  final Function requestPermissionFn;

  /// Opens app settings
  final Future openSettingsFn;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Permission Restricted. Grant permission'),
      subtitle: Text('User denied the app this permission'),
      leading: IconButton(
        onPressed: () async => await requestPermissionFn,
        icon: Icon(Icons.gesture),
      ),
    );
  }
}

class _PermanentlyDeniedWidget extends StatelessWidget {
  const _PermanentlyDeniedWidget({
    Key key,
    this.requestPermissionFn,
    this.openSettingsFn,
  }) : super(key: key);
  final Function requestPermissionFn;
  final Future openSettingsFn;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Permission Restricted. Grant permission'),
      subtitle: Text(
          '''The user opted to never again see the permission request dialog for this app. 
            The only way to change the permission\'s status now is to let the user 
            manually enable it in the system settings.
          '''),
      leading: IconButton(
        onPressed: requestPermissionFn,
        icon: Icon(Icons.gesture),
      ),
      trailing: Tooltip(
        message: 'Open Settings',
        child: IconButton(
          onPressed: () async => await openSettingsFn,
          icon: Icon(
            Icons.settings_applications,
          ),
        ),
      ),
    );
  }
}

class _RestrictedPermissionWidget extends StatelessWidget {
  const _RestrictedPermissionWidget({
    Key key,
    this.requestPermissionFn,
  }) : super(key: key);

  final Function requestPermissionFn;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Permission Restricted. Grant permission'),
      subtitle: Text(
          'The OS restricts access, for example because of parental controls'),
      leading: IconButton(
        onPressed: requestPermissionFn,
        icon: Icon(Icons.gesture),
      ),
    );
  }
}

class _GrantedPermissionWidget extends StatelessWidget {
  const _GrantedPermissionWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Permission granted'),
      trailing: Icon(
        Icons.check_box,
        color: Colors.green,
      ),
    );
  }
}

class _RequestingPermissionWidget extends StatelessWidget {
  const _RequestingPermissionWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Asking for permission'),
      subtitle: Text('We are requesting for permission'),
      trailing: CircularProgressIndicator(),
    );
  }
}

class _FirstTimePermissionWidget extends StatelessWidget {
  const _FirstTimePermissionWidget({
    Key key,
    @required this.requestPermissionFn,
  }) : super(key: key);

  final Function requestPermissionFn;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Get permission'),
      subtitle: Text('We didn\'t ask for permission yet'),
      leading: IconButton(
        icon: Icon(Icons.gesture),
        onPressed: requestPermissionFn,
      ),
      trailing: Icon(Icons.check_box_outline_blank),
    );
  }
}
