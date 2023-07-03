import 'dart:convert';

import 'package:cahayaa_teknik/src/constants/http_string.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as myHttp;

class ProductController extends GetxController {
  RxMap<dynamic, dynamic> myMap = {}.obs;
  RxInt length = 0.obs;

  Future<void> getProduct() async {
    final response = await myHttp.get(Uri.parse(hGetProduct));

    Map<String, dynamic> result =
        json.decode(response.body) as Map<String, dynamic>;

    RxMap<String, dynamic> rxResult = result.obs;
    myMap = rxResult;
    length.value = myMap['data'].length;
    print(myMap);
  }
}
