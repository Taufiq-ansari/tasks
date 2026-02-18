import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

final stringProvider = Provider((Ref ref) {
  return "riverpod";
});

final counterProvider = StateProvider<int>((Ref ref) {
  return 0;
});

final textProvider = StateProvider((Ref ref) {
  return "";
});

class StatefulConsumerRiverPodScreen extends ConsumerStatefulWidget {
  const StatefulConsumerRiverPodScreen({super.key});

  @override
  ConsumerState<StatefulConsumerRiverPodScreen> createState() =>
      _StatefulConsumerRiverPodScreenState();
}

class _StatefulConsumerRiverPodScreenState
    extends ConsumerState<StatefulConsumerRiverPodScreen> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    // initialize cotroller
    _controller = TextEditingController();

    _controller.addListener(() {
      ref.read(textProvider.notifier).state = _controller.text;
    });
  }

  @override
  void dispose() {
    _controller..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final text = ref.watch(textProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text("riverpod"),
      ),
      body: Column(
        spacing: 20,
        children: [
          TextField(
            controller: _controller,
          ),
          Text("you typed: $text"),
        ],
      ),
    );
  }
}
