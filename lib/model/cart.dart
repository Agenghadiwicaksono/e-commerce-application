

import 'package:e_commerce/model/products.dart';

class Cart {
  Cart({
    required this.product,
    required this.numOfItem,
  });
  final Product product;
  final int numOfItem;
}

final List<Cart> ListCart = [
  Cart(
    product: demoProducts[1],
    numOfItem: 3,
  ),
  Cart(
    product: demoProducts[0],
    numOfItem: 3,
  ),
  Cart(
    product: demoProducts[3],
    numOfItem: 3,
  ),
  Cart(
    product: demoProducts[2],
    numOfItem: 3,
  ),
];
