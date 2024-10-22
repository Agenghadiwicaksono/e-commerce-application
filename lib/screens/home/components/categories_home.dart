import 'package:e_commerce/model/category_data.dart';
import 'package:e_commerce/screens/home/components/item_category.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getPropScreenWidth(20)),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(listCategory.length, (index) {
            return ItemCategory(
              name: listCategory[index].name,
              icon: listCategory[index].icon,
            );
          })),
    );
  }
}
