import 'package:ecommerce/common/widgets/sucess_screen/success_screen.dart';
import 'package:ecommerce/features/authentication/screens/login/login.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
                onPressed: () => Get.offAll(() => const LoginScreen()),
                icon: const Icon(CupertinoIcons.clear))
          ],
        ),
        body: SingleChildScrollView(
          //Padding to Give Default Equal Space on all slides in all screen
          child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                ///Image
                Image(
                  image: const AssetImage(TImages.deliveredEmailIllustration),
                  width: THelpFunctions.screenWidth() * 0.6,
                ),
                const SizedBox(height: TSizes.spaceBtwSections),

                ///Title & subtitle
                Text(TText.confirmEmail,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center),
                const SizedBox(height: TSizes.spaceBtwItem),
                Text('support@codingwitht.com',
                    style: Theme.of(context).textTheme.labelLarge,
                    textAlign: TextAlign.center),
                const SizedBox(height: TSizes.spaceBtwItem),
                Text(TText.confirmEmailSubTitle,
                    style: Theme.of(context).textTheme.headlineSmall,
                    textAlign: TextAlign.center),
                const SizedBox(height: TSizes.spaceBtwSections),

                ///Buttons
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () => Get.to(() => SuccessScreen(
                              image: TImages.staticSuccessIllustration,
                              title: TText.yourAccountCreatedTitle,
                              subTitle: TText.yourAccountCreatedSubTitle,
                              onPressed: () =>
                                  Get.to(() => const LoginScreen()),
                            )),
                        child: const Text(TText.tcontinue))),
                const SizedBox(height: TSizes.spaceBtwItem),
                SizedBox(
                    width: double.infinity,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(TText.resendEmail))),
              ],
            ),
          ),
        ));
  }
}
