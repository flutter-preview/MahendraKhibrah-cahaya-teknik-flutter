import 'package:cahayaa_teknik/src/constants/image_string.dart';
import 'package:cahayaa_teknik/src/features/authentication/controllers/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final SplashScreenController splashScreenC = Get.find();

  @override
  Widget build(BuildContext context) {
    splashScreenC.runAnimation();
    return Scaffold(
      body: SizedBox(
        child: Stack(
          children: [
            Obx(
              () => AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                top: splashScreenC.animate.value ? 0 : -30,
                left: splashScreenC.animate.value ? 0 : -30,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 1600),
                  opacity: splashScreenC.animate.value ? 1 : 0,
                  child: Image.asset(elipse1),
                ),
              ),
            ),
            Obx(
              () => AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashScreenC.animate.value ? 1 : 0,
                child: Positioned.fill(
                  top: 0,
                  bottom: 50,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Transform.scale(
                      scale: 0.6,
                      child: Image.asset(splashLight),
                    ),
                  ),
                ),
              ),
            ),
            Obx(
              () => AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                bottom: splashScreenC.animate.value ? 260 : 230,
                left: 0,
                right: 0,
                child: Center(
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 1600),
                    opacity: splashScreenC.animate.value ? 1 : 0,
                    child: Text(
                      "Cahaya Teknik ",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                ),
              ),
            ),
            Obx(
              () => AnimatedPositioned(
                duration: const Duration(milliseconds: 1600),
                bottom: splashScreenC.animate.value ? 0 : -30,
                right: splashScreenC.animate.value ? 0 : -30,
                child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 1600),
                    opacity: splashScreenC.animate.value ? 1 : 0,
                    child: Image.asset(elipse2)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
