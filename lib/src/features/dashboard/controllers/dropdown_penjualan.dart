import 'package:get/get.dart';

class DropdownPenjualanController extends GetxController {
  RxString valueProduk = "barang 1".obs;
  RxString valueInvoice = "invoice 1".obs;

  void changeValueProduk(val) {
    valueProduk.value = val;
  }

  void changeValueInvoice(val) {
    valueInvoice.value = val;
  }
}
