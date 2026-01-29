import 'package:api/23_28jan/clone_app/whatsapp_call.dart';
import 'package:api/23_28jan/clone_app/whatsapp_chats.dart';
import 'package:api/23_28jan/clone_app/whatsapp_comm.dart';
import 'package:api/23_28jan/clone_app/whatsapp_status.dart';
import 'package:flutter/material.dart';

class MyWhatsAppNavigate extends StatefulWidget {
  const MyWhatsAppNavigate({super.key});

  @override
  State<MyWhatsAppNavigate> createState() => _MyWhatsAppNavigateState();
}

class _MyWhatsAppNavigateState extends State<MyWhatsAppNavigate> {
  int currentIndex = 0;
  PageController _pageController = PageController();

  List<Widget> screens = [
    MyWhatsAppChats(),
    MyWhatsAppStatus(),
    MyWhatsAppComm(),
    MyWhatsAppCall(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: _pageController,
        physics: ClampingScrollPhysics(),
        onPageChanged: (index) {
          currentIndex = index;
          setState(() {});
        },
        children: screens,
      ),
      //
      // Column(
      //   children: [
      //     //  search widget
      //     Center(
      //       child: MySearchWidget(
      //         prefixIcon: Icon(Icons.search),
      //         hintText: "Ask Meta AI or Search",
      //         color: Colors.black,
      //       ),
      //     ),

      //     //row for tabbar...
      //     // TabBar(tabs: tabs)

      //     //multiple widget....
      //     Expanded(
      //       child: ListView.builder(
      //         shrinkWrap: true,
      //         // physics: NeverScrollableScrollPhysics(),
      //         itemCount: 30,
      //         itemBuilder: (context, index) {
      //           return Container(
      //             height: 60,
      //             child: ListTile(
      //               dense: true,
      //               onTap: () {},
      //               splashColor: const Color.fromARGB(255, 136, 145, 137)
      //                   .withOpacity(0.3),
      //               leading: CircleAvatar(
      //                 backgroundColor: const Color.fromARGB(255, 237, 233, 232),
      //                 child: Text(
      //                   "${index + 1}",
      //                   style: TextStyle(
      //                     color: const Color.fromARGB(255, 118, 113, 113),
      //                   ),
      //                 ),
      //               ),
      //               title: Text("Username..."),
      //               subtitle: Text("Typing..."),
      //               trailing: Text("3:18 PM"),
      //             ),
      //           );
      //         },
      //       ),
      //     ),
      //   ],
      // ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          // currentIndex = value;
          _pageController.animateToPage(
            value,
            duration: Duration(milliseconds: 200),
            curve: Curves.easeInOut,
          );
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
