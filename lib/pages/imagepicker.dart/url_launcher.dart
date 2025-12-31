import 'package:api/pages/themechange.dart/themeclass.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherScreen extends StatefulWidget {
  const UrlLauncherScreen({super.key});

  @override
  State<UrlLauncherScreen> createState() => _UrlLauncherScreenState();
}

class _UrlLauncherScreenState extends State<UrlLauncherScreen> {
  String phoneNo = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(20.0),
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  Colors.black54,
                ),
              ),
              onPressed: () async {
                String mail =
                    "mailto:taufiqansari145@gmail.com?subject=Sample&body=TestMessage";

                final uri = Uri.parse(mail);
                await canLaunchUrl(uri)
                    ? launchUrl(uri)
                    : print("not mail found");

                // ScaffoldMessenger.of(context).showSnackBar(
                //   SnackBar(
                //     content: Text("Error: No activity found to handle intent"),
                //   ),
                // );
              },
              child: Icon(
                Icons.mail,
                color: Colors.white54,
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  Colors.black54,
                ),
              ),
              onPressed: () async {
                String dartDocUrl = "https://dart.dev/";
                final uri = Uri.parse(dartDocUrl);
                await launchUrl(uri);
              },
              child: Icon(
                Icons.double_arrow_outlined,
                color: Colors.white54,
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  Colors.black54,
                ),
              ),
              onPressed: () async {
                phoneNo = "tel: +917623978684";
                final uri = Uri.parse(phoneNo);
                await canLaunchUrl(uri) ? launchUrl(uri) : print("not launch");
              },
              child: Icon(
                Icons.phone,
                color: Colors.white54,
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  Colors.black54,
                ),
              ),
              onPressed: () async {
                String flutterDocUrl = "https://flutter-tutorial.net/";
                final uri = Uri.parse(flutterDocUrl);
                await canLaunchUrl(uri)
                    ? launchUrl(uri)
                    : print("not working properly");
              },
              child: Icon(
                Icons.flutter_dash,
                color: Colors.white54,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Themes.lightheme.primaryColor,
        onPressed: () async {
          print("pressed");

          await Share.share("https://flutter-tutorial.net/");

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                "currently not working",
              ),
            ),
          );
        },
        child: Icon(
          Icons.ios_share_outlined,
          color: Colors.white60,
        ),
      ),
    );
  }
}
