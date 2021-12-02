import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'provider.dart';

void main() {
  runApp(const MyApp());
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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends ConsumerWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _title = ref.watch(homePageTitleProvider);
    final _massage = ref.watch(messageProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _massage,
            ),
            Text(
              ///TODO CountData.countをセット
              '',
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ///TODO ViewModelで定義してた加算・減算の関数をかく
                FloatingActionButton(
                  onPressed: () {},
                  tooltip: 'plus',
                  child: const Icon(CupertinoIcons.plus),
                ),
                FloatingActionButton(
                  onPressed: () {},
                  tooltip: 'minus',
                  child: const Icon(CupertinoIcons.minus),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ///TODO get関数から取得してた値を入れる
                Text("_viewModel.countUp"),
                Text("_viewModel.countDown"),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        ///TODO リセット関数実行
        onPressed: () {},
        tooltip: 'refresh',
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
