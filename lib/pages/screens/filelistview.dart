import 'package:api/pages/seperate_screen/androidscreen.dart';
import 'package:api/pages/seperate_screen/biodataScreeen.dart';
import 'package:api/pages/seperate_screen/browserscreen.dart';
import 'package:api/pages/seperate_screen/callofduty.dart';
import 'package:api/pages/seperate_screen/dcimscreen.dart';
import 'package:api/pages/seperate_screen/dcoderscreen.dart';
import 'package:api/pages/seperate_screen/facebookScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewFolderSCreen extends StatefulWidget {
  ListViewFolderSCreen({super.key});

  @override
  State<ListViewFolderSCreen> createState() => _ListViewFolderSCreenState();
}

class _ListViewFolderSCreenState extends State<ListViewFolderSCreen> {
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
            height: 20.0,
            thickness: 6,
            color: const Color.fromARGB(255, 39, 40, 40),
          ),
// interenal storage text and  icons
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
            thickness: 0.1,
          ),
          //android folder
          androidFolderWidget(),
          Divider(
            thickness: 0.2,
            indent: 20,
          ),
          BiodataFolderWidget(),
          Divider(
            thickness: 0.2,
            indent: 20,
          ),
          //  browser folder
          BrowserFolderScreen(),
          Divider(
            thickness: 0.2,
            indent: 20,
          ),
          CallofDutyScreen(),
          Divider(
            thickness: 0.2,
            indent: 20,
          ),
          FacebookScreen(),
          Divider(
            thickness: 0.2,
            indent: 20,
          ),
          DcimScreeenWidget(),
          Divider(
            indent: 20,
            thickness: 0.2,
          ),
          DcoderScreenWidget(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        onPressed: () {},
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(50),
          ),
          constraints: BoxConstraints.expand(),
          child: Icon(
            Icons.cleaning_services_rounded,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
