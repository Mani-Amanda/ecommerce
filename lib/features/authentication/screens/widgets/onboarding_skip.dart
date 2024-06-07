// ignore_for_file: camel_case_types

import 'package:ecommerce/features/authentication/controllers/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/utils/device/device_utility.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:ecommerce/utils/constants/sizes.dart';

class onBoardingSkip extends StatelessWidget {
  const onBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton(
          onPressed: () {},
          child: TextButton(
              onPressed: () => OnbaordingController.instance.skipPage(),
              child: const Text('Skip')),
        ));
  }
}

class onBoardingWidget extends StatelessWidget {
  const onBoardingWidget({
    super.key,
    required this.image,
    required this.subtitle,
    required this.title,
  });

  final String image, title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: THelpFunctions.screenWidth() * 0.8,
            height: THelpFunctions.screenHeight() * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: TSizes.spaceBtwItem),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
