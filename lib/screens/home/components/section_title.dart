import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';


class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key, required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: getPropScreenWidth(18),
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text("See More", style: TextStyle(
          color: Color(0xFFBBBBBB),
        ),)
      ],
    );
  }
}

