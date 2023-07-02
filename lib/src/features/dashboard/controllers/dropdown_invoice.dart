import 'package:get/get.dart';

class DropdownInvoiceController extends GetxController {
  RxString changedValue = "orang 1".obs;

  void changeValue(val) {
    changedValue.value = val;
  }
}
