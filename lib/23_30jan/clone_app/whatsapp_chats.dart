import 'package:api/23_30jan/clone_app/constant_widget/custom_container.dart';
import 'package:api/23_30jan/clone_app/constant_widget/customlisttile.dart';
import 'package:api/23_30jan/clone_app/constant_widget/icons.dart';
import 'package:api/23_30jan/clone_app/constant_widget/search.dart';
import 'package:flutter/material.dart';

class MyWhatsAppChats extends StatefulWidget {
  const MyWhatsAppChats({super.key});

  @override
  State<MyWhatsAppChats> createState() => _MyWhatsAppChatsState();
}

class _MyWhatsAppChatsState extends State<MyWhatsAppChats> {
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

                //customWidget MyWhatsappCustomContainer returned...
                return MyWhatsappCustomContainer(
                  height: 60,
                  child: MyCustomListtile(
                    index: index + 1,
                    onTap: () {},
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
      floatingActionButton: Column(
        spacing: 20.0,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            mini: true,
            backgroundColor: const Color.fromARGB(255, 228, 225, 225),
            onPressed: () {},
            child: CircularProgressIndicator(
              value: 100,
              strokeWidth: 3,
              padding: EdgeInsets.all(8.0),
            ),
          ),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {},
            child: Icon(
              Icons.create_new_folder,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
