import 'package:e_commerce/components/my_default_button.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class CartBottomNavigation extends StatelessWidget {
  const CartBottomNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color.fromARGB(255, 218, 218, 218).withOpacity(0.15))
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
                      color: const Color(0xfff5f6f9),
                      borderRadius: BorderRadius.circular(10)),
                  child: SvgPicture.asset('assets/icons/receipt.svg'),
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
            Row(
              children: [
                const Text.rich(TextSpan(children: [
                  TextSpan(text: 'Total: \n', style: TextStyle()),
                  TextSpan(
                    text: '\$4323',
                  )
                ])),
                const Spacer(),
                SizedBox(width: getPropScreenWidth(190), child: MyDefaultButton(text: 'check out', press: (){}))
              ],
            )
          ],
        ),
      ),
    );
  }
}
