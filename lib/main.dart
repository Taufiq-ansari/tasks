import 'package:api/23_28jan/clone_app/whatapp.dart';
import 'package:api/pages/navigation/feed_screen.dart';
import 'package:api/pages/themechange.dart/themeclass.dart';
import 'package:api/quiz_app/quizlist.dart';
import 'package:flutter/material.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //  theme manage from here ....
      theme: Theme.of(context).copyWith(
        //  change  text-theme
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 20),
        ),
      ),
      // ThemeData(
      //   textTheme: TextTheme(displayMedium: TextStyle(fontSize: 60)),
      //   //  fontfamily change  in whole app
      //   fontFamily: "MyFonts",
      // ),

      darkTheme: Themes.lightheme,

// theme mode change directly from here...
      themeMode: ThemeMode.dark,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (context) => MyQuizAppScreen(),
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
