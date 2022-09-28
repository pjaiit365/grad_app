import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grad_app/Components/default_back_button.dart';
import 'package:grad_app/Components/edit_profil_menu_item.dart';
import 'package:grad_app/Screens/Profile/SubScreens/EditProfileItem/edit_profile_item.dart';
import 'package:grad_app/constants.dart';

import '../MyGraduation/Components/body.dart';

class MyGradScreen extends StatelessWidget {
  const MyGradScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: DefaultBackButton(backButtonColor: Colors.black),
        elevation: 0.2,
        title: Text(
          'My Graduation',
          style: TextStyle(color: kprimary),
        ),
        backgroundColor: Colors.white,
      ),
      body: Body(),
      backgroundColor: CupertinoColors.systemGrey5,
    );
  }
}
