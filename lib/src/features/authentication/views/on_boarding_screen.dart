import 'package:cahayaa_teknik/src/constants/colors.dart';
import 'package:cahayaa_teknik/src/constants/image_string.dart';
import 'package:cahayaa_teknik/src/features/authentication/controllers/on_boarding_screen_controller.dart';
import 'package:cahayaa_teknik/src/features/authentication/models/on_boarding.dart';
import 'package:cahayaa_teknik/src/features/authentication/views/on_boarding_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  OnBoardingScreenController onBoardingScreenC = Get.find();

  @override
  Widget build(BuildContext context) {
    final pages = [
      OnBoardingScreenWidget(
          model: OnBoardingModel(
              image: onBoarding2,
              title: "Etalase rapih",
              subTitle:
                  "setiap barang terintegrasi real-time dengan penjualan dan pembelian",
              color: Theme.of(context).brightness == Brightness.dark
                  ? obDark
                  : obWhite,
              size: MediaQuery.of(context).size.height)),
      OnBoardingScreenWidget(
          model: OnBoardingModel(
              image: onBoarding1,
              title: "Pencatatan Mudah",
              subTitle: "fitur yang untuk pencatatan pembelian dan penjualan",
              color: obTangerine,
              size: MediaQuery.of(context).size.height)),
      OnBoardingScreenWidget(
          model: OnBoardingModel(
              image: onBoarding3,
              title: "Mulai Sekarang !",
              subTitle:
                  " Mulai sekarang, kelola transaksi dengan mudah dan akurat.",
              color: obBlue,
              size: MediaQuery.of(context).size.height * 0.95))
    ];
    return Scaffold(
      body: SizedBox(
        child: Stack(
          alignment: Alignment.center,
          children: [
            LiquidSwipe(
              pages: pages,
              liquidController: onBoardingScreenC.controller,
              onPageChangeCallback: onBoardingScreenC.changePage,
            ),
            Positioned(
              top: 40,
              right: 5,
              child: TextButton(
                onPressed: () {
                  onBoardingScreenC.skip();
                },
                child: const Text(
                  "skip",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            Positioned(
              bottom: 100,
              child: OutlinedButton(
                style: ElevatedButton.styleFrom(
                  side: BorderSide(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? obWhite
                        : obDark,
                  ),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20),
                ),
                onPressed: () {
                  onBoardingScreenC.next();
                },
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? obWhite
                          : obDark,
                      shape: BoxShape.circle),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? obDark
                        : obWhite,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              child: Obx(
                () => AnimatedSmoothIndicator(
                  activeIndex: onBoardingScreenC.index.value,
                  count: 3,
                  effect: SwapEffect(
                    dotHeight: 8,
                    dotWidth: 55,
                    spacing: 20,
                    activeDotColor:
                        Theme.of(context).brightness == Brightness.dark
                            ? obWhite
                            : obDark,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
