import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'provider.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _title = ref.watch(homePageTitleProvider);
    final _massage = ref.watch(messageProvider);
    final _count =
        ref.watch(countDataProvider.select((countData) => countData.count));
    final _countUp =
        ref.watch(countDataProvider.select((countData) => countData.countUp));
    final _countDown =
        ref.watch(countDataProvider.select((countData) => countData.countDown));
    final _countDataNotifier = ref.watch(countDataProvider.notifier);

    ref.listen<int>(countDataProvider.select((countData) => countData.countUp),
        (_, int countUp) {
      print('The countUp changed $countUp');
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_massage),
            Text(
              _count.toString(),
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton(
                  onPressed: () => _countDataNotifier.onIncrease(),
                  tooltip: 'plus',
                  child: const Icon(CupertinoIcons.plus),
                ),
                FloatingActionButton(
                  onPressed: () => _countDataNotifier.onDecrease(),
                  tooltip: 'minus',
                  child: const Icon(CupertinoIcons.minus),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(_countUp.toString()),
                Text(_countDown.toString()),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _countDataNotifier.onReset(),
        tooltip: 'refresh',
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
