import 'package:flutter/material.dart';
import 'package:permission_builder/permission_builder.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

/// Entrypoint to app
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

/// Default Page

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Permissive Builder Example'),
      ),
      body: ListView(
        children: [
          PermissionBuilder(
            permission: Permission.location,
            lazy: true,
            initialBuilder: (askPermissionFn) => ListTile(
              title: Text('Get permission'),
              subtitle: Text('We didn\'t ask for permission yet'),
              leading: IconButton(
                icon: Icon(Icons.gesture),
                onPressed: () async => await askPermissionFn,
              ),
              trailing: Icon(Icons.check_box_outline_blank),
            ),
            requestingBuilder: ListTile(
              title: Text('Asking for permission'),
              subtitle: Text('We are requesting for permission'),
              trailing: CircularProgressIndicator(),
            ),
            grantedBuilder: ListTile(
              title: Text('Permission granted'),
              trailing: Icon(
                Icons.check_box,
                color: Colors.green,
              ),
            ),
            restrictedBuilder: (askPermissionFn) => ListTile(
              title: Text('Permission Restricted. Grant permission'),
              subtitle: Text(
                  'The OS restricts access, for example because of parental controls'),
              leading: IconButton(
                onPressed: () async => await askPermissionFn,
                icon: Icon(Icons.gesture),
              ),
            ),
            permanentlyDeniedBuilder: (askPermissionFn, openSettingsFn) =>
                ListTile(
              title: Text('Permission Restricted. Grant permission'),
              subtitle: Text(
                  'The user opted to never again see the permission request dialog for this app. The only way to change the permission\'s status now is to let the user manually enable it in the system settings.'),
              leading: IconButton(
                onPressed: () async => await askPermissionFn,
                icon: Icon(Icons.gesture),
              ),
            ),
            deniedBuilder: (askPermissionFn, openSettingsFn) => ListTile(
              title: Text('Permission Restricted. Grant permission'),
              subtitle: Text('User denied the app this permission'),
              leading: IconButton(
                onPressed: () async => await askPermissionFn,
                icon: Icon(Icons.gesture),
              ),
            ),
          ),
          PermissionBuilder(
            permission: Permission.camera,
            lazy: true,
            initialBuilder: (askPermissionFn) => ListTile(
              title: Text('Get permission'),
              subtitle: Text('We didn\'t ask for permission yet'),
              leading: IconButton(
                icon: Icon(Icons.gesture),
                onPressed: () async => await askPermissionFn,
              ),
              trailing: Icon(Icons.check_box_outline_blank),
            ),
            requestingBuilder: ListTile(
              title: Text('Asking for permission'),
              subtitle: Text('We are requesting for permission'),
              trailing: CircularProgressIndicator(),
            ),
            grantedBuilder: ListTile(
              title: Text('Permission granted'),
              trailing: Icon(
                Icons.check_box,
                color: Colors.green,
              ),
            ),
            restrictedBuilder: (askPermissionFn) => ListTile(
              title: Text('Permission Restricted. Grant permission'),
              subtitle: Text(
                  'The OS restricts access, for example because of parental controls'),
              leading: IconButton(
                onPressed: () async => await askPermissionFn,
                icon: Icon(Icons.gesture),
              ),
            ),
            permanentlyDeniedBuilder: (askPermissionFn, openSettingsFn) =>
                ListTile(
              title: Text('Permission Restricted. Grant permission'),
              subtitle: Text(
                  'The user opted to never again see the permission request dialog for this app. The only way to change the permission\'s status now is to let the user manually enable it in the system settings.'),
              leading: IconButton(
                onPressed: () async => await askPermissionFn,
                icon: Icon(Icons.gesture),
              ),
            ),
            deniedBuilder: (askPermissionFn, openSettingsFn) => ListTile(
              title: Text('Permission Restricted. Grant permission'),
              subtitle: Text('User denied the app this permission'),
              leading: IconButton(
                onPressed: () async => await askPermissionFn,
                icon: Icon(Icons.gesture),
              ),
            ),
          )
        ],
      ),
    );
  }
}
