import 'package:api/23_27jan/clone_app/constant_widget/icons.dart';
import 'package:api/23_27jan/clone_app/constant_widget/search.dart';
import 'package:flutter/material.dart';

class MyWhatsAppClone extends StatefulWidget {
  const MyWhatsAppClone({super.key});

  @override
  State<MyWhatsAppClone> createState() => _MyWhatsAppCloneState();
}

class _MyWhatsAppCloneState extends State<MyWhatsAppClone> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        //WhatsApp header widget....
        title: Text(
          "WhatsApp",
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontFamily: "MyFonts",
          ),
        ),
        actions: <Widget>[
          MyIconWidget(
            icon: Icon(Icons.qr_code_scanner),
            color: const Color.fromARGB(255, 132, 129, 129),
            onTap: () {},
          ),
          MyIconWidget(
            icon: Icon(Icons.camera_alt_outlined),
            color: const Color.fromARGB(255, 132, 129, 129),
            onTap: () {},
          ),
          MyIconWidget(
            icon: Icon(Icons.more_vert),
            color: const Color.fromARGB(255, 132, 129, 129),
            onTap: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          //  search widget
          Center(
            child: MySearchWidget(
              prefixIcon: Icon(Icons.search),
              hintText: "Ask Meta AI or Search",
              color: Colors.black,
            ),
          ),

//row for tabbar...
// TabBar(tabs: tabs)

          //multiple widget....
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              // physics: NeverScrollableScrollPhysics(),
              itemCount: 30,
              itemBuilder: (context, index) {
                return Container(
                  height: 60,
                  child: ListTile(
                    dense: true,
                    onTap: () {},
                    splashColor: const Color.fromARGB(255, 136, 145, 137)
                        .withOpacity(0.3),
                    leading: CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 237, 233, 232),
                      child: Text(
                        "${index + 1}",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 118, 113, 113),
                        ),
                      ),
                    ),
                    title: Text("Username..."),
                    subtitle: Text("Typing..."),
                    trailing: Text("3:18 PM"),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
              color: const Color.fromARGB(255, 96, 93, 93),
            ),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.update,
              color: const Color.fromARGB(255, 96, 93, 93),
            ),
            label: "Updates",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.group_sharp,
              color: Color.fromARGB(255, 96, 93, 93),
            ),
            label: "communities",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.call_sharp,
              color: Color.fromARGB(255, 96, 93, 93),
            ),
            label: "Calls",
          ),
        ],
      ),
    );
  }
}
