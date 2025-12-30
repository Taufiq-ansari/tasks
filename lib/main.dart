import 'package:api/pages/listview/splashscreen.dart';
import 'package:api/pages/navigation/feed_screen.dart';
import 'package:api/pages/themechange.dart/themeclass.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes.lightheme,
      darkTheme: Themes.darktheme,

      themeMode: ThemeMode.dark,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (context) => SplashScreen(),
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
        return null;
      },

      // routes: {
      //   "/": (context) => HomeScreen(),
      //   "/feed": (context) => FeedScreen(),
      // },
    );
  }
}
