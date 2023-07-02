import 'package:get/get.dart';

class DropdownPembelianController extends GetxController {
  RxString changedValue = "barang 1".obs;

  void changeValue(val) {
    changedValue.value = val;
  }
}
