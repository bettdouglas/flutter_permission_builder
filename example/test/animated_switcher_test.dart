import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'animated_switcher_test.freezed.dart';

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

@freezed
abstract class CanNotify with _$CanNotify {
  const factory CanNotify.yes() = _YesCanNotify;
  const factory CanNotify.no() = _CannNotify;
  const factory CanNotify.error() = _CannNotifyError;
}

class CanNotifyStore with ChangeNotifier {
  CanNotify _canNotify = CanNotify.no();
  CanNotify get state => _canNotify;

  void get toYes => setAndNotify(CanNotify.yes());
  void get toNo => setAndNotify(CanNotify.no());
  void get toError => setAndNotify(CanNotify.error());

  void setAndNotify(CanNotify newState) {
    _canNotify = newState;
    notifyListeners();
  }
}
