import 'package:e_commerce/screens/cart/components/body.dart';
import 'package:e_commerce/screens/cart/components/cart_bottom_navigation.dart';
import 'package:e_commerce/state_managements/cart_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class CartScreen extends StatelessWidget {
  static String routeName = 'cart_screen';
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: cutomAppbar(),
      body: const Body(),
      bottomNavigationBar: const CartBottomNavigation(),
    );
  }

  AppBar cutomAppbar() {
    return AppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Cart Screen',
            style: TextStyle(fontWeight: FontWeight.bold, ),
          ),
          Consumer<CartProvider>(
            builder: (context, cart, child) =>
            Text(
              '${cart.cartItems.length} item',
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
            ),
          )
        ],
      ),
      centerTitle: false,
    );
  }
}
