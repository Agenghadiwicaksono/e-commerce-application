import 'package:e_commerce/screens/profile/components/item_button_profile.dart';
import 'package:e_commerce/screens/profile/components/porfile_picture.dart';
import 'package:e_commerce/screens/sign_in/sign_in_screen.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';


class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PorfilePicture(),
        SizedBox(
          height: getPropScreenWidth(20),
        ),
        ItemButtonProfile(
          title: 'My Account',
          sVgIcon: 'assets/icons/User Icon.svg',
          press: () {},
        ),
        ItemButtonProfile(
          title: 'Notifications',
          sVgIcon: 'assets/icons/Bell.svg',
          press: () {},
        ),
        ItemButtonProfile(
          title: 'Settings',
          sVgIcon: 'assets/icons/Settings.svg',
          press: () {},
        ),
        ItemButtonProfile(
          title: 'Question',
          sVgIcon: 'assets/icons/Question mark.svg',
          press: () {},
        ),
        ItemButtonProfile(
          title: 'Log Out',
          sVgIcon: 'assets/icons/Log out.svg',
          press: () {
            Navigator.pushNamedAndRemoveUntil(context, SignInScreen.routeName,
                (Route<dynamic> route) => false);
            },
        ),
      ],
    );
  }
}
