import 'package:e_commerce/constant.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    super.key, required this.text, required this.image,
  });

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Text(
          "Kedai Ku",
          style: TextStyle(
            fontSize: getPropScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold
          ),
        ),
        Text(
         text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getPropScreenWidth(12),
            color: kTextColor
          ),
        ),
        const Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          height: getPropScreenHeight(265),
          width: getPropScreenWidth(235),
        )
      ],
    );
  }
}