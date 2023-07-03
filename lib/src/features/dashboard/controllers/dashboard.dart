import 'package:cahayaa_teknik/src/features/authentication/views/welcome_screen/welcome_screen.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  // invoice dropdown
  RxString klienValue = "orang 1".obs;

  void changeKlienValue(val) {
    klienValue.value = val;
  }

  // produk dropdown
  RxString produkValue = "barang 1".obs;

  void changeProdukValue(val) {
    produkValue.value = val;
  }

  //invoice dropdown
  RxString invoiceValue = "invoice 1".obs;

  void changeInvoiceValue(val) {
    invoiceValue.value = val;
  }

  // logout
  void logout() {
    Get.offAll(const WelcomeScreen());
  }
}
