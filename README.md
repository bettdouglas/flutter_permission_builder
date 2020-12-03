# permissive_builder

A Flutter package thats a wrapper around [permission_handler](https://pub.dev/packages/permission_handler) which 
- exposes a set of builders which you can use to render widgets depending on the permission state.
- exposes functions to `askPermission` and `openSettings` variably depending on the specific permission states
- handles state management of the permissions using [provider](https://pub.dev/packages/provider) and uses [freezed](https://pub.dev/packages/freezed) union types to provide a neat permission handling api. 


```dart
class LocationPermissionWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return PermissionBuilder(
            permission: Permission.location, // can be any permission in Permission.
            
            // We didn't ask for permission yet.
            initialBuilder: (_, askPermissionFn) => FirstTimePermissionWidget(),

            // Permission requested. Awaiting for user input. Will rebuild after user input
            requestingBuilder: (_) => RequestingPermissionWidget(),

            // User has granted us permission
            grantedBuilder: (_) => PermissionGrantedWidget(),

            // The OS restricts access, for example because of parental controls
            restrictedBuilder: (_, askPermissionFn) => PermissionRestrictedWidget(),

            //The user opted to never again see the permission request dialog for this app.
            permanentlyDeniedBuilder: (_, askPermissionFn, openSettingsFn) => PermanentlyDeniedWidget(
                requestPermissionFn: askPermissionFn,
                openSettingsFn: openSettingsFn,
            ),

            // User denied the permission once
            deniedBuilder: (_, askPermissionFn, openSettingsFn) => PermissionDeniedWidget(
                openSettingsFn: openSettingsFn,
                requestPermissionFn: askPermissionFn,
            ),
        );
    }
}
```

## TODO
- Write tests.

