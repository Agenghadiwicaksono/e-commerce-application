import 'package:e_commerce/components/my_default_button.dart';
import 'package:e_commerce/main_screen.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';


class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          Image.asset("assets/images/success.png"),
          SizedBox(height: SizeConfig.screenHeight * 0.04),
          Text(
            "Login Success!",
            style: TextStyle(
              fontSize: getPropScreenWidth(30),
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),
          ),
          const Spacer(),
          SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            child: MyDefaultButton(
              text: "Back to Home",
              press: () {
                Navigator.pushNamed(context, MainScreen.routeName);
              },
            ),
          ),
          const Spacer()
        ],
      ),
    );
  }
}