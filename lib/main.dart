import 'package:cahayaa_teknik/src/constants/image_string.dart';
import 'package:cahayaa_teknik/src/utils/themes/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const FirstPage(),
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
      body: Container(
        child: Column(
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
            Image.asset(splashDark),
          ],
        ),
      ),
    );
  }
}
