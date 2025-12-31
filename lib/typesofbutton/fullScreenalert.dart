import 'package:flutter/material.dart';

class DisplayFullScreenAlert extends StatelessWidget {
  const DisplayFullScreenAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("fullscreen -alertbox"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                showGeneralDialog(
                  context: context,
                  pageBuilder: (context, _, __) {
                    return SizedBox.expand(
                      child: Column(
                        children: [
                          Expanded(
                            flex: 19,
                            child: FlutterLogo(
                              size: 60,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    "execute full screen alert box",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  backgroundColor: Colors.white,
                                  duration: Duration(milliseconds: 2000),
                                  action: SnackBarAction(
                                    backgroundColor: Colors.amber,
                                    textColor: Colors.black,
                                    label: "clear",
                                    onPressed: () {},
                                  ),
                                ),
                              );
                              Navigator.of(context).pop();
                            },
                            child: Text("dismiss"),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Text("alert-box"),
            ),
          ),
        ],
      ),
    );
  }
}
