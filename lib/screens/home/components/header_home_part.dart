import 'package:e_commerce/model/cart.dart';
import 'package:e_commerce/screens/cart/cart_screen.dart';
import 'package:e_commerce/screens/home/components/icon_with_trigger.dart';
import 'package:e_commerce/screens/home/components/search_field.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';


class HeaderHomePart extends StatelessWidget {
  const HeaderHomePart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchField(),
          const IconWithTrigger(
            svgIcon: "assets/icons/Bell.svg",
            trigger: "2",
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, CartScreen.routeName),
            child: IconWithTrigger(
              svgIcon: "assets/icons/Cart Icon.svg",
              trigger: ListCart.length.toString(),
            ),
          ),
        ],
      ),
    );
  }
}

