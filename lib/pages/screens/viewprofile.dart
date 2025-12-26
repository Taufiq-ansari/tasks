import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ViewProfileScreen extends StatelessWidget {
  const ViewProfileScreen({super.key});

  final imageUrl = "assets/images/pawanflutter.jpeg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.light,
          statusBarColor: Colors.black,
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
        title: Text(
          "View Profile",
          style: TextStyle(color: Colors.white),
        ),
        // backgroundColor: Colors.black,

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Row(
              children: [
                Icon(
                  Icons.search_rounded,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 15.0,
                ),
                Icon(
                  Icons.more_vert_outlined,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Text(
            "Pavan Kumar",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "MyFonts",
              fontSize: 20.0,
            ),
          ),
          Text(
            "Developer",
            style: TextStyle(
              fontSize: 15.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icons
              Icon(Icons.message),
              SizedBox(
                width: 10.0,
              ),

              // CircleAvatar image
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                padding: EdgeInsets.all(2.0),
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage(imageUrl),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),

              // icons
              Icon(
                Icons.phone,
              ),
            ],
          ),
          SizedBox(
            height: 22.0,
          ),
          Divider(
            thickness: 0.4,
          ),
          SizedBox(
            height: 16.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    "1.5K",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Posts"),
                ],
              ),
              Column(
                children: [
                  Text(
                    "2.5K",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Followers"),
                ],
              ),
              Column(
                children: [
                  Text(
                    "10K",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Comments"),
                ],
              ),
              Column(
                children: [
                  Text(
                    "1.2K",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("Followings"),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 16.0,
          ),
          Divider(
            thickness: 0.4,
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            "Google Developer Expert for Flutter",
            style: TextStyle(fontSize: 12.0),
          ),
          Text(
            "Passionate #Flutter,#Android Developer",
            style: TextStyle(fontSize: 13),
          ),
          Text(
            "#Entrepreneur  #Youtube",
            style: TextStyle(fontSize: 12.0),
          ),
          SizedBox(
            height: 16.0,
          ),
          Divider(
            thickness: 0.4,
          ),
          SizedBox(
            height: 16.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Website",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "about.me/imthepk",
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "Location",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "New Delhi",
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            "YouTube",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "youtube.com/mtechviral",
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Facebook",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "fb.com/imthepk",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Phone",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "+91762397xxxx",
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 22.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Email",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "mtechviral@gmil.com",
                                ),
                              ],
                            ),
                          ],
                        ),
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
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        onPressed: () {},
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 77, 93, 101),
                Colors.black,
              ],
            ),
            shape: BoxShape.circle,
          ),
          constraints: BoxConstraints.expand(),
          child: Icon(
            Icons.person_add_rounded,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
//
