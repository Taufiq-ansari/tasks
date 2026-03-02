import 'package:api/Onboarding/onboarding1.dart';
import 'package:api/firebase/Notification/firebase_notification.dart';
import 'package:api/pages/navigation/feed_screen.dart';
import 'package:api/pages/themechange.dart/themeclass.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final navigateKey = GlobalKey<NavigatorState>();

@pragma('vm:entry-point')
//  background notification
Future<void> handleBackgroundNotification(RemoteMessage message) async {
  await Firebase.initializeApp();
  print("==> Firebase Title: ${message.notification?.title}");
  print("==> Firebase Body: ${message.notification?.body}");
  print("==> Messagge ID: ${message.messageId}");
}

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  await FireBaseService().initNotifications();

  FirebaseMessaging.onBackgroundMessage(handleBackgroundNotification);

  await FireBaseService.initialize();
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
      navigatorKey: navigateKey,
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
              builder: (context) => OnBoardingScreen1(),
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
