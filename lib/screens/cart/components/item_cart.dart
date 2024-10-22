import 'package:e_commerce/constant.dart';
import 'package:e_commerce/model/cart.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';


class ItemCart extends StatelessWidget {
  const ItemCart({
    super.key, required this.cart,
  });

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(10)),
      child: GestureDetector(
        onTap: () {},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: getPropScreenWidth(88),
              child: AspectRatio(
                aspectRatio: .88,
                child: Container(
                  padding: EdgeInsets.all(getPropScreenWidth(20)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: kSecondaryColor.withOpacity(0.2),
                  ),
                  child: Image.asset(cart.product.images[0]),
                ),
              ),
            ),
            SizedBox(
              width: getPropScreenWidth(20),
            ),
            Text.rich(TextSpan(children: [
              TextSpan(
                text: "${cart.product.title} \n",
                style: const TextStyle(color: Colors.black),
              ),
              TextSpan(
                text: "£${cart.product.price}",
                style: TextStyle(
                  fontSize: getPropScreenWidth(14),
                  fontWeight: FontWeight.w600,
                  color: kPrimaryColor,
                ),
              )
            ]))
          ],
        ),
      ),
    );
  }
}
