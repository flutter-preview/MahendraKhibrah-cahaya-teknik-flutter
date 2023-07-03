import 'package:cahayaa_teknik/packages/local_notification.dart';
import 'package:cahayaa_teknik/src/features/test/view/fcmScreen.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:get/get.dart';

Future<void> handleBackgroundMassage(RemoteMessage msg) async {
  print('title : ${msg.notification?.title}');
  print('body : ${msg.notification?.body}');
  print('payload : ${msg.data}');
}

class FirebaseApi {
  final _firebaseMessaging = FirebaseMessaging.instance;

  void handleMessage(RemoteMessage? msg) {
    if (msg == null) return;

    Get.to(FcmScreen(msg: msg));
  }

  Future initPushNotification() async {
    await _firebaseMessaging.setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
    await _firebaseMessaging.getInitialMessage().then(handleMessage);
    await FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
    await FirebaseMessaging.onMessage.listen((RemoteMessage msg) {
      LocalNotification.notification(msg);
    });
    FirebaseMessaging.onBackgroundMessage(handleBackgroundMassage);
  }

  Future<void> initNotification() async {
    await _firebaseMessaging.requestPermission();
    final token = await _firebaseMessaging.getToken();
    print('token: $token');
    initPushNotification();
  }
}
