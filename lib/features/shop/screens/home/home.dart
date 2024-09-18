import 'package:ecommerce/common/widgets/custom_shapes/Containers/primary_header_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/Containers/search_container.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/home/Widgets/home_appbar.dart';
import 'package:ecommerce/features/shop/screens/home/Widgets/home_categories.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        TPrimaryHeaderContainer(
            child: Column(
          children: [
            ///---Appbar---
            THomeAppBar(),
            SizedBox(height: TSizes.spaceBtwSections),

            ///---Searchbar---
            TSearchContainer(
              text: "Search in Store",
            ),
            SizedBox(height: TSizes.spaceBtwSections),

            ///---Categories---
            Padding(
              padding: EdgeInsets.only(left: TSizes.defaultSpace),
              child: Column(
                children: [
                  TSectionHeading(
                    title: 'Popular Categories',
                    showActionButton: false,
                    textColor: Colors.white,
                  ),
                  SizedBox(height: TSizes.spaceBtwItem),

                  ///Categories
                  THomeCategory(),
                ],
              ),
            )
          ],
        )),
      ],
    )));
  }
}
