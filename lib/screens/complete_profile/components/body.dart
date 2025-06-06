import 'package:e_commerce/constant.dart';
import 'package:e_commerce/screens/complete_profile/components/complete_profile_form.dart';
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
              SizedBox(height: SizeConfig.screenHeight * 0.03),
              Text(
                "Complete Profile",
                style: headingStyle,
              ),
              const Text(
                "Complete your profile data",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.06),
              const CompleteProfileForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.03),
              const Text(
                "By continuing your confirm that you agree \nwith our Term and Condition",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.03),
            ],
          ),
        ),
      )
    );
  }
}

