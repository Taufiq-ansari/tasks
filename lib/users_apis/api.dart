import 'dart:convert';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class usersScreen extends StatefulWidget {
  const usersScreen({super.key});

  @override
  State<usersScreen> createState() => _usersScreenState();
}

class _usersScreenState extends State<usersScreen> {
  List user = [];
  bool isloading = false;
  int startIndex = 1;
  int limit = 20;

  ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      if (_controller.position.pixels >=
          _controller.position.maxScrollExtent - 200) {
        fetchData();
      }
    });
    fetchData();
  }

//  fetch data fron internet
  fetchData() async {
    if (isloading) return;

    setState(() {
      isloading = true;
    });

    // await Future.delayed(Duration(seconds: 1));

    final String url =
        "https://api.indiatvshowz.com/v1/getVideos.php?type=song&start-index=$startIndex&max-results=$limit&language_id=1";
    final Uri uri = Uri.parse(url);
    final response = await http.get(
      uri,
    );
    if (response.statusCode == 200) {
      final decodedData = jsonDecode(response.body);
      final List users = decodedData["data"];

      if (users.isEmpty) {
        isloading = true;
      } else {
        user.addAll(users);
        startIndex += limit;
      }

      print("${response.statusCode}");
      print(user);
    }
    // if you wanna find specific users address then use like this given below
    // print(user[3]["address"]["address"]);
    setState(() {
      isloading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Text("Movies Api"),

        // trailing: ,
      ),
      child: ListView.builder(
        shrinkWrap: true,
        controller: _controller,
        physics: BouncingScrollPhysics(),
        itemCount: user.length + (isloading ? 1 : 0),
        itemBuilder: (context, index) {
          if (index == user.length) {
            return Padding(
              padding: EdgeInsets.all(16),
              child: Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.grey,
                  color: Colors.blue,
                ),
              ),
            );
          }
          final jsonsecond =
              int.parse(user[index]["duration"]).toString().padLeft(2, '');
          final Duration duration = Duration(seconds: int.parse(jsonsecond));
          // final  formatter = DateFormat('HH:mm:ss').format(duration);

          final String formatter =
              "${duration.inHours.toString().padLeft(2, '0')}:"
              "${(duration.inMinutes % 60).toString().padLeft(2, '0')}:"
              "${(duration.inSeconds % 60).toString().padLeft(2, '0')}";
          // print(formatter);

          return Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 8.0),
                height: MediaQuery.of(context).size.height / 3,
                // width: MediaQuery.of(context).size.width / 0,
                decoration: BoxDecoration(
                    // color: Colors.blue,
                    // borderRadius: BorderRadius.circular(14),
                    ),
                child: Image.network(
                  user[index]["thumb_url"],
                  fit: BoxFit.fill,
                  // color: color,
                ),
              ),

              //==> for title, duration,view details.....
              Positioned(
                bottom: 0,
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white.withOpacity(0.1),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        maxLines: 1,
                        "Title: ${user[index]["video_title"]}",
                        style: TextStyle(
                          // fontFamily: "tangerine",

                          fontSize: 10,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Text(
                        "Duration: $formatter",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      Text(
                        "View: ${NumberFormat('#,##,###').format(int.parse(user[index]['view_count']))}",
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
