import 'package:cahayaa_teknik/packages/firebase_api.dart';
import 'package:cahayaa_teknik/packages/local_notification.dart';
import 'package:cahayaa_teknik/src/constants/image_string.dart';
import 'package:cahayaa_teknik/src/features/authentication/controllers/on_boarding_screen_controller.dart';
import 'package:cahayaa_teknik/src/features/authentication/controllers/splash_screen_controller.dart';
import 'package:cahayaa_teknik/src/features/authentication/views/splash_screen/splash_screen.dart';
import 'package:cahayaa_teknik/src/utils/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseApi firebaseApi = FirebaseApi();
  await firebaseApi.initNotification();
  LocalNotification.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final splashScreenC = Get.lazyPut(() => SplashScreenController());
  final onBoardingScreenC = Get.lazyPut(() => OnBoardingScreenController());
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: SplashScreen(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("tes theme"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome back, ",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Text(
            "Welcome back, ",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Text(
            "Welcome back, ",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Text(
            "Welcome back, ",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Text(
            "Welcome back, ",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            "Welcome back, ",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Image.asset(splashLight),
          Image.asset(splashLight),
        ],
      ),
    );
  }
}
