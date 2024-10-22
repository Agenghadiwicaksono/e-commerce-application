import 'package:e_commerce/components/item_popular_product.dart';
import 'package:e_commerce/model/products.dart';
import 'package:e_commerce/screens/details/detail_screen.dart';
import 'package:e_commerce/screens/home/components/section_title.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
          child: const SectionTitle(title: "Popular Products"),
        ),
        SizedBox(height: getPropScreenHeight(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            height: getPropScreenHeight(230),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(
                  demoProducts.length, 
                  (index) {
                    final Product product = demoProducts[index];
                    return ItemPopularProduct(
                      product: demoProducts[index], 
                      press: () => Navigator.pushNamed(
                        context, DetailScreen.routeName, 
                        arguments: product
                      ),
                    );
                  }
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

