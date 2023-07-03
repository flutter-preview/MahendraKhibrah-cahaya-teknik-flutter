import 'package:cahayaa_teknik/src/common_widget/app_bar_widget.dart';
import 'package:cahayaa_teknik/src/constants/colors.dart';
import 'package:cahayaa_teknik/src/features/dashboard/controllers/dashboard.dart';
import 'package:cahayaa_teknik/src/features/dashboard/views/category_card_widget.dart';
import 'package:cahayaa_teknik/src/features/product/view/product_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sizePhone = MediaQuery.of(context).size;
    DashboardController dashboardC = Get.put(DashboardController());

    return Scaffold(
      appBar: const AppBarWidget(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi Imam Subeqi,",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                "Manage Item",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 80,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: const [
                    CategoryCardWidget(
                      title: "Pembelian",
                      destination: ProductScreen(),
                    ),
                    CategoryCardWidget(
                      destination: ProductScreen(),
                      title: "Penjualan",
                    ),
                    CategoryCardWidget(
                      destination: ProductScreen(),
                      title: "Persediaan",
                    ),
                    CategoryCardWidget(
                      destination: ProductScreen(),
                      title: "Invoice",
                    ),
                    CategoryCardWidget(
                      destination: ProductScreen(),
                      title: "Klien",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 45,
              ),
              Text(
                "Pembelian & Penjualan",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: sizePhone.width * 0.42,
                    height: sizePhone.height * 0.5,
                    decoration: BoxDecoration(
                      color: wGrey,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Form(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pembelian",
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Obx(
                                () => DropdownButtonFormField(
                                    value: dashboardC.produkValue.value,
                                    items: const [
                                      DropdownMenuItem(
                                        value: "barang 1",
                                        child: Text("barang 1"),
                                      ),
                                      DropdownMenuItem(
                                        value: "barang 2",
                                        child: Text("barang 2"),
                                      ),
                                      DropdownMenuItem(
                                        value: "barang 3",
                                        child: Text("barang 3"),
                                      ),
                                    ],
                                    onChanged: (val) {
                                      dashboardC.changeProdukValue(val);
                                    }),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                    hintText: "masukkan kuantitas ..",
                                    labelText: "kuantitas"),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                    hintText: "masukkan harga ..",
                                    labelText: "harga"),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  Get.offAll(const DashBoardScreen());
                                },
                                child: Text(
                                  "SUBMIT",
                                  style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: sizePhone.width * 0.05,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    width: sizePhone.width * 0.42,
                    height: sizePhone.height * 0.5,
                    decoration: BoxDecoration(
                      color: wGrey,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Form(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Penjualan",
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Obx(
                                () => DropdownButtonFormField(
                                    value: dashboardC.invoiceValue.value,
                                    items: const [
                                      DropdownMenuItem(
                                        value: "invoice 1",
                                        child: Text("invoice 1"),
                                      ),
                                      DropdownMenuItem(
                                        value: "invoice 2",
                                        child: Text("invoice 2"),
                                      ),
                                      DropdownMenuItem(
                                        value: "invoice 3",
                                        child: Text("invoice 3"),
                                      ),
                                    ],
                                    onChanged: (val) {
                                      dashboardC.changeInvoiceValue(val);
                                    }),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Obx(
                                () => DropdownButtonFormField(
                                    value: dashboardC.produkValue.value,
                                    items: const [
                                      DropdownMenuItem(
                                        value: "barang 1",
                                        child: Text("barang 1"),
                                      ),
                                      DropdownMenuItem(
                                        value: "barang 2",
                                        child: Text("barang 2"),
                                      ),
                                      DropdownMenuItem(
                                        value: "barang 3",
                                        child: Text("barang 3"),
                                      ),
                                    ],
                                    onChanged: (val) {
                                      dashboardC.changeProdukValue(val);
                                    }),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                    hintText: "masukkan kuantitas ..",
                                    labelText: "kuantitas"),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                    hintText: "masukkan harga ..",
                                    labelText: "harga"),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  Get.offAll(const DashBoardScreen());
                                },
                                child: Text(
                                  "SUBMIT",
                                  style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 45,
              ),
              Text(
                "Buat Invoice",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                width: sizePhone.width * 0.9,
                height: sizePhone.height * 0.3,
                decoration: const BoxDecoration(
                  color: wGrey,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "pilih klien : ",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Obx(
                      () => DropdownButtonFormField(
                          value: dashboardC.klienValue.value,
                          items: const [
                            DropdownMenuItem(
                              value: "orang 1",
                              child: Text("orang 1"),
                            ),
                            DropdownMenuItem(
                              value: "orang 2",
                              child: Text("orang 2"),
                            ),
                            DropdownMenuItem(
                              value: "orang 3",
                              child: Text("orang 3"),
                            ),
                          ],
                          onChanged: (val) {
                            dashboardC.changeKlienValue(val);
                          }),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "masukkan Judul ..", labelText: "Judul"),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Get.offAll(const DashBoardScreen());
                          },
                          child: Text(
                            "SUBMIT",
                            style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
