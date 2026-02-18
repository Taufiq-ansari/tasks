import 'package:flutter_riverpod/legacy.dart';

class CounterNotifier extends StateNotifier<int> {
  CounterNotifier(super.state);

  void increment() => state++;
  void decrement() => state > 0 ? state-- : 0;
  void reset() => state = 0;
}
