import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final nowProvider = Provider<DateTime>((Ref ref) {
  return DateTime.now();
});

// final timerProvider = StreamProvider((Ref ref) {
//   return Stream.periodic(Duration(seconds: 1), (count) => count);
// });

class MyDateTime extends ConsumerWidget {
  const MyDateTime({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dateTime = ref.watch(nowProvider);

    // final _timer = ref.watch(timerProvider);
    print("==> $dateTime");
    return Scaffold(
      appBar: AppBar(
        title: Text("Date time"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("$dateTime"),
          ),
          // Center(
          //   child: _timer.when(
          //     data: (time) => Text(time.toString()),
          //     error: (err, StackTrace) => Text("something wen wrong"),
          //     loading: () => CircularProgressIndicator(),
          //   ),
          // ),
        ],
      ),
    );
  }
}
