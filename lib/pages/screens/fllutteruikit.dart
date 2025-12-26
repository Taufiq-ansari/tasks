import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomHomePage extends StatelessWidget {
  const CustomHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              width: 400,
              height: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(10.0),
                ),
                gradient: LinearGradient(
                  colors: [
                    const Color.fromARGB(255, 40, 48, 52),
                    Colors.black,
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      Column(
                        children: [
                          Text(
                            "Hi, Taufiq",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Welcome to Flutter Uikit",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.more_vert_outlined,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: ClipRRect(
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            hintText: "Find my products",
                            suffixIcon: Icon(Icons.menu),
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Text("welcome"),
            Container(
              margin: EdgeInsets.only(top: 200, left: 10.0, right: 10.0),
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: Color.fromARGB(255, 169, 163, 163),
                  ),
                ],
                color: Colors.white,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            radius: 24,
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                          ),
                          Text("friends".toUpperCase()),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.orange,
                            radius: 24,
                            child: Icon(
                              Icons.group,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "groups".toUpperCase(),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.purple,
                            radius: 24,
                            child: Icon(
                              Icons.location_on,
                              color: Colors.white,
                            ),
                          ),
                          Text("nearby".toUpperCase()),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor:
                                const Color.fromARGB(255, 11, 18, 239),
                            radius: 24,
                            child: Icon(
                              Icons.telegram_outlined,
                              color: Colors.white,
                            ),
                          ),
                          Text("moment".toUpperCase()),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor:
                                const Color.fromARGB(255, 227, 38, 25),
                            radius: 24,
                            child: Icon(
                              Icons.photo,
                              color: Colors.white,
                            ),
                          ),
                          Text("album".toUpperCase()),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor:
                                const Color.fromARGB(255, 11, 94, 13),
                            radius: 24,
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                          ),
                          Text("likes".toUpperCase()),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.lightGreenAccent,
                            radius: 24,
                            child: Icon(
                              Icons.message,
                              color: Colors.white,
                            ),
                          ),
                          Text("articles".toUpperCase()),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.yellow[600],
                            radius: 24,
                            child: Icon(
                              Icons.message,
                              color: Colors.white,
                            ),
                          ),
                          Text("reviews".toUpperCase()),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor:
                                const Color.fromARGB(255, 15, 179, 225),
                            radius: 24,
                            child: Icon(
                              Icons.sports_football_rounded,
                              color: Colors.white,
                            ),
                          ),
                          Text("person"),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor:
                                const Color.fromARGB(255, 237, 57, 63),
                            radius: 24,
                            child: Icon(
                              Icons.star,
                              color: Colors.white,
                            ),
                          ),
                          Text("fav"),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.pink,
                            radius: 24,
                            child: Icon(
                              CupertinoIcons.news,
                              color: Colors.white,
                            ),
                          ),
                          Text("blogs"),
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.brown,
                            radius: 24,
                            child: Icon(
                              Icons.wallet,
                              color: Colors.white,
                            ),
                          ),
                          Text("wallet"),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 15.0),
              margin: EdgeInsets.only(top: 520, left: 10.0, right: 10.0),
              height: 90,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 169, 163, 163),
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Balance"),
                      Container(
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.black,
                        ),
                        child: Center(
                          child: Text(
                            "500 point",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "₹1000",
                    style: TextStyle(fontSize: 24.0, color: Colors.green),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
