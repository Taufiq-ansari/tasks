import 'package:api/firebase/loginscreen.dart';
import 'package:api/pages/navigation/feed_screen.dart';
import 'package:api/pages/themechange.dart/themeclass.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  // SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);

  runApp(
    // MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider(create: (_) => MovieProvider()),
    //     // ChangeNotifierProvider(create: (_) => ListOfMapProvider()),
    //     // ChangeNotifierProvider(create: (_)=>ItemsProvider()),                     // provider package used here is example  how to implement  in porject
    //     // ChangeNotifierProvider(create: (_) => CounterProvider()),
    //   ],
    //   // create: (_) => CounterProvider(),
    //   child: MyApp(),
    // ),

    ProviderScope(
      child: MyApp(),
    ),
  );
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
              builder: (context) => LoginScreen(),
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
