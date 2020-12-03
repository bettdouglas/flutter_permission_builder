// import 'package:flutter_test/flutter_test.dart';

// import 'package:permissive_builder/permissive_builder.dart';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:permissive_builder/permissive_builder.dart';

void main() {
  testWidgets('It should show permission not enabled on TestPermissionWidget',
      (WidgetTester tester) {
    final testWidget = PermissionBuilder(
      permission: Permission.location,
      initialBuilder: (_, askPermissionFn) => ListTile(
        title: Text('Get permission'),
        subtitle: Text('We didn\'t ask for permission yet'),
        leading: IconButton(
          icon: Icon(Icons.gesture),
          onPressed: askPermissionFn,
        ),
        trailing: Icon(Icons.check_box_outline_blank),
      ),
      requestingBuilder: (_) => ListTile(
        title: Text('Asking for permission'),
        subtitle: Text('We are requesting for permission'),
        trailing: CircularProgressIndicator(),
      ),
      grantedBuilder: (_) => ListTile(
        title: Text('Permission granted'),
        trailing: Icon(
          Icons.check_box,
          color: Colors.green,
        ),
      ),
      restrictedBuilder: (_, askPermissionFn) => ListTile(
        title: Text('Permission Restricted. Grant permission'),
        subtitle: Text('The OS restricts access, for example because of parental controls'),
        leading: IconButton(
          onPressed: askPermissionFn,
          icon: Icon(Icons.gesture),
        ),
      ),
      permanentlyDeniedBuilder: (_, askPermissionFn, openSettingsFn) =>
          ListTile(
        title: Text('Permission Restricted. Grant permission'),
        subtitle: Text('The user opted to never again see the permission request dialog for this app. The only way to change the permission\'s status now is to let the user manually enable it in the system settings.'),
        leading: IconButton(
          onPressed: askPermissionFn,
          icon: Icon(Icons.gesture),
        ),
      ),
      deniedBuilder: (_,askPermissionFn, openSettingsFn) => ListTile(
        title: Text('Permission Restricted. Grant permission'),
        subtitle: Text('User denied the app this permission'),
        leading: IconButton(
          onPressed: askPermissionFn,
          icon: Icon(Icons.gesture),
        ),
      ),
    );
  });
}
