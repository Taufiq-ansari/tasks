import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({super.key});

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  ImagePicker _picker = ImagePicker();
  File? _imageFile;

// using image-picker from function
  pickImage({required ImageSource imageSource}) async {
    XFile? image = await _picker.pickImage(source: imageSource);

    print(image);

    setState(() {
      _imageFile = File(image!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image picker"),
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.grey[100],
        ),
        child: Column(
          children: [
            // image file...
            _imageFile == null
                ? Text("no image found")
                : Image.file(_imageFile!),
            Text("box"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          print(" pressed btn");
          // XFile? _image = await _picker.pickImage(source: ImageSource.camera);
          // print(_image);
          // setState(() {
          //   _imageFile = File(_image!.path);
          // });

          pickImage(imageSource: ImageSource.camera);
          setState(() {});
        },
        icon: Icon(Icons.photo_camera_front_sharp),
        label: Text("Pick"),
      ),
    );
  }
}
