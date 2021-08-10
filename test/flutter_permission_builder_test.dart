import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:permission_builder/src/permission_builder.dart';
import 'helpers.dart';
import 'permissive_builder_test.dart';
import 'testing_utils.dart';

final initialKey = ValueKey('initial');
final requestingKey = ValueKey('requesting');
final grantedKey = ValueKey('granted');
final restrictedKey = UniqueKey();
final permanentlyDeniedKey = UniqueKey();
final deniedKey = UniqueKey();

extension PumpScaffold on WidgetTester {
  Future<void> pumpScaffold(Widget child) async {
    await pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: child,
        ),
      ),
    );
  }
}

// @GenerateMocks([permission])
void main() {
  group('PermissionBuilder initialization', () {
    testWidgets('should start immediately when not lazy',
        (WidgetTester tester) async {
      final mockedAsGranted = mockAs(granted);
      final permission = randomPermission;
      final permissionBuilder = PermissionBuilder(
        permission: permission,
        permissionService: mockedAsGranted,
        lazy: false,
        initialBuilder: (request) => Container(
          key: initialKey,
        ),
        requestingBuilder: Container(
          key: requestingKey,
        ),
        grantedBuilder: Container(
          key: grantedKey,
        ),
        restrictedBuilder: (tryAgain) => Container(
          key: restrictedKey,
        ),
        permanentlyDeniedBuilder: (retry, openSettings) => Container(
          key: permanentlyDeniedKey,
        ),
        deniedBuilder: (retryFn, openSettings) => Container(
          key: deniedKey,
        ),
      );
      await tester.pumpWidget(permissionBuilder);
      expect(find.byKey(requestingKey), findsOneWidget);
      await tester.pumpAndSettle();
      expect(find.byKey(grantedKey), findsOneWidget);
    });

    testWidgets('should not start immediately when lazy',
        (WidgetTester tester) async {
      final mockedAsGranted = mockAs(denied);
      final permission = randomPermission;
      final permissionBuilder = PermissionBuilder(
        permission: permission,
        permissionService: mockedAsGranted,
        lazy: true,
        initialBuilder: (request) => Container(
          key: initialKey,
        ),
        requestingBuilder: Container(
          key: requestingKey,
        ),
        grantedBuilder: Container(
          key: grantedKey,
        ),
        restrictedBuilder: (tryAgain) => Container(
          key: restrictedKey,
        ),
        permanentlyDeniedBuilder: (retry, openSettings) => Container(
          key: permanentlyDeniedKey,
        ),
        deniedBuilder: (retryFn, openSettings) => Container(
          key: deniedKey,
        ),
      );
      // await tester.pumpApp(permissionBuilder);
      // await tester.pumpAndSettle(Duration(seconds: 1));
      // await tester.pumpAndSettle();
      // expect(find.byKey(initialKey), findsOneWidget);
      // expect(find.byKey(deniedKey), findsNothing);
    });
  });
}
