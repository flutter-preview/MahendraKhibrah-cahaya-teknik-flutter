import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotification {
  static final FlutterLocalNotificationsPlugin _notificationPlugin =
      FlutterLocalNotificationsPlugin();

  static void initialize() {
    InitializationSettings initializationSettings =
        const InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
    );
    _notificationPlugin.initialize(initializationSettings);
  }

  static void notification(RemoteMessage msg) {
    const NotificationDetails details = NotificationDetails(
      android: AndroidNotificationDetails(
        "com.example.cahayaa_teknik",
        "cahayaa_teknik",
        importance: Importance.max,
        priority: Priority.high,
      ),
    );
    _notificationPlugin.show(
      DateTime.now().microsecond,
      msg.notification?.title,
      msg.notification?.body,
      details,
      payload: msg.notification?.body,
    );
  }
}
