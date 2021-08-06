import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

part 'freezed_state_transitions_test.freezed.dart';

@freezed
abstract class _CanNotify with _$_CanNotify {
  const factory _CanNotify.yes() = _YesCanNotify;
  const factory _CanNotify.no() = _CannNotify;
  const factory _CanNotify.error() = _CannNotifyError;
}

final yesUniqueKey = UniqueKey();
final noUniqueKey = UniqueKey();
final errorUniqueKey = UniqueKey();

final toYesKey = UniqueKey();
final toNoKey = UniqueKey();
final toErrorKey = UniqueKey();

class CanNotifyStore with ChangeNotifier {
  _CanNotify _canNotify = _CanNotify.no();
  _CanNotify get state => _canNotify;

  void get toYes => setAndNotify(_CanNotify.yes());
  void get toNo => setAndNotify(_CanNotify.no());
  void get toError => setAndNotify(_CanNotify.error());

  void setAndNotify(_CanNotify newState) {
    _canNotify = newState;
    notifyListeners();
  }
}

void main() {
  testWidgets('provider injection', (WidgetTester tester) async {
    final yesUniqueKey = UniqueKey();
    final noUniqueKey = UniqueKey();
    final errorUniqueKey = UniqueKey();

    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
        body: ChangeNotifierProvider(
          create: (_) => CanNotifyStore(),
          builder: (context, child) {
            final store = context.watch<CanNotifyStore>();
            return store.state.when(
              yes: () => Container(
                key: yesUniqueKey,
              ),
              no: () => Container(
                key: noUniqueKey,
              ),
              error: () => Container(
                key: errorUniqueKey,
              ),
            );
          },
        ),
      ),
    ));
    await tester.pumpAndSettle();
    expect(find.byKey(noUniqueKey), findsOneWidget);
  });

  testWidgets('provider should update value', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: ChangeNotifierProvider(
          create: (_) => CanNotifyStore(),
          builder: (context, child) {
            final store = context.watch<CanNotifyStore>();
            return TestingScaffold(store: store);
          },
        ),
      ),
    );
    expect(find.byType(TestingScaffold), findsOneWidget);
    expect(find.byKey(noUniqueKey), findsOneWidget);
    expect(find.byKey(yesUniqueKey), findsNothing);
    expect(find.byKey(errorUniqueKey), findsNothing);

    await tester.tap(find.byKey(toYesKey));
    await tester.pumpAndSettle();
    expect(find.byKey(yesUniqueKey), findsOneWidget);
  });

  testWidgets('animated switcher should work with freezed types',
      (WidgetTester tester) async {
    final canNotifyStore = CanNotifyStore();
    await tester.pumpWidget(
      MaterialApp(
        home: ChangeNotifierProvider(
          create: (_) => canNotifyStore,
          builder: (context, child) {
            final store = context.watch<CanNotifyStore>();
            return TestAnimatedSwitcher(store: store);
          },
        ),
      ),
    );

    expect(find.byKey(noUniqueKey), findsOneWidget);

    await tester.pump(Duration(milliseconds: 50));

    expect(find.byType(FadeTransition), findsNWidgets(2));

    await tester.tap(find.byKey(toYesKey));

    await tester.pump(Duration(milliseconds: 50));

    expect(find.byKey(noUniqueKey), findsOneWidget);
    expect(find.byKey(yesUniqueKey), findsOneWidget);
    expect(find.byKey(errorUniqueKey), findsNothing);
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(toNoKey));

    await tester.pump(Duration(milliseconds: 50));

    expect(find.byKey(noUniqueKey), findsOneWidget);
    expect(find.byKey(yesUniqueKey), findsOneWidget);
    expect(find.byKey(errorUniqueKey), findsNothing);
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(toErrorKey));
    expect(find.byKey(yesUniqueKey), findsNothing);
    expect(find.byKey(noUniqueKey), findsOneWidget);

    // expect(find.byType(FadeTransition), findsNothing);

    // expect(find.byKey(noUniqueKey), findsNothing);
    // expect(find.byKey(yesUniqueKey), findsOneWidget);
    // expect(find.byT), i);
  });

  testWidgets('updating global provider should update', (tester) async {
    final canNotifyStore = CanNotifyStore();
    await tester.pumpWidget(
      MaterialApp(
        home: ChangeNotifierProvider(
          create: (_) => canNotifyStore,
          builder: (context, child) {
            final store = context.watch<CanNotifyStore>();
            return TestAnimatedSwitcher(store: store);
          },
        ),
      ),
    );

    expect(find.byKey(noUniqueKey), findsOneWidget);

    canNotifyStore.toError;
    expect(find.byKey(errorUniqueKey), findsNothing);
    await tester.pump(Duration(milliseconds: 50));
    expect(find.byKey(errorUniqueKey), findsOneWidget);
    expect(find.byKey(noUniqueKey), findsOneWidget);

    await tester.pumpAndSettle();

    expect(find.byKey(errorUniqueKey), findsOneWidget);
    expect(find.byKey(noUniqueKey), findsNothing);
  });
}

class TestingScaffold extends StatelessWidget {
  const TestingScaffold({
    Key? key,
    required this.store,
  }) : super(key: key);

  final CanNotifyStore store;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          store.state.when(
            yes: () => Container(
              key: yesUniqueKey,
            ),
            no: () => Container(
              key: noUniqueKey,
            ),
            error: () => Container(
              key: errorUniqueKey,
            ),
          ),
          IconButton(
            icon: Icon(Icons.switch_account),
            onPressed: () => store.toYes,
            key: toYesKey,
          ),
          IconButton(
            icon: Icon(Icons.switch_account),
            onPressed: () => store.toNo,
            key: toNoKey,
          ),
          IconButton(
            icon: Icon(Icons.switch_account),
            onPressed: () => store.toError,
            key: toErrorKey,
          ),
        ],
      ),
    );
  }
}

class TestAnimatedSwitcher extends StatelessWidget {
  const TestAnimatedSwitcher({
    Key? key,
    required this.store,
  }) : super(key: key);

  final CanNotifyStore store;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AnimatedSwitcher(
            key: ValueKey('hello'),
            duration: Duration(milliseconds: 100),
            child: store.state.when(
              yes: () => Container(
                key: yesUniqueKey,
              ),
              no: () => Container(
                key: noUniqueKey,
              ),
              error: () => Container(
                key: errorUniqueKey,
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.switch_account),
            onPressed: () => store.toYes,
            key: toYesKey,
          ),
          IconButton(
            icon: Icon(Icons.switch_account),
            onPressed: () => store.toNo,
            key: toNoKey,
          ),
          IconButton(
            icon: Icon(Icons.switch_account),
            onPressed: () => store.toError,
            key: toErrorKey,
          ),
        ],
      ),
    );
  }
}
