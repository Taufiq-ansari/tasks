import 'package:api/23_28jan/clone_app/constant_widget/custom_container.dart';
import 'package:api/23_28jan/clone_app/constant_widget/customlisttile.dart';
import 'package:api/23_28jan/clone_app/constant_widget/icons.dart';
import 'package:flutter/material.dart';

class MyWhatsAppStatus extends StatefulWidget {
  const MyWhatsAppStatus({super.key});

  @override
  State<MyWhatsAppStatus> createState() => _MyWhatsAppStatusState();
}

class _MyWhatsAppStatusState extends State<MyWhatsAppStatus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Updates",
          style: TextStyle(fontFamily: "MyFonts"),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //text update..
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Text(
              "Status",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          // row  for status...
          MyWhatsappCustomContainer(
            height: 140,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 120,
                    width: 80,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 233, 237, 239),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 50,
                        children: [
                          CircularProgressIndicator(
                            backgroundColor: Colors.green,
                            strokeWidth: 2.0,
                            value: 0.0,
                          ),
                          Text(
                            "name",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Channels",
                  style: TextStyle(color: Colors.black, fontFamily: "MyFonts"),
                ),
                Container(
                  height: 24,
                  width: 70,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 233, 231, 231),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Center(
                    child: Text(
                      "Explore",
                      style:
                          TextStyle(color: Colors.black, fontFamily: "MyFonts"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              // physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return MyWhatsappCustomContainer(
                  height: 60,
                  child: MyCustomListtile(
                    index: index + 1,
                    onTap: () {},
                    title: Text("Channels"),
                    subtitle: Text("flutter UI/UX"),
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
            child: Icon(
              Icons.edit,
              color: const Color.fromARGB(255, 90, 89, 89),
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
