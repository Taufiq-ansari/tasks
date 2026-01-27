import 'package:api/23_27jan/clone_app/constant_widget/icons.dart';
import 'package:flutter/material.dart';

class MyWhatsAppComm extends StatefulWidget {
  const MyWhatsAppComm({super.key});

  @override
  State<MyWhatsAppComm> createState() => _MyWhatsAppCommState();
}

class _MyWhatsAppCommState extends State<MyWhatsAppComm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Communities"),
        actions: [
          MyIconWidget(
            icon: Icon(Icons.search),
            color: Colors.grey,
            onTap: () {},
          ),
          MyIconWidget(
            icon: Icon(Icons.more_vert),
            color: Colors.grey,
            onTap: () {},
          ),
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
