import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/riverpod.dart';
import 'logic/count_logic.dart';
import 'logic/sound_logic.dart';
import 'model_state/count_data.dart';

final homePageTitleProvider = Provider<String>((ref) {
  return 'Riverpod Demo Home Page';
});

final messageProvider = Provider<String>((ref) {
  return 'You have pushed the button this many times:';
});

final countLogicProvider = Provider<CountLogic>((ref) => CountLogic());
final soundLogicProvider = Provider<SoundLogic>((ref) => SoundLogic());

final countDataProvider = StateNotifierProvider<CountDataNotifier, CountData>(
    (ref) => CountDataNotifier(ref.read));

class CountDataNotifier extends StateNotifier<CountData> {
  CountDataNotifier(this._read) : super(CountData());
  final Reader _read;

  //教材では実装してるが、実装しなくても音がなる
  //void loadSoundData() => _soundLogic.load();

  void onIncrease() {
    _read(countLogicProvider).increase();
    updateCountData();
  }

  void onDecrease() {
    _read(countLogicProvider).decrease();
    updateCountData();
  }

  void onReset() {
    _read(countLogicProvider).reset();
    updateCountData();
  }

  void updateCountData() {
    CountData oldCountData = state;
    state = _read(countLogicProvider).countData;
    CountData newCountData = state;

    _read(soundLogicProvider).valueChanges(oldCountData, newCountData);
  }
}
