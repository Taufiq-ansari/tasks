import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FileGRidViewScreen extends StatelessWidget {
  const FileGRidViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 60.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //  menu icon
                Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                // clock icon
                Icon(
                  Icons.watch_later_outlined,
                  color: Colors.white,
                ),

                // folder icon
                Icon(
                  CupertinoIcons.folder,
                  color: Colors.blue,
                ),
                // search icon
                Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
            thickness: 0.2,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // icons
                Row(
                  children: [
                    Stack(
                      children: [
                        Center(
                          child: Container(
                            height: 50,
                            width: 50,
                            // decoration: BoxDecoration(color: Colors.white),
                            child: CircularProgressIndicator(
                              backgroundColor: Colors.white,
                              color: Colors.amber,
                              value: 0.93,
                              strokeWidth: 2,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 13.0, top: 15.0),
                          child: Text(
                            "93%",
                            style: TextStyle(color: Colors.amber),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Storage",
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: "MyFonts",
                            color: Colors.white,
                          ),
                        ),
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "110.74GB",
                                style: TextStyle(
                                  color: Colors.amber,
                                  fontSize: 10,
                                ),
                              ),
                              TextSpan(
                                text: "/ 118.49GB",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                // aroow icon
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: const Color.fromARGB(255, 162, 159, 159),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 6,
            height: 10,
            color: const Color.fromARGB(255, 26, 26, 26),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Internal storage >",
                  style: TextStyle(color: Colors.white54),
                ),

                //icon of grid folder
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.grid_view_outlined,
                      color: const Color.fromARGB(255, 206, 202, 202),
                      size: 16,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    // icon of menu...
                    Icon(
                      Icons.more_vert,
                      color: Color.fromARGB(255, 206, 202, 202),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            thickness: 0.2,
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.folder,
                      color: Colors.amber,
                      size: 60,
                    ),
                    Text(
                      "Android",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.folder,
                      color: Colors.amber,
                      size: 60,
                    ),
                    Text(
                      "Biodata",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.folder,
                      color: Colors.amber,
                      size: 60,
                    ),
                    Text(
                      "browser",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.folder,
                        color: Colors.amber,
                        size: 60,
                      ),
                      Text(
                        "com.activisio",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                      Text(
                        "n.callofduty.s",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.folder,
                        color: Colors.amber,
                        size: 60,
                      ),
                      Text(
                        "com.faceboo",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                      Text(
                        "k.orca",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.folder,
                        color: Colors.amber,
                        size: 60,
                      ),
                      Text(
                        "Creative-",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                      Text(
                        "biodataMaker",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Icon(
                      Icons.folder,
                      color: Colors.amber,
                      size: 60,
                    ),
                    Text(
                      "DCIM",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.folder,
                      color: Colors.amber,
                      size: 60,
                    ),
                    Text(
                      "Dcoder",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.folder,
                          color: Colors.amber,
                          size: 60,
                        ),
                        Text(
                          "Download",
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                      ],
                    ),
                    Positioned(
                      top: 34,
                      left: 8,
                      child: Container(
                        height: 14,
                        width: 14,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.download,
                            size: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.folder,
                      color: Colors.amber,
                      size: 60,
                    ),
                    Text(
                      "Dragon Ball Z",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.folder,
                        color: Colors.amber,
                        size: 60,
                      ),
                      Text(
                        "Lost in Space",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                      Text(
                        "S01 E01-10",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.folder,
                        color: Colors.amber,
                        size: 60,
                      ),
                      Text(
                        "Lost in Space",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                      Text(
                        "S02 E01-10",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 2.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.folder,
                        color: Colors.amber,
                        size: 60,
                      ),
                      Text(
                        "MEGA",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 2.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.folder,
                        color: Colors.amber,
                        size: 60,
                      ),
                      Text(
                        "MidasOversea",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 2.0),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.folder,
                            color: Colors.amber,
                            size: 60,
                          ),
                          Text(
                            "MIUI",
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ],
                      ),
                      Positioned(
                        top: 30,
                        left: 8,
                        child: Container(
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.deepOrangeAccent,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.abc,
                              color: Colors.white,
                              size: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.folder,
                        color: Colors.amber,
                        size: 60,
                      ),
                      Text(
                        "MiVideoG-",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                      Text(
                        "lobal",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.folder,
                        color: Colors.amber,
                        size: 60,
                      ),
                      Text(
                        "Music",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.folder,
                        color: Colors.amber,
                        size: 60,
                      ),
                      Text(
                        "MXShare",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.folder,
                        color: Colors.amber,
                        size: 60,
                      ),
                      Text(
                        "PSP",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 26.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.folder,
                        color: Colors.amber,
                        size: 60,
                      ),
                      Text(
                        "sacred",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                      Text(
                        "Games sea-",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.folder,
                        color: Colors.amber,
                        size: 60,
                      ),
                      Text(
                        "Subtitles",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.folder,
                        color: Colors.amber,
                        size: 60,
                      ),
                      Text(
                        "systemui",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.folder,
                            color: Colors.amber,
                            size: 60,
                          ),
                          Text(
                            "Telegram",
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ],
                      ),
                      Positioned(
                        top: 30,
                        left: 6,
                        child: Container(
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.telegram,
                            size: 17,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.folder,
                        color: Colors.amber,
                        size: 60,
                      ),
                      Text(
                        "tencent",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Column(
                    children: [
                      Icon(
                        Icons.folder,
                        color: Colors.amber,
                        size: 60,
                      ),
                      Text(
                        "The Witcher",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        onPressed: () {},
        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
          child: Icon(
            Icons.cleaning_services_rounded,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
