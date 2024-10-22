import 'package:e_commerce/constant.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ItemButtonProfile extends StatelessWidget {
  final String title, sVgIcon;
  final VoidCallback press;
  const ItemButtonProfile({
    super.key,
    required this.title,
    required this.sVgIcon,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: getPropScreenWidth(20),
            vertical: getPropScreenWidth(10)),
        padding: EdgeInsets.symmetric(
          horizontal: getPropScreenWidth(20),
          vertical: getPropScreenWidth(15),
        ),
        decoration: BoxDecoration(
            color: const Color(0xfff5f6f9), borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            SvgPicture.asset(
              sVgIcon,
              color: kPrimaryColor,
              width: 22,
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: getPropScreenWidth(15),
                color: Colors.deepPurple,
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.deepPurple,
            )
          ],
        ),
      ),
    );
  }
}
