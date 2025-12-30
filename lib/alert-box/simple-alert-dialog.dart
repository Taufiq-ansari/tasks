import 'package:flutter/material.dart';

class SimpleAlertDialog extends StatelessWidget {
  const SimpleAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('alert dialog'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("simple alert"),
                      content: Text("are you sure to exit"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("Yes"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text("No"),
                        ),
                      ],
                    );
                  });
            },
            child: Text(
              "simple alert dialog",
            ),
          ),
        ));
  }
}
