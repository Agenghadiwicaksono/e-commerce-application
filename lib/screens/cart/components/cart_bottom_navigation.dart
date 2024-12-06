import 'package:e_commerce/components/my_default_button.dart';
import 'package:e_commerce/constant.dart';
import 'package:e_commerce/size_config.dart';
import 'package:e_commerce/state_managements/cart_provider.dart';
import 'package:e_commerce/state_managements/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';


class CartBottomNavigation extends StatelessWidget {
  const CartBottomNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, value, child) =>
      Container(
        decoration: BoxDecoration(
          color: value.isDarkMode ? const Color.fromARGB(255, 34, 33, 33) : Colors.white, 
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, -15),
                blurRadius: 20,
                color:Color.fromARGB(255, 109, 109, 109).withOpacity(0.15)
            )
        ]),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(getPropScreenWidth(10)),
                    height: getPropScreenWidth(40),
                    width: getPropScreenWidth(40),
                    decoration: BoxDecoration(
                        color: value.isDarkMode ? kTextColor : Color(0xfff5f6f9),
                        borderRadius: BorderRadius.circular(10)),
                    child: SvgPicture.asset(
                      'assets/icons/receipt.svg',
                      colorFilter: const ColorFilter.mode(kPrimaryLightColor, BlendMode.srcIn),
                    ),
                  ),
                  const Spacer(),
                  const Text('add voucer code'),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 12,
                    color: Colors.black,
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Consumer<CartProvider>(
                builder: (context, cart, child) => 
                Row(
                  children: [
                    Text.rich(TextSpan(children: [
                      const TextSpan(text: 'Total: \n', style: TextStyle()),
                      TextSpan(
                        text: '\$${cart.totalPrice}',
                      )
                    ])),
                    const Spacer(),
                    SizedBox(
                      width: getPropScreenWidth(190), 
                      child: MyDefaultButton(text: 'check out', press: (){
                        cart.clearCart();
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Check out success"),
                          )
                        );
                      })
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
