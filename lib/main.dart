import 'package:api/pages/navigation/feed_screen.dart';
import 'package:api/typesofbutton/checkbox.dart';
import 'package:api/typesofbutton/popupmenubtn.dart';
import 'package:api/typesofbutton/task_dropdown.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

          // textTheme: GoogleFonts().,
          ),
      // home: HomeScreen(),
      // initialRoute: "/",

      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (context) => DropDownTask(),
            );
          case '/feed':
            var arg = settings.arguments as Object; //data pass with ongenerated
            return MaterialPageRoute(
              builder: (context) => FeedScreen(
                data: arg.toString(),
              ),
            );

          //  default :
          //  MaterialPageRoute(builder: (context) => Page404(),);
        }
      },

      // routes: {
      //   "/": (context) => HomeScreen(),
      //   "/feed": (context) => FeedScreen(),
      // },
    );
  }
}
