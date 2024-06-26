import 'package:ecommerce/common/widgets/custom_shapes/Containers/circular_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/Containers/primary_header_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:ecommerce/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:ecommerce/utils/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      children: [
        TPrimaryHeaderContainer(
          child: Container(),
        ),
      ],
    )));
  }
}
