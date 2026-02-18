import 'package:api/state_management/riverpod/notifier/counterNotifier.dart';
import 'package:api/state_management/riverpod/notifier/todo_notifier.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

// 1. providers
// 2. provider
// 3. StateProvider
// 4. StreamProvider
// 5.Statenotifier and StateNotifierProvider

// provider
final CountProvider = Provider<int>((Ref ref) {
  return 0;
});

// StateProvider
final stringProvider = StateProvider<String>((Ref ref) {
  return "";
});

// StreamProvider
// final tickerProvider = StreamProvider((_) {
//   return Stream.periodic(Duration(seconds: 1), (int count) => count);
// });

// StateNotifier

final counterPovider2 = StateNotifierProvider<CounterNotifier, int>((_) {
  return CounterNotifier(0);
});

class ListDataRiverpod extends ConsumerStatefulWidget {
  const ListDataRiverpod({super.key});

  @override
  ConsumerState<ListDataRiverpod> createState() => _ListDataRiverpodState();
}

class _ListDataRiverpodState extends ConsumerState<ListDataRiverpod> {
  final controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void submit(String value, WidgetRef ref) {
    ref.read(stringProvider.notifier).update(
          // update value
          (state) => value,
        );
  }

  @override
  Widget build(BuildContext context) {
    // final displayValue = ref.watch(stringProvider);
    // final tickAsync = ref.watch(tickerProvider);
    // final counts = ref.watch(counterPovider2);
    // final ctrl = ref.read(counterPovider2.notifier);

    final todos = ref.watch(todoListProvider);
    final notifier = ref.read(todoListProvider.notifier);
    print("build function called");
    return Scaffold(
      appBar: AppBar(
        // actionsPadding: EdgeInsets.only(right: 10),
        title: Text('Riverpod'),
        actions: [
          IconButton(
            onPressed: () {
              // readValue;
              final text = controller.text.trim();

              if (text.isNotEmpty) {
                notifier.add(text);

                controller.clear();
              }
              ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text("item added")));
            },
            icon: Icon(
              Icons.add,
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 20,
        children: [
          Container(
            margin: EdgeInsets.all(14),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hoverColor: Colors.blue,
                focusColor: Colors.green,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text(todos[index].id.toString()),
                  title: Text(todos[index].name),
                  trailing: IconButton(
                    onPressed: () {
                      notifier.remove(todos[index].id);
                      print("===> deleted items");
                    },
                    icon: Icon(
                      Icons.delete,
                      size: 19,
                      color: Colors.grey,
                    ),
                  ),
                );
              },
            ),
          ),
          // Center(
          //   child: Consumer(
          //     builder: (ctx, ref, child) {
          //       print("consumer function called");
          //       return Text(
          //         " count : ${ref.watch(counterPovider2)}",
          //         style: TextStyle(fontSize: 24, fontFamily: "Myfonts"),
          //       );
          //     },
          // child: ,
          //   ),
          // ),
          // tickAsync.when(
          //   data: ((val) => Text(val.toString())),
          //   error: (err, track) => Text("failed to load...!"),
          //   loading: () => CircularProgressIndicator(),
          // ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        spacing: 10,
        children: [
          // FloatingActionButton(
          //   backgroundColor: const Color.fromARGB(255, 200, 198, 198),
          //   mini: true,
          //   onPressed: () {
          //     ctrl.increment();
          //   },
          //   child: Icon(
          //     Icons.add,
          //     color: Colors.white,
          //   ),
          // ),
          // FloatingActionButton(
          //   backgroundColor: const Color.fromARGB(255, 200, 198, 198),
          //   mini: true,
          //   onPressed: () {
          //     ctrl.decrement();
          //   },
          //   child: Icon(
          //     CupertinoIcons.minus,
          //     color: Colors.white,
          //   ),
          // ),
          // FloatingActionButton(
          //   backgroundColor: const Color.fromARGB(255, 200, 198, 198),
          //   mini: true,
          //   onPressed: () {
          //     ctrl.reset();
          //   },
          //   child: Icon(
          //     Icons.refresh_outlined,
          //     color: Colors.white,
          //   ),
          // ),
        ],
      ),
    );
  }
}
