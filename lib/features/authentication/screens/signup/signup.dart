import 'package:ecommerce/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerce/common/widgets/login_signup/social_buttons.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelpFunctions.isDarkMode(context);
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ///Title
                    Text(TText.signupTitle,
                        style: Theme.of(context).textTheme.headlineMedium),
                    const SizedBox(height: TSizes.spaceBtwSections),

                    ///Form
                    Form(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  expands: false,
                                  decoration: const InputDecoration(
                                    labelText: TText.firstName,
                                    prefixIcon: Icon(Iconsax.user),
                                  ),
                                ),
                              ),
                              const SizedBox(width: TSizes.spaceBtwInputFields),
                              Expanded(
                                child: TextFormField(
                                  expands: false,
                                  decoration: const InputDecoration(
                                    labelText: TText.lastName,
                                    prefixIcon: Icon(Iconsax.user),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: TSizes.spaceBtwInputFields),

                          ///username
                          TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                              labelText: TText.username,
                              prefixIcon: Icon(Iconsax.user_edit),
                            ),
                          ),
                          const SizedBox(height: TSizes.spaceBtwInputFields),

                          ///Email
                          TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                              labelText: TText.email,
                              prefixIcon: Icon(Iconsax.direct),
                            ),
                          ),
                          const SizedBox(height: TSizes.spaceBtwInputFields),

                          ///Phone number
                          TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                              labelText: TText.phoneNo,
                              prefixIcon: Icon(Iconsax.call),
                            ),
                          ),
                          const SizedBox(height: TSizes.spaceBtwInputFields),

                          ///Password
                          TextFormField(
                            obscureText: true,
                            decoration: const InputDecoration(
                              labelText: TText.password,
                              prefixIcon: Icon(Iconsax.password_check),
                              suffixIcon: Icon(Iconsax.eye_slash),
                            ),
                          ),
                          const SizedBox(height: TSizes.spaceBtwInputFields),

                          ///terms&condition Checkbox
                          Row(
                            children: [
                              SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: Checkbox(
                                      value: true, onChanged: (value) {})),
                              Text.rich(
                                TextSpan(children: [
                                  TextSpan(
                                      text: '${TText.iAgreeTo} ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall),
                                  TextSpan(
                                      text: '${TText.privacyPolicy} ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .apply(
                                            color: dark
                                                ? TColors.white
                                                : TColors.primary,
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor: dark
                                                ? TColors.white
                                                : TColors.primary,
                                          )),
                                  TextSpan(
                                      text: '${TText.and} ',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall),
                                  TextSpan(
                                      text: TText.termsOfUse,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .apply(
                                            color: dark
                                                ? TColors.white
                                                : TColors.primary,
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor: dark
                                                ? TColors.white
                                                : TColors.primary,
                                          )),
                                ]),
                              ),
                            ],
                          ),
                          const SizedBox(height: TSizes.spaceBtwInputFields),

                          ///signup button
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: const Text(TText.creatAccount)),
                          ),
                        ],
                      ),
                    ),

                    ///Divider
                    TFormDivider(dividerText: TText.orSignInWith.capitalize!),
                    const SizedBox(height: TSizes.spaceBtwInputFields),

                    ///Social buttons
                    const TSocialButtons(),
                  ],
                ))));
  }
}
