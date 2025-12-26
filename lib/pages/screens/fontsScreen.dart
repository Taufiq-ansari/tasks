import 'package:flutter/material.dart';

class FontsScreen extends StatelessWidget {
  const FontsScreen({super.key});

  // final imageUrl = "assets/images/fluttericon.jpeg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // images

          // Image(
          //   image: AssetImage(imageUrl),
          // ),

          Center(
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(20),
                child: Image.network(
                  "https://static.wikia.nocookie.net/naruto/images/d/dc/Naruto%27s_Sage_Mode.png/revision/latest/scale-to-width-down/985?cb=20150124180545",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          // text widget...
          Text(
            "NARUTO UZUMAKI",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: "MyFonts",
            ),
          )
        ],
      ),
    );
  }
}
