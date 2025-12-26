import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  List decodeData = [];

  @override
  void initState() {
    super.initState();
    // fetchApi();
  }

  Future<void> fetchApi() async {
    var url =
        "https://api.indiatvshowz.com/v1/getVideos.php?type=song&start-index=1&max-results=20&language_id=1";
    var uri = Uri.parse(url);
    var response = await http.get(uri);
    decodeData = (jsonDecode(response.body)["data"]) as List;
//   if(response.statusCode =200){
// return ;
//   }

    print(decodeData);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: decodeData.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Text(decodeData[index]["movie_id"]),
              title: Text(decodeData[index]["video_id"]),
              subtitle: Text(decodeData[index]["video_title"]),
              //  leading: ,
            ),
          );
        },
      ),
    );
  }
}
//
