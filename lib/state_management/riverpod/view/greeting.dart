import 'package:api/state_management/riverpod/notifier/fake_api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// create future provider
final fakeProvider = Provider(
  (_) => FakeService(),
);

final greetingFutureProvider = FutureProvider((Ref ref) async {
  final service = ref.read(fakeProvider);
  return await service.fetchGreeting();
});

// ui screen to display
class Greeting extends ConsumerWidget {
  const Greeting({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final greetingValue = ref.watch(greetingFutureProvider);
    print("${greetingValue}");

    return Scaffold(
      appBar: AppBar(
        title: Text("Asyns Greeting"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: greetingValue.when(
                data: (greeting) => Text(greeting),
                error: (err, StackTrace) => Text(err.toString()),
                loading: () => CircularProgressIndicator()),
          ),
        ],
      ),
    );
  }
}
