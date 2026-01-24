// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  final String imageUrl =
      "https://wallpapers.com/images/hd/cool-boy-anime-satoru-gojo-8xx0d4uei1zdsfh5.jpg";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 250,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue[50],
        ),
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
                margin: EdgeInsets.zero,
                accountName: Text(
                  "Taufiq",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "MyFonts",
                  ),
                ),
                accountEmail: Text(
                  "taufiqansari145@gmail.com",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "MyFonts",
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text(
                "Home",
                textScaleFactor: 0.8,
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text(
                "Profile",
                textScaleFactor: 0.8,
              ),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text(
                "Contact-us",
                textScaleFactor: 0.8,
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                "Setting",
                textScaleFactor: 0.8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
