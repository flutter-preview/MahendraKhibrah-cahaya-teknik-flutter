import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class OnBoardingScreenController extends GetxController {
  RxInt index = 0.obs;
  LiquidController controller = LiquidController();

  void changePage(int activePageIndex) {
    index.value = activePageIndex;
  }

  void skip() {
    index.value = 2;
    controller.jumpToPage(page: index.value);
  }

  void next() {
    index.value != 2 ? index.value += 1 : index.value = 0;
    controller.animateToPage(page: index.value);
  }
}
