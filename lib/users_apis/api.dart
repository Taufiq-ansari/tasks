import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class usersScreen extends StatefulWidget {
  const usersScreen({super.key});

  @override
  State<usersScreen> createState() => _usersScreenState();
}

class _usersScreenState extends State<usersScreen> {
  List user = [];
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    final String url = "https://dummyjson.com/users#";
    final Uri uri = Uri.parse(url);
    final response = await http.get(uri);
    final decodedData = jsonDecode(response.body);
    user = decodedData["users"];
    print(user);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "User Api",
            style: TextStyle(
                // fontFamily: "Myfonts",

                ),
          ),
          actions: [
            Icon(
              Icons.more_vert_outlined,
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: user.length,
          itemBuilder: (context, snapshot) {
            return Text("${user[snapshot]["lastName"]}");
          },
        ));
  }
}
