import 'package:flutter/material.dart';
import 'package:grad_app/Components/custom_bottom_nav.dart';
import 'package:grad_app/Components/default_app_bar.dart';
import 'package:grad_app/constants.dart';

import 'package:grad_app/enum.dart';

import '../Profile/Components/body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(color: kLightColor, fontSize: 24),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNav(selectedMenu: MenuState.profile),
    );
  }
}
