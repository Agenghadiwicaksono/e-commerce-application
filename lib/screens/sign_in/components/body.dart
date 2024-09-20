import 'package:e_commerce/components/social_media_icon.dart';
import 'package:e_commerce/constant.dart';
import 'package:e_commerce/screens/sign_in/components/sign_in_form.dart';
import 'package:e_commerce/screens/sign_up/sign_up_screen.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {

  bool remember = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.06,
                ),
                Text(
                  "Welcome Back!",
                  style: headingStyle
                ),
                const Text(
                  "Sign i with your Email and Password \nor continue with Social Media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.06,
                ),
                SignInForm(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.06,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialMediaIcon(
                      icon: "assets/icons/google-icon.svg", 
                      press: (){}
                    ),
                    SocialMediaIcon(
                      icon: "assets/icons/facebook-2.svg", 
                      press: (){}
                    ),
                    SocialMediaIcon(
                      icon: "assets/icons/twitter.svg", 
                      press: (){}
                    )
                  ],
                ),
                SizedBox(height: getPropScreenHeight(20),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't Have an Account? "),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, SignUpScreen.routeName);
                      },
                      child: const Text(
                        "Sing Up!",
                        style: TextStyle(
                          color: kPrimaryColor
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}