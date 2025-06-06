import 'package:e_commerce/screens/home/components/section_title.dart';
import 'package:e_commerce/screens/home/components/special_offer_card.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
          child: const SectionTitle(
            title: "Special For You",
          ),
        ),
        SizedBox(height: getPropScreenHeight(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(10)),
            child: Row(
              children: [
                SpecialOfferCard(
                  image: "assets/images/Image Banner 2.png",
                  category: "Gamers Device",
                  numOfBrands: "18",
                  press: () {
                    // Navigator.pushNamed(context, DetailsScreen.routeName);
                  },
                ),
                SpecialOfferCard(
                  image: "assets/images/Image Banner 3.png",
                  category: "New Fashion",
                  numOfBrands: "24",
                  press: () {
                    // Navigator.pushNamed(context, DetailsScreen.routeName);
                  },
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}