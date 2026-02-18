import 'dart:math';

class FakeService {
  Future<String> fetchGreeting() async {
    await Future.delayed(Duration(seconds: 1));

    if (Random().nextDouble() < 0) {
      throw Exception("failed to fetch greeting");
    }

    return "hello from async";
  }
}
