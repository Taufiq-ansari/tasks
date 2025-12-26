import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomUiDesign extends StatelessWidget {
  const CustomUiDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(),
        title: Text(
          "Pay",
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(
            width: 30.0,
          ),
          Icon(
            Icons.menu,
            color: Colors.white,
          ),
          SizedBox(
            width: 30,
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Pay Your Bills",
            style: TextStyle(fontFamily: "MyFonts", fontSize: 18),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 20),
                child: Container(
                  height: 100,
                  width: 115,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[300],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.electric_bolt,
                        color: const Color.fromARGB(255, 58, 26, 114),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Text("Electricity".toUpperCase()),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  margin: EdgeInsets.all(0),
                  height: 100,
                  width: 115,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[300],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.water_damage,
                        color: const Color.fromARGB(255, 58, 26, 114),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Text("Water".toUpperCase()),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: Container(
                  margin: EdgeInsets.all(10),
                  height: 100,
                  width: 115,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[300],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.phone_iphone_rounded,
                        color: const Color.fromARGB(255, 58, 26, 114),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Text("Mobile".toUpperCase()),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 100,
                  width: 115,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[300],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.phone,
                        color: const Color.fromARGB(255, 58, 26, 114),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Text("landline".toUpperCase()),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                margin: EdgeInsets.all(0),
                height: 100,
                width: 115,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[300],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.tv,
                      color: const Color.fromARGB(255, 58, 26, 114),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Text("cable-tv".toUpperCase()),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 100,
                width: 115,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[300],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.sports_volleyball_rounded,
                      color: const Color.fromARGB(255, 58, 26, 114),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Text("internet".toUpperCase()),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Purchase - Tickets",
            style: TextStyle(fontSize: 18, fontFamily: "MyFonts"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 0),
                  height: 100,
                  width: 115,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[300],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.movie,
                        color: const Color.fromARGB(255, 58, 26, 114),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Text("Electricity".toUpperCase()),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 100,
                width: 115,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[300],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.event,
                      color: const Color.fromARGB(255, 58, 26, 114),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Text("Water".toUpperCase()),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                height: 100,
                width: 115,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey[300],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.sports_football_rounded,
                      color: const Color.fromARGB(255, 58, 26, 114),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Text("sports".toUpperCase()),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
