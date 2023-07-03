import 'dart:convert';

import 'package:cahayaa_teknik/src/constants/http_string.dart';
import 'package:cahayaa_teknik/src/features/dashboard/views/dasbboard_page.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as myHttp;

class LoginController extends GetxController {
  RxString email = "".obs;
  RxString password = "".obs;
  RxBool isPasswordTrue = true.obs;
  RxBool isEmailTrue = true.obs;

  Future loginCheck() async {
    final response = await myHttp.post(Uri.parse(hLogin), body: {
      'email': email.value,
      'password': password.value,
    });

    isPasswordTrue.value = true;
    isEmailTrue.value = true;

    Map<String, dynamic> result =
        json.decode(response.body) as Map<String, dynamic>;

    if (result['status']) {
      Get.offAll(const DashBoardScreen());
    } else {
      result['message'] == "email tidak ditemukan"
          ? isEmailTrue.value = false
          : isEmailTrue.value = true;
      result['message'] == "password salah"
          ? isPasswordTrue.value = false
          : isPasswordTrue.value = true;
    }
  }
}
