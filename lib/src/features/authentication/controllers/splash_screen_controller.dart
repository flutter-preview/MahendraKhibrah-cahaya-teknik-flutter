import 'package:cahayaa_teknik/src/features/authentication/views/home_screen.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  RxBool animate = false.obs;

  Future runAnimation() async {
    await Future.delayed(const Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 3500));
    Get.to(const HomeScreen());
  }
}
