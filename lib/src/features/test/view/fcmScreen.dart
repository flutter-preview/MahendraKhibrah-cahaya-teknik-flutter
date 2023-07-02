import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class FcmScreen extends StatelessWidget {
  final RemoteMessage msg;
  const FcmScreen({super.key, required this.msg});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 16),
          Text('title : ${msg.notification?.title}'),
          const SizedBox(height: 16),
          const SizedBox(height: 16),
          Text('subtitle : ${msg.notification?.body}'),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
