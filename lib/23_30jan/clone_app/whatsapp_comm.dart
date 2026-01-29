import 'package:api/23_30jan/clone_app/constant_widget/custom_container.dart';
import 'package:api/23_30jan/clone_app/constant_widget/customlisttile.dart';
import 'package:api/23_30jan/clone_app/constant_widget/icons.dart';
import 'package:flutter/material.dart';

class MyWhatsAppComm extends StatefulWidget {
  const MyWhatsAppComm({super.key});

  @override
  State<MyWhatsAppComm> createState() => _MyWhatsAppCommState();
}

class _MyWhatsAppCommState extends State<MyWhatsAppComm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Communities"),
        actions: [
          MyIconWidget(
            icon: Icon(Icons.search),
            color: Colors.grey,
            onTap: () {},
          ),
          MyIconWidget(
            icon: Icon(Icons.more_vert),
            color: Colors.grey,
            onTap: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // New community
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                spacing: 20,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 221, 221, 221),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(Icons.group_sharp, color: Colors.white),
                  ),
                  Text(
                    "New community",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            Divider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  child: ListView.builder(
                    shrinkWrap: true,
                    // physics: NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 60,
                        child: ListTile(
                          dense: true,
                          onTap: () {},
                          splashColor:
                              const Color.fromARGB(255, 136, 145, 137)
                                  .withOpacity(0.3),
                          leading: CircleAvatar(
                            backgroundColor:
                                const Color.fromARGB(255, 237, 233, 232),
                            child: Icon(Icons.spatial_audio_off_outlined),
                          ),
                          title: Text("Username..."),
                          subtitle: Text("Typing..."),
                          trailing: Text("3:18 PM"),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Row(
                    spacing: 30,
                    children: [
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 14,
                      ),
                      Text(
                        "View all",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 11.0,
                          fontFamily: "MyFonts",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    spacing: 20,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 221, 221, 221),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.group_sharp, color: Colors.white),
                      ),
                      Text(
                        "hack2skills",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Container(
                  height: 200,
                  child: ListView.builder(
                    shrinkWrap: true,
                    // physics: NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return MyWhatsappCustomContainer(
                        height: 60,
                        child: MyCustomListtile(
                          index: index,
                          onTap: () {},
                          title: Text("anyone up for an games"),
                          subtitle: Text("Typing..."),
                          trailing: Text("3:18 PM"),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Row(
                    spacing: 30,
                    children: [
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 14,
                      ),
                      Text(
                        "View all",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 11.0,
                          fontFamily: "MyFonts",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
