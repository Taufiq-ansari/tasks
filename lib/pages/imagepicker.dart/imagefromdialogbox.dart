import 'package:flutter/material.dart';

class ImageFromDialogScreen extends StatefulWidget {
  const ImageFromDialogScreen({super.key});

  @override
  State<ImageFromDialogScreen> createState() => _ImageFromDialogScreenState();
}

class _ImageFromDialogScreenState extends State<ImageFromDialogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image_picker"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   SnackBar(
                  //     content: Text("currently not working yet"),
                  //   ),
                  // );

                  showGeneralDialog(
                    context: context,
                    pageBuilder: (context, _, __) {
                      return SizedBox.expand(
                        child: Container(
                          color: Colors.grey,
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              //imag....
                              Expanded(
                                child: FlutterLogo(
                                  size: 60,
                                ),
                              ),
                              //elevated- Button...
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text("successfully remove "),
                                    ),
                                  );
                                },
                                child: Icon(Icons.camera),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Text('button'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
