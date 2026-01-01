import 'package:api/dice-roll/dice.dart';
import 'package:api/emi_calculator/calculator.dart';
import 'package:api/pages/navigation/feed_screen.dart';
import 'package:api/pages/themechange.dart/themeclass.dart';
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
      theme: Themes.lightheme,
      darkTheme: Themes.darktheme,

// theme mode change directly from here...
      themeMode: ThemeMode.light,
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
              builder: (context) => DiceRollScreen(),
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
