import 'package:e_commerce/constant.dart';
import 'package:e_commerce/screens/forget_password/components/forgot_password_form.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getPropScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04,),
              Text(
                "Forgot Password?",
                style: headingStyle
              ),
              const Text(
                "Please Enter your Email and we will send\n you a link to return your Account",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.06,),
              ForgotPasswordForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.06,),
              dontHaveAccountText()
            ],
          ),
        ),
      ),
    );
  }

  Row dontHaveAccountText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Remember your Account? "),
        GestureDetector(
          onTap: (){},
          child: Text(
            "Log in!",
            style: TextStyle(
              color: kPrimaryColor
            ),
          ),
        )
      ],
    );
  }
}



