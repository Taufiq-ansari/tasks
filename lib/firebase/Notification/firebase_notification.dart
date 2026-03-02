import 'dart:io';
import 'dart:math';

import 'package:api/main.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class FireBaseService {
  final FirebaseMessaging _message = FirebaseMessaging.instance;

  // creat function to  handle Notification
  initNotifications() async {
    await _message.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );

    final token = await _message.getToken();

    print("===>token $token");

    await initPushNotification();
  }

  // handle received notification...
  handleMessage(RemoteMessage? message) {
//  /if the message is null  ,do nothing
    if (message == null) return;
    navigateKey.currentState?.pushNamed(
      '/',
      arguments: message,
    );
  }

//  background  and  foreground notification
  // FirebaseMessaging.onBackgroundMessage(handleBackgroundNotification);

  Future<void> initPushNotification() async {
    //==> when app terminate
    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);

    //==> when app open
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);

//  forground notification
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print("====> working on foreground notification");
      print("====> working on foreground  ${message.notification?.title}");
      print("====> working on foreground  ${message.notification?.body}");
      print("====> working on foreground  ${message.messageId}");

      if (message.notification != null) {
        FireBaseService.showNotification();
      }
    });
  }

//local notification flutter

  static final FlutterLocalNotificationsPlugin notification =
      FlutterLocalNotificationsPlugin();

  static initialize() async {
    AndroidInitializationSettings android =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    DarwinInitializationSettings ios = DarwinInitializationSettings();
    InitializationSettings initializationSettings = InitializationSettings(
      android: android,
      iOS: ios,
    );
    await notification.initialize(settings: initializationSettings);
    if (Platform.isAndroid) {
      await notification
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.requestNotificationsPermission();
    } else {
      notification
          .resolvePlatformSpecificImplementation<
              IOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions();
    }
  }

  static showNotification() async {
    AndroidNotificationDetails android = AndroidNotificationDetails(
      'channelId',
      'channelName',
    );
    DarwinNotificationDetails ios = DarwinNotificationDetails();
    NotificationDetails notificationDetail = NotificationDetails(
      android: android,
      iOS: ios,
    );


    await notification.show(
      id: Random().nextInt(100),
      title: 'sample title',
      body: 'this is notification  body',
      notificationDetails: notificationDetail,
    );
  }
}
