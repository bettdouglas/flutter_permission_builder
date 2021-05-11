import 'package:flutter_test/flutter_test.dart';
import 'package:permission_builder/src/permission_provider.dart';
import 'package:permission_builder/src/permission_service.dart';
import 'package:permission_builder/src/permission_states.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'testing_utils.dart';
import 'permissive_builder_test.mocks.dart';

final denied = PermissionStatus.denied;
final granted = PermissionStatus.granted;
final permanentlyDenied = PermissionStatus.permanentlyDenied;
final restricted = PermissionStatus.restricted;
final undetermined = PermissionStatus.undetermined;

@GenerateMocks([PermissionsService])
void main() {
  group('Mocked Permission class should mock', () {
    test('should return mocked permission status', () async {
      final mockPermissionService = MockPermissionsService();
      when(mockPermissionService.request(Permission.storage)).thenAnswer(
        (_) async => PermissionStatus.denied,
      );
      final status = await mockPermissionService.request(Permission.storage);

      expect(
        status,
        PermissionStatus.denied,
      );
    });
  });

  group('PermissionProvider', () {
    test('should not start when lazy is false', () async {
      final mock = mockAs(denied);
      final rand = randomPermission;
      when(mock.request(rand)).thenAnswer(
        (_) async => denied,
      );
      final prov = PermissionProvider(
        rand,
        mock,
        false,
      );
      // await Duration(milliseconds: 500);
      expect(prov.state, isA<PermissionInitial>());
    });

    test('should start when lazy is true', () async {
      final mock = mockAs(denied);
      final rand = randomPermission;
      when(mock.request(rand)).thenAnswer(
        (_) async => denied,
      );
      final prov = providerWithMock(mock, rand);
      await prov.request;
      expect(
        prov.state.maybeWhen(
          orElse: () => throw Error(),
          denied: () => 'a',
        ),
        'a',
      );
    });

    test('should map denied to denied', () async {
      final mock = mockAs(denied);
      final rand = randomPermission;
      when(mock.request(rand)).thenAnswer(
        (_) async => denied,
      );
      final prov = providerWithMock(mock, rand);
      await prov.request;
      expect(
        prov.state.maybeWhen(
          orElse: () => throw Error(),
          denied: () => 'a',
        ),
        'a',
      );
    });

    test('should map restricted to restricted', () async {
      final mock = mockAs(restricted);
      final rand = randomPermission;
      when(mock.request(rand)).thenAnswer(
        (_) async => restricted,
      );
      final prov = providerWithMock(mock, rand);
      await prov.request;
      expect(
        prov.state.maybeWhen(
          orElse: () => throw Error(),
          restricted: () => 'a',
        ),
        'a',
      );
    });

    test('should map undetermined to initial', () async {
      final mock = mockAs(undetermined);
      final rand = randomPermission;
      when(mock.request(rand)).thenAnswer(
        (_) async => undetermined,
      );
      final prov = providerWithMock(mock, rand);
      await prov.request;
      expect(
        prov.state.maybeWhen(
          orElse: () => throw Error(),
          initial: () => 'a',
        ),
        'a',
      );
    });
  });

  test('should update when status is changed', () async {
    final mock = mockAs(undetermined);
    final rand = randomPermission;
    when(mock.request(rand)).thenAnswer(
      (_) async => undetermined,
    );
    final prov = providerWithMock(mock, rand);
    await prov.request;
    expect(
      prov.state.maybeWhen(
        orElse: () => throw Error(),
        initial: () => 'a',
      ),
      'a',
    );
    // when(mock.request(rand)).thenAnswer((_) async => granted);
    final grantedMock = mockAs(granted);
    when(grantedMock.request(rand)).thenAnswer(
      (_) async => granted,
    );
    final returned = await grantedMock.request(rand);
    expect(returned, granted);
    prov.permissionsService = grantedMock;
    await prov.request;

    final fromGrantedMock = await prov.permissionsService.request(rand);
    expect(fromGrantedMock, granted);
    await prov.request;

    expect(
      prov.state.maybeWhen(
        orElse: () => throw Error(),
        granted: () => 'a',
      ),
      'a',
    );

    final permnanentlyDeniedMock = mockAs(permanentlyDenied);
    when(permnanentlyDeniedMock.request(rand)).thenAnswer(
      (_) async => permanentlyDenied,
    );
    prov.permissionsService = permnanentlyDeniedMock;
    await prov.request;
    expect(
      prov.state.maybeWhen(
        orElse: () => throw Error(),
        permanentlyDenied: () => 'a',
      ),
      'a',
    );
  });

  test('should request once when called', () async {
    final mock = MockPermissionsService();
    final permission = randomPermission;
    final provWithMock = providerWithMock(mock, permission);
    when(provWithMock.request).thenAnswer(
      (realInvocation) => null,
    );
    await provWithMock.request;
    verify(provWithMock.request).called(1);
  });

  test('should request once when called', () async {
    final mock = MockPermissionsService();
    final permission = randomPermission;
    final provWithMock = providerWithMock(mock, permission);
    when(provWithMock.request).thenAnswer(
      (realInvocation) => null,
    );
    await provWithMock.request;
    verify(provWithMock.request).called(1);
  });

  test('should start evaluating if not lazy', () async {
    final mock = MockPermissionsService();
    final permission = randomPermission;
    when(mock.request(any)).thenAnswer((realInvocation) async => granted);
    final provWithMock = providerWithMock(mock, permission, isLazy: false);
    // await Future.delayed(Duration(seconds: 1));
    verify(provWithMock.request).called(1);
  });

  test('mockAs should mock on return', () async {
    final mockedAsGranted = mockAs(granted);
    final status = await mockedAsGranted.request(
      Permission.accessMediaLocation,
    );
    expect(status, granted);
    final permission = randomPermission;

    final provWithMock = providerWithMock(
      mockedAsGranted,
      permission,
      isLazy: false,
    );
    // await provWithMock.request;
    // verify(provWithMock.request).called(2);

    // expect(
    //   provWithMock.state.maybeWhen(
    //     orElse: () => throw provWithMock.state,
    //     granted: () => 'a',
    //   ),
    //   'a',
    // );
    // pump and settle
  });

  // group('should map', () {
  //   test('granted to granted', () async {
  //     // final mock = await mockAsAndRequest(denied);
  //     // await mock.request;
  //     final mock = mockAs(denied);
  //     final rand = randomPermission;
  //     // final prov = await noLazyMock(mock, rand);
  //     final prov = PermissionProvider(
  //       rand,
  //       mock,
  //       false,
  //     );

  //     await prov.request;

  //     expect(
  //       prov.state.maybeWhen(
  //         orElse: () =>
  //             throw 'Type is ${prov.state.runtimeType} Permission is $rand in prov is ${prov.permission}',
  //         denied: () => 1,
  //       ),
  //       1,
  //     );
  //   });
  // });
}

MockPermissionsService mockAs(PermissionStatus status) {
  final mock = MockPermissionsService();
  when(mock.request(any)).thenAnswer(
    (_) async => status,
  );
  return mock;
}

Future<PermissionProvider> mockAsAndRequest(PermissionStatus status) async {
  final mock = mockAs(status);
  final rand = randomPermission;
  final prov = PermissionProvider(
    rand,
    mock,
    false,
  );
  await prov.request;
  return prov;
}

PermissionProvider providerWithMock(
  MockPermissionsService mock,
  Permission permission, {
  bool isLazy = true,
}) {
  return PermissionProvider(
    permission,
    mock,
    isLazy,
  );
}

Future<PermissionProvider> noLazyMock(
  MockPermissionsService mock,
  Permission permission,
) async {
  final p = PermissionProvider(
    permission,
    mock,
    false,
  );
  await p.request;
  return p;
}
