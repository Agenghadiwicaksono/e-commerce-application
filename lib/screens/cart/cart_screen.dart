import 'package:e_commerce/model/cart.dart';
import 'package:e_commerce/screens/cart/components/body.dart';
import 'package:e_commerce/screens/cart/components/cart_bottom_navigation.dart';
import 'package:flutter/material.dart';


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
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Text(
            '${ListCart.length} item',
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
          )
        ],
      ),
      centerTitle: false,
    );
  }
}
