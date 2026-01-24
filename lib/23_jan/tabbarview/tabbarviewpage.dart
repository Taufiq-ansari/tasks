import 'package:flutter/material.dart';

class MyTabbarViewPage extends StatelessWidget {
  const MyTabbarViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      length: 3,
      child: Scaffold(appBar: AppBar(
        title:  Text("TABBAR"),
        bottom:TabBar(tabs:<Widget>[
    Tab(
    text: "INFO",
    ),
    Tab(
    text: "Settings",
    ),
    Tab(
    text: "Contacts",
    )
        ]),
      ),
        body: TabBarView(children: [

          Icon(Icons.info),
          Icon(Icons.settings),
          Icon(Icons.contact_emergency),
        ],
      ),
      )
    );
  }
}