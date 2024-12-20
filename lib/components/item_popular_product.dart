import 'package:e_commerce/constant.dart';
import 'package:e_commerce/model/products.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class ItemPopularProduct extends StatelessWidget {
  const ItemPopularProduct({
    super.key, required this.product, required this.press,
  });

  final Product product;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(10)),
      child: SizedBox(
        width: getPropScreenWidth(140),
        child: GestureDetector(
          onTap: press,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  padding: EdgeInsets.all(getPropScreenWidth(10)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: kSecondaryColor.withOpacity(0.2),
                  ),
                  child: Image.asset(product.images[0]),
                ),
              ),
              SizedBox(height: getPropScreenHeight(8)),
              Text(
                product.title,
                style: TextStyle(
                  color: kTextColor
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "£${product.price}",
                    style: TextStyle(
                      fontSize: getPropScreenWidth(18),
                      fontWeight: FontWeight.w600,
                      color: kPrimaryColor
                    ),
                  ),
                  Container(
                    height: getPropScreenWidth(10),
                    width: getPropScreenWidth(20),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: product.isFavourite == true ? kPrimaryColor.withOpacity(0.2) : kSecondaryColor.withOpacity(0.2),
                    ),
                    child: Icon(
                      Icons.favorite_rounded, 
                      color: product.isFavourite == true ? Colors.redAccent : kSecondaryColor,
                      size: getPropScreenWidth(15),
                    ),
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}