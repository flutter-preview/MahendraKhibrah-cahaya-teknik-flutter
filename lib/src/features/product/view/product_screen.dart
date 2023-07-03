import 'package:cahayaa_teknik/src/common_widget/app_bar_widget.dart';
import 'package:cahayaa_teknik/src/features/product/controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final ProductController productController = Get.put(ProductController());
    final phoneSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const AppBarWidget(),
      body: SizedBox(
        width: phoneSize.width * 0.9,
        child: FutureBuilder(
          future: productController.getProduct(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: Text("LOADING..."),
              );
            } else {
              return ListView.builder(
                  itemCount: productController.myMap['data'].length,
                  itemBuilder: (context, index) {
                    productController.getProduct();
                    final product = productController.myMap['data'];
                    return ListTile(
                      title: Text(
                        product[index]['nama'],
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      subtitle: Text(
                        "jumlah : ${product[index]['quantity']}",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    );
                  });
            }
          },
        ),
      ),
    );
  }
}
