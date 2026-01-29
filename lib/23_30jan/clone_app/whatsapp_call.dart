import 'package:api/23_30jan/clone_app/constant_widget/custom_container.dart';
import 'package:api/23_30jan/clone_app/constant_widget/customlisttile.dart';
import 'package:api/23_30jan/clone_app/constant_widget/icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWhatsAppCall extends StatefulWidget {
  const MyWhatsAppCall({super.key});

  @override
  State<MyWhatsAppCall> createState() => _MyWhatsAppCallState();
}

class _MyWhatsAppCallState extends State<MyWhatsAppCall> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Calls",
        ),
        actions: [
          MyIconWidget(
            icon: Icon(Icons.search),
            color: Colors.grey,
            onTap: () {},
          ),
          MyIconWidget(
            icon: Icon(Icons.more_vert_outlined),
            color: Colors.grey,
            onTap: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    // icon
                    CircleAvatar(
                      child: Icon(
                        CupertinoIcons.phone,
                        color: const Color.fromARGB(255, 129, 127, 127),
                      ),
                      backgroundColor: const Color.fromARGB(255, 236, 232, 232),
                    ),
                    // text
                    Text(
                      "call",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                Column(
                  children: [
                    // icon
                    CircleAvatar(
                      child: Icon(
                        CupertinoIcons.calendar,
                        color: const Color.fromARGB(255, 129, 127, 127),
                      ),
                      backgroundColor: const Color.fromARGB(255, 236, 232, 232),
                    ),
                    // text
                    Text(
                      "Schedule",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                Column(
                  children: [
                    // icon
                    CircleAvatar(
                      child: Icon(
                        CupertinoIcons.keyboard,
                        color: const Color.fromARGB(255, 129, 127, 127),
                      ),
                      backgroundColor: const Color.fromARGB(255, 236, 232, 232),
                    ),
                    // text
                    Text(
                      "Keypad",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                Column(
                  children: [
                    // icon
                    CircleAvatar(
                      child: Icon(
                        Icons.favorite_border,
                        color: const Color.fromARGB(255, 129, 127, 127),
                      ),
                      backgroundColor: const Color.fromARGB(255, 236, 232, 232),
                    ),
                    // text
                    Text(
                      "favorites",
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              "Recents",
              style: TextStyle(color: Colors.black, fontFamily: "MyFonts"),
            ),
            ListView.builder(
              shrinkWrap: true,
              // physics: NeverScrollableScrollPhysics(),
              itemCount: 04,
              itemBuilder: (context, index) {
                return MyWhatsappCustomContainer(
                  height: 60,
                  child: MyCustomListtile(
                    index: index + 1,
                    onTap: () {},
                    title: Text("Username..."),
                    subtitle: Text("yesturday, 21:44"),
                    trailing: Icon(Icons.phone_outlined),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(
          Icons.add_call,
          color: Colors.white,
        ),
      ),
    );
  }
}
