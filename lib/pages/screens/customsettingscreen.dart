import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomSettingScreen extends StatelessWidget {
  const CustomSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.dark,
        ),
        title: Text(
          "Settings",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: "MyFonts",
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 239, 237, 237),
              ),
              margin: EdgeInsets.all(10),
              height: 35,
              child: TextField(
                cursorHeight: 16,
                cursorColor: const Color.fromARGB(255, 198, 196, 196),
                decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  // disabledBorder: InputBorder.none,
                  contentPadding: EdgeInsets.all(1),

                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  hintText: "Search settings",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Divider(
              height: 20,
              thickness: 0.2,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.info_outline,
                      color: const Color.fromARGB(255, 133, 179, 217),
                    ),
                    Text("About phone"),
                    Text(
                      "MIUI 10 Global 9.2.28",
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Color.fromARGB(255, 201, 196, 196),
                      size: 18,
                    ),
                  ],
                ),
                Divider(
                  indent: 70,
                  height: 20,
                  thickness: 0.2,
                ),
                // System apps updater
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.file_upload_outlined,
                        color: const Color.fromARGB(255, 215, 171, 136),
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      Text("System apps updater"),
                      SizedBox(
                        width: 150.0,
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Color.fromARGB(255, 201, 196, 196),
                        size: 18,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              height: 30.0,
              thickness: 10,
              color: const Color.fromARGB(255, 243, 245, 247),
            ),
            // wireless & networks
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "wireless & networks".toUpperCase(),
                style: TextStyle(
                  fontFamily: "MyFonts",
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ),
            Divider(
              indent: 20,
              height: 20,
              thickness: 0.2,
            ),
            // SIM cards & mobile networks
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.file_copy_outlined,
                    color: const Color.fromARGB(255, 151, 200, 240),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Text("SIM cards & mobile networks"),
                  SizedBox(
                    width: 98.0,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18,
                    color: Color.fromARGB(255, 201, 196, 196),
                  ),
                ],
              ),
            ),

            Divider(
              indent: 70,
              height: 20,
              thickness: 0.2,
            ),
            // wifi......
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.wifi,
                    color: const Color.fromARGB(255, 122, 165, 201),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Text("WI-Fi"),
                  SizedBox(
                    width: 225.0,
                  ),
                  Text(
                    "Off",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18,
                    color: Color.fromARGB(255, 201, 196, 196),
                  ),
                ],
              ),
            ),
            Divider(
              indent: 70,
              height: 20,
              thickness: 0.2,
            ),
            // Bluetooth device....
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.bluetooth,
                    color: const Color.fromARGB(255, 136, 145, 208),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Text("Bluetooth"),
                  SizedBox(
                    width: 195.0,
                  ),
                  Text(
                    "Off",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18,
                    color: Color.fromARGB(255, 201, 196, 196),
                  ),
                ],
              ),
            ),
            Divider(
              indent: 70,
              height: 20.0,
              thickness: 0.2,
            ),
// portable device
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    CupertinoIcons.infinite,
                    color: const Color.fromARGB(255, 240, 193, 140),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Text("Portable devices"),
                  SizedBox(
                    width: 150.0,
                  ),
                  Text(
                    "Off",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18,
                    color: const Color.fromARGB(255, 201, 196, 196),
                  ),
                ],
              ),
            ),
            Divider(
              indent: 70,
              height: 20.0,
              thickness: 0.2,
            ),
            // vpn
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.vpn_key,
                    color: const Color.fromARGB(255, 149, 182, 225),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Text("VPN"),
                  SizedBox(
                    width: 230.0,
                  ),
                  Text(
                    "Off",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18,
                    color: Color.fromARGB(255, 201, 196, 196),
                  ),
                ],
              ),
            ),
            Divider(
              indent: 70,
              height: 20.0,
              thickness: 0.2,
            ),
            // data usage
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.data_usage_outlined,
                    color: const Color.fromARGB(255, 151, 200, 240),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Text("Data usage"),
                  SizedBox(
                    width: 215.0,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18,
                    color: Color.fromARGB(255, 201, 196, 196),
                  ),
                ],
              ),
            ),
            Divider(
              indent: 70,
              height: 20.0,
              thickness: 0.2,
            ),
//more...
            Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.more_horiz,
                    color: const Color.fromARGB(255, 134, 144, 153),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),
                  Text("More"),
                  SizedBox(
                    width: 255.0,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18,
                    color: Color.fromARGB(255, 201, 196, 196),
                  ),
                ],
              ),
            ),
            Divider(
              height: 20.0,
              thickness: 10,
              color: const Color.fromARGB(255, 237, 241, 244),
            ),

            //personal
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 5),
              child: Text(
                "personal".toUpperCase(),
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Divider(
              indent: 20,
              height: 20.0,
              thickness: 0.2,
            ),
          ],
        ),
      ),
    );
  }
}
