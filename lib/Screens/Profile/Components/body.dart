import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grad_app/Components/profile_menu.dart';
import 'package:grad_app/Components/profile_pic.dart';
import 'package:grad_app/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ProfilePic(),
        SizedBox(height: 20),
        ProfileMenu(
          svgSrc: 'assets/icons/User Icon.svg',
          menuText: 'My Account',
          press: () {},
        ),
        ProfileMenu(
          svgSrc: 'assets/icons/Bell.svg',
          menuText: 'Notifications',
          press: () {},
        ),
        ProfileMenu(
          svgSrc: 'assets/icons/Question mark.svg',
          menuText: 'Help Center',
          press: () {},
        ),
        ProfileMenu(
          svgSrc: 'assets/icons/Settings.svg',
          menuText: 'Settings',
          press: () {},
        ),
        ProfileMenu(
          svgSrc: 'assets/icons/User Icon.svg',
          menuText: 'Log Out',
          press: () {},
        ),
      ],
    );
  }
}
