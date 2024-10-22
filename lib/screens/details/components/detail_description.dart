import 'package:e_commerce/constant.dart';
import 'package:e_commerce/model/products.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';


class DetailDescription extends StatelessWidget {
  const DetailDescription({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getPropScreenWidth(20)),
          child: Text(
            product.title,
            style: TextStyle(
              fontSize: getPropScreenWidth(20),
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(getPropScreenWidth(15)),
            width: getPropScreenWidth(64),
            decoration: BoxDecoration(
              color: product.isFavourite
                  ? kPrimaryColor.withOpacity(0.5)
                  : kSecondaryColor.withOpacity(0.1),
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
            ),
            child: Icon(
              Icons.favorite,
              color: product.isFavourite
                  ? Colors.red
                  : kSecondaryColor.withOpacity(0.5),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: getPropScreenWidth(
              20,
            ),
            right: getPropScreenWidth(64),
          ),
          child: ReadMoreText(
            product.description,
            trimMode: TrimMode.Line,
            trimLines: 2,
            
            colorClickableText: kPrimaryColor,
            trimCollapsedText: "\nShow More details >",
            trimExpandedText: "\nShow Less details >",
            moreStyle: seeMoreStyle,
            lessStyle: seeMoreStyle,
          ),
        )
      ],
    );
  }
}
