import 'package:flutter/material.dart';
import 'package:permission_builder/permission_builder.dart';
import 'package:provider/provider.dart';

import 'freezed_state_transitions.dart';

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

class _AnimatedSwitcherTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (_) => CanNotifyStore(),
        builder: (context, child) {
          final store = context.watch<CanNotifyStore>();
          return _TestAnimatedSwitcher(store: store);
        },
      ),
    );
  }
}

class _TestAnimatedSwitcher extends StatelessWidget {
  const _TestAnimatedSwitcher({
    Key key,
    @required this.store,
  }) : super(key: key);

  final CanNotifyStore store;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(50),
        child: Column(
          children: [
            AnimatedSwitcher(
              key: ValueKey('hello'),
              duration: Duration(milliseconds: 1000),
              child: _buildContainer(store.state),
            ),
            IconButton(
              icon: Icon(Icons.arrow_upward),
              onPressed: () => store.toYes,
              key: toYesKey,
            ),
            IconButton(
              icon: Icon(Icons.arrow_downward),
              onPressed: () => store.toNo,
              key: toNoKey,
            ),
            IconButton(
              icon: Icon(Icons.error_outline),
              onPressed: () => store.toError,
              key: toErrorKey,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContainer(CanNotify state) {
    return state.when(
      yes: () => Container(
        key: yesUniqueKey,
        color: Colors.green,
        height: 200,
        width: 300,
      ),
      no: () => Container(
        key: noUniqueKey,
        color: Colors.red,
        height: 200,
        width: 300,
      ),
      error: () => Container(
        key: errorUniqueKey,
        color: Colors.black,
        height: 200,
        width: 300,
      ),
    );
  }
}

final yesUniqueKey = UniqueKey();
final noUniqueKey = UniqueKey();
final errorUniqueKey = UniqueKey();

final toYesKey = UniqueKey();
final toNoKey = UniqueKey();
final toErrorKey = UniqueKey();
