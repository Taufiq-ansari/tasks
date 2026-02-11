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

  //  send  data  to the  internet

  postData() {}

//  fetch data fron internet
  fetchData() async {
    setState(() {
      isloading = true;
    });

    await Future.delayed(Duration(seconds: 2));
    final String url = "https://dummyjson.com/users#";
    final Uri uri = Uri.parse(url);
    final response = await http.get(
      uri,
    );
    if (response.statusCode == 200) {
      final decodedData = jsonDecode(response.body);
      user = decodedData["users"];
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
        leading: Text("Users Api"),

        // trailing: ,
      ),
      child: isloading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: user.length,
              itemBuilder: (context, index) {
                return Card(
                  // color: Colors.white70,
                  child: CupertinoListTile(
                    leading: Image.network("${user[index]["image"]}"),
                    title: Text(
                      "${user[index]["firstName"]} ${user[index]["lastName"]}",
                      style: TextStyle(
                        fontFamily: "tangerine",
                        fontSize: 20,
                      ),
                    ),
                    subtitle: Text(
                      "${user[index]["email"]}",
                      style: TextStyle(
                        // fontFamily: "Myfonts",
                        fontSize: 12,
                      ),
                    ),
                    trailing: Text(
                      "age:${user[index]["age"]}",
                      style: TextStyle(fontFamily: "tangerine", fontSize: 20),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
