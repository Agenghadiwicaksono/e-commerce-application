import 'package:e_commerce/screens/profile/components/body.dart';
import 'package:flutter/material.dart';


class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Body();
  }

  AppBar customAppbar() {
    return AppBar(
      title: const Text(
        'Your Profile',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      ),
      centerTitle: false,
    );
  }
}
