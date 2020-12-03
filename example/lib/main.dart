import 'package:flutter/material.dart';
import 'package:permissive_builder/permissive_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

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
              subtitle: Text(
                  'The OS restricts access, for example because of parental controls'),
              leading: IconButton(
                onPressed: askPermissionFn,
                icon: Icon(Icons.gesture),
              ),
            ),
            permanentlyDeniedBuilder: (_, askPermissionFn, openSettingsFn) =>
                ListTile(
              title: Text('Permission Restricted. Grant permission'),
              subtitle: Text(
                  'The user opted to never again see the permission request dialog for this app. The only way to change the permission\'s status now is to let the user manually enable it in the system settings.'),
              leading: IconButton(
                onPressed: askPermissionFn,
                icon: Icon(Icons.gesture),
              ),
            ),
            deniedBuilder: (_, askPermissionFn, openSettingsFn) => ListTile(
              title: Text('Permission Restricted. Grant permission'),
              subtitle: Text('User denied the app this permission'),
              leading: IconButton(
                onPressed: askPermissionFn,
                icon: Icon(Icons.gesture),
              ),
            ),
          ),
          PermissionBuilder(
            permission: Permission.camera,
            lazy: true,
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
              subtitle: Text(
                  'The OS restricts access, for example because of parental controls'),
              leading: IconButton(
                onPressed: askPermissionFn,
                icon: Icon(Icons.gesture),
              ),
            ),
            permanentlyDeniedBuilder: (_, askPermissionFn, openSettingsFn) =>
                ListTile(
              title: Text('Permission Restricted. Grant permission'),
              subtitle: Text(
                  'The user opted to never again see the permission request dialog for this app. The only way to change the permission\'s status now is to let the user manually enable it in the system settings.'),
              leading: IconButton(
                onPressed: askPermissionFn,
                icon: Icon(Icons.gesture),
              ),
            ),
            deniedBuilder: (_, askPermissionFn, openSettingsFn) => ListTile(
              title: Text('Permission Restricted. Grant permission'),
              subtitle: Text('User denied the app this permission'),
              leading: IconButton(
                onPressed: askPermissionFn,
                icon: Icon(Icons.gesture),
              ),
            ),
          )
        ],
      ),
    );
  }
}
