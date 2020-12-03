import 'package:flutter/material.dart';
import 'package:permission_builder/permission_builder.dart';

class LocationPermissionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PermissionBuilder(
      permission: Permission.location,
      initialBuilder: (_, askPermissionFn) => FirstTimePermissionWidget(),
      requestingBuilder: (_) => RequestingPermissionWidget(),
      grantedBuilder: (_) => PermissionGrantedWidget(),
      restrictedBuilder: (_, askPermissionFn) => PermissionRestrictedWidget(),
      permanentlyDeniedBuilder: (_, askPermissionFn, openSettingsFn) =>
          PermanentlyDeniedWidget(
        requestPermissionFn: askPermissionFn,
        openSettingsFn: openSettingsFn,
      ),
      deniedBuilder: (_, askPermissionFn, openSettingsFn) =>
          PermissionDeniedWidget(
        openSettingsFn: openSettingsFn,
        requestPermissionFn: askPermissionFn,
      ),
    );
  }
}

class PermissionDeniedWidget extends StatelessWidget {
  const PermissionDeniedWidget({
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
      subtitle: Text('User denied the app this permission'),
      leading: IconButton(
        onPressed: requestPermissionFn,
        icon: Icon(Icons.gesture),
      ),
    );
  }
}

class PermanentlyDeniedWidget extends StatelessWidget {
  const PermanentlyDeniedWidget({
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

class PermissionRestrictedWidget extends StatelessWidget {
  const PermissionRestrictedWidget({
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

class PermissionGrantedWidget extends StatelessWidget {
  const PermissionGrantedWidget({
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

class RequestingPermissionWidget extends StatelessWidget {
  const RequestingPermissionWidget({
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

class FirstTimePermissionWidget extends StatelessWidget {
  const FirstTimePermissionWidget({
    Key key,
    this.requestPermissionFn,
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
