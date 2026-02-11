import 'package:api/state_management/provider/p_model/couter_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  // int count = 0;
  @override
  Widget build(BuildContext context) {
    print("build function");
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter app"),
      ),
      body: Consumer<CounterProvider>(
        builder: (ctx, _, __) {
          return Center(
            child: Text(
              // "Counter:${Provider.of<CounterProvider>(ctx, listen: true).getcount()}",
              "Counter: ${ctx.watch<CounterProvider>().getcount()}",
            ),
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        spacing: 10,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.grey,
            shape: CircleBorder(),
            mini: true,
            onPressed: () {
              // Provider.of<CounterProvider>(context, listen: false).increment();
              context.read<CounterProvider>().increment();
              print("==>increment button");
            },
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          FloatingActionButton(
            backgroundColor: Colors.grey,
            mini: true,
            shape: CircleBorder(),
            onPressed: () {
              // Provider.of<CounterProvider>(context, listen: false).decrement();
              context.read<CounterProvider>().decrement();
              // decrement();
              print("==>decrement button value cant be negative");
            },
            child: Icon(
              CupertinoIcons.minus,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}


