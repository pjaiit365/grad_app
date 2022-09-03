import 'package:flutter/material.dart';
import 'package:grad_app/Components/build_divider.dart';
import 'package:grad_app/Components/default_back_button.dart';
import 'package:grad_app/Components/edit_profile_tab.dart';
import 'package:grad_app/Components/profile_pic.dart';
import 'package:grad_app/Screens/Profile/SubScreens/EditProfileItem/edit_profile_item.dart';
import 'package:grad_app/Screens/Profile/SubScreens/EditProgramme/edit_programme.dart';
import 'package:grad_app/constants.dart';
import 'package:popup_card/popup_card.dart';

import '../../../../Components/floating_widget.dart';
import '../../../Profile/SubScreens/EditProfile/Components/body.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: DefaultBackButton(backButtonColor: Colors.white),
        elevation: 0.0,
        backgroundColor: kprimary,
      ),
      body: Body(),
      backgroundColor: Colors.grey[350],
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingWidget(
        floatingIcon: Icons.edit,
        screenReturn: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => EditProfileItem(),
              ));
        },
      ),
    );
  }
}
