import 'package:e_commerce/model/cart.dart';
import 'package:e_commerce/screens/cart/components/item_cart.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';


class Body extends StatefulWidget {
  const Body({super.key});
  

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ListCart.length,
      itemBuilder: (BuildContext context, int index) {
        final Cart cart = ListCart[index];
        return Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getPropScreenWidth(20),
              vertical: getPropScreenWidth(10)),
          child: Dismissible(
              direction: DismissDirection.endToStart,
              background: Container(
                decoration: BoxDecoration(
                  color: Colors.red.shade300,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: getPropScreenWidth(20)),
                      child: const Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              onDismissed: (direction) {
                setState(() {
                  ListCart.removeAt(index);
                });
              },
              key: Key(cart.product.id.toString()),
              child: ItemCart(cart: cart)),
        );
      },
    );
  }
}
