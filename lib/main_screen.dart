import 'package:e_commerce/constant.dart';
import 'package:e_commerce/enum.dart';
import 'package:e_commerce/screens/home/home_screen.dart';
import 'package:e_commerce/screens/profile/profile_screen.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatefulWidget {
  static String routeName = '/main_screen';
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List namaPages = [const HomeScreen(), const ProfileScreen()];
  int _currentIndex = 0;
  bool whereNow = true;
  MenuState menu = MenuState.home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _currentIndex == 1 ? AppBar(
        title: const Text("Profile"),
      ):null,
      body: namaPages[_currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
              color: kPrimaryLightColor, borderRadius: BorderRadius.circular(50)),
          padding: EdgeInsets.symmetric(
            vertical: getPropScreenWidth(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 0;
                    menu = MenuState.home;
                  });
                  
                },
                icon: SvgPicture.asset(
                  'assets/icons/Shop Icon.svg',
                  color: MenuState.home == menu
                      ? kPrimaryColor
                      : inactiveColor,
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/Heart Icon.svg',
                      color: inactiveColor)),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/icons/Chat bubble Icon.svg',
                    color: inactiveColor,
                  )),
              IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 1;
                    menu = MenuState.profile;
                  });
                  ;
                },
                icon: SvgPicture.asset('assets/icons/User Icon.svg',
                    color: MenuState.profile == menu
                        ? kPrimaryColor
                        : inactiveColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
