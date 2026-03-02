import 'dart:io';

import 'package:audioplayers/audioplayers.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_gallery_saver_plus/image_gallery_saver_plus.dart';
import 'package:image_picker/image_picker.dart';

import 'package:video_player/video_player.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({super.key});

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  ImagePicker _picker = ImagePicker();
  File? _imageFile;
  File? _videoPlayer;
  VideoPlayerController? _videoPlayerController;

  AudioPlayer _audioPlayer = AudioPlayer();
  String? _audioFilePath;
  bool isImagePicked = true;

// using image-picker from function
  //======> imageMethod
  pickImage({required ImageSource imageSource}) async {
    XFile? image = await _picker.pickImage(source: imageSource);

    if (image == null) return;

    try {
      // save  image to
      final saveImage = await ImageGallerySaverPlus.saveFile(image.path);

      print("==> Saved Image : $saveImage");
      await _videoPlayerController?.dispose();
      _videoPlayer = null;
      _videoPlayerController = null;
      print(image.path);

      setState(() {
        _imageFile = File(image.path);
      });
    } catch (e) {
      print(" Error $e");
    }
  }

  //=====> Video player

  videoPlayerFuntion({required ImageSource imageSource}) async {
    final XFile? video = await _picker.pickVideo(source: imageSource);

    if (video == null) {
      return;
    }
    try {
      final saveVideo = await ImageGallerySaverPlus.saveFile(video.path);

      print("===> saveVideo  $saveVideo");
      _videoPlayer = File(video.path);

      await _videoPlayerController?.dispose();
      _videoPlayerController = VideoPlayerController.file(_videoPlayer!);

      await _videoPlayerController!.initialize();

      print(video.path);
      setState(() {
        _imageFile = null;
      });
    } catch (e) {
      print("=====> Video Error : $e");
    }
  }

  /// Audio player
  ///
  ///
  playAudio(String filePath) {
    DeviceFileSource deviceFileSource = DeviceFileSource(filePath);
    _audioPlayer.play(deviceFileSource);
  }

  stopAudio() {
    _audioPlayer.stop();
  }

  pickandAudio() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      String filePath = result.files.single.path!;
      await _videoPlayerController?.dispose();
      _videoPlayer = null;
      _videoPlayerController = null;

      setState(() {
        _imageFile = null;
        _audioFilePath = filePath;
      });
      playAudio(filePath);
    } else {
      //user cancel the picker
    }
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image picker"),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.grey[100],
            ),
            child: Container(
              height: 280,
              width: 280,
              child: (_imageFile != null)
                  ? Image.file(_imageFile!)
                  : (_videoPlayerController != null &&
                          _videoPlayerController!.value.isInitialized)
                      ? AspectRatio(
                          aspectRatio:
                              _videoPlayerController!.value.aspectRatio,
                          child: VideoPlayer(_videoPlayerController!),
                        )
                      : (_audioFilePath != null)
                          ? Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  " 'playing : ${_audioFilePath!.split('/').last}",
                                ),
                                const SizedBox(),
                                ElevatedButton(
                                  onPressed: () {

                                    /// when user click on stop  not toggle ...
                                    stopAudio();
                                  },
                                  child: Text("stop"),
                                ),
                              ],
                            )
                          : Center(
                              child: Text(
                                "no image found",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontFamily: 'MyFonts',
                                ),
                              ),
                            ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          if (_videoPlayer != null && _videoPlayerController != null)
            ElevatedButton(
              onPressed: () {
                if (_videoPlayerController!.value.isPlaying &&
                    _videoPlayer != null &&
                    _videoPlayerController!.value.isInitialized) {
                  _videoPlayerController!.pause();
                } else {
                  _videoPlayerController!.play();
                }

                setState(() {});
              },
              child: Text(
                _videoPlayerController!.value.isPlaying ? "pause" : "play",
              ),
            ),
          // (_imageFile != null && _videoPlayer != null)
          //     ? CircularProgressIndicator()
          // :
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.blue),
            ),
            onPressed: () async {
              if (isImagePicked) {
                await pickImage(imageSource: ImageSource.gallery);
              } else if (!isImagePicked) {
                videoPlayerFuntion(
                  imageSource: ImageSource.gallery,
                );
              } else {
                // audio picker...
                await pickandAudio();
              }
              setState(() {
                isImagePicked = !isImagePicked;
              });

              // await ImageGallerySaverPlus.saveImage(_imageFile);
              print("download");
            },
            child: Text(
              "File",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.extended(
            onPressed: () async {
              print(" pressed btn");
              // XFile? _image = await _picker.pickImage(source: ImageSource.camera);
              // print(_image);
              // setState(() {
              //   _imageFile = File(_image!.path);
              // });

 ///=====>>>>>audio function called in image button just for texting               
              pickandAudio();
              // pickImage(imageSource: ImageSource.camera);
              setState(() {});
            },
            icon: Icon(Icons.photo_camera_front_sharp),
            label: Text("Pick"),
          ),
          FloatingActionButton.extended(
            onPressed: () async {
              print(" pressed btn");
              // XFile? _image = await _picker.pickImage(source: ImageSource.camera);
              // print(_image);
              // setState(() {
              //   _imageFile = File(_image!.path);

              videoPlayerFuntion(imageSource: ImageSource.camera);
              setState(() {});
            },
            icon: Icon(Icons.video_collection_outlined),
            label: Text("video"),
          ),
        ],
      ),
    );
  }
}
