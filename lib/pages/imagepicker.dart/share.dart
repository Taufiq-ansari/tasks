import 'package:flutter/material.dart';

class ShareContentScreen extends StatefulWidget {
  const ShareContentScreen({super.key});

  @override
  State<ShareContentScreen> createState() => _ShareContentScreenState();
}

class _ShareContentScreenState extends State<ShareContentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.share),
      ),
    );
  }
}
