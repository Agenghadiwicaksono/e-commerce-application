import 'package:e_commerce/components/my_default_button.dart';
import 'package:e_commerce/model/products.dart';
import 'package:e_commerce/screens/details/components/color_picker.dart';
import 'package:e_commerce/screens/details/components/detail_description.dart';
import 'package:e_commerce/screens/details/components/image_details.dart';
import 'package:e_commerce/screens/details/components/rounded_container.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';


class Body extends StatefulWidget {
  const Body({super.key, required this.product});

  final Product product;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    final Product product = widget.product;
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ImageDetails(product: product),
            RoundedContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  DetailDescription(product: product),
                  SizedBox(
                    height: getPropScreenHeight(40),
                  ),
                  ColorPicker(product: product),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: getPropScreenWidth(40),
                        horizontal: getPropScreenWidth(70)),
                    child: MyDefaultButton(text: 'add to cart', press: () {}),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

