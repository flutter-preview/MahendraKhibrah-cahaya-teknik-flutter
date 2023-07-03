import 'package:cahayaa_teknik/src/features/authentication/models/on_boarding.dart';
import 'package:flutter/material.dart';

class OnBoardingScreenWidget extends StatelessWidget {
  const OnBoardingScreenWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: model.color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            height: 0,
          ),
          Image(
            image: AssetImage(model.image),
            height: model.size * 0.4,
          ),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              model.title,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              model.subTitle,
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
          ]),
          const SizedBox(
            height: 150,
          )
        ],
      ),
    );
  }
}
