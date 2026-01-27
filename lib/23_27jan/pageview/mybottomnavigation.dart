import 'package:flutter/material.dart';

class MyBottomNavigation extends StatelessWidget {
  MyBottomNavigation({
    super.key,
    required this.onTapChange,
    required this.myCurrentIndex,
  });
  final ValueChanged<int> onTapChange;
  final int myCurrentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTapChange,
      //  (value) {
      //   myCurrentIndex = value;
      //   print(myCurrentIndex);
      //   setState(() {});
      // },
      type: BottomNavigationBarType.shifting,
      showSelectedLabels: false,
      currentIndex: myCurrentIndex,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          backgroundColor: const Color.fromARGB(255, 47, 67, 48),
          icon: Icon(Icons.home),
          label: "home",
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.green,
          icon: Icon(Icons.info),
          label: "info",
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.blue,
          icon: Icon(Icons.contact_mail),
          label: "contact",
        ),
      ],
    );
  }
}
