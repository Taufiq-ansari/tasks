import 'dart:convert';

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
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  // send data  to the  internet

  postData() {}

//  fetch data fron internet
  fetchData() async {
    setState(() {
      isloading = true;
    });

    await Future.delayed(Duration(seconds: 2));
    final String url =
        "https://api.indiatvshowz.com/v1/getVideos.php?type=song&start-index=1&max-results=20&language_id=1";
    final Uri uri = Uri.parse(url);
    final response = await http.get(
      uri,
    );
    if (response.statusCode == 200) {
      final decodedData = jsonDecode(response.body);
      user = decodedData["data"];
      print("${response.statusCode}");
      print(user);
    } else {
      print(response.statusCode);
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
      // appBar: AppBar(
      //   title: Text(
      //     "User Api",
      //     style: TextStyle(
      //         // fontFamily: "Myfonts",

      //         ),
      //   ),
      //   actions: [
      //     Icon(
      //       Icons.more_vert_outlined,
      //     ),
      //   ],
      // ),
      navigationBar: CupertinoNavigationBar(
        leading: Text("Movies Api"),

        // trailing: ,
      ),
      child: isloading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              // physics: NeverScrollableScrollPhysics(),
              itemCount: user.length,
              itemBuilder: (context, index) {
                final DateTime duration =
                    DateTime(int.parse(user[index]["duration"].toString()));
                final dateFormat = DateFormat("HH:mm:ss");
                final formatter = dateFormat.format(duration);
                return Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 8.0),
                      height: MediaQuery.of(context).size.height / 3,
                      // width: MediaQuery.of(context).size.width / 0,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        // borderRadius: BorderRadius.circular(14),
                      ),
                      child: Image.network(
                        user[index]["thumb_url"],
                        fit: BoxFit.fill,
                      ),
                    ),
                    Positioned(
                      bottom: 25,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        //===> title
                        child: Text(
                          "title: ${user[index]["video_title"]}",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 15,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        //====> Duration
                        child: Text(
                          "duration: $formatter",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        //====> view count
                        child: Text(
                          "view count: ${NumberFormat('#,##,###').format(int.parse(user[index]['view_count']))}",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                            decoration: TextDecoration.none,
                          ),
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
