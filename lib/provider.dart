import 'package:riverpod/riverpod.dart';

final homePageTitleProvider = Provider<String>((ref) {
  return 'Riverpod Demo Home Page';
});

final messageProvider = Provider<String>((ref) {
  return 'You have pushed the button this many times:';
});
