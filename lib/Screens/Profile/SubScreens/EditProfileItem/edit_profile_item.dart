import 'package:flutter/material.dart';
import 'package:grad_app/Components/floating_widget.dart';

import 'package:grad_app/constants.dart';

import '../../../Profile/SubScreens/EditProfileItem/Components/body.dart';

class EditProfileItem extends StatefulWidget {
  const EditProfileItem({Key? key}) : super(key: key);

  @override
  State<EditProfileItem> createState() => _EditProfileItemState();
}

class _EditProfileItemState extends State<EditProfileItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.close,
            color: Colors.white,
          ),
        ),
        backgroundColor: kprimary,
        title: Text('Edit Bio'),
      ),
      body: Body(),
      floatingActionButton: FloatingWidget(
        floatingIcon: Icons.save,
        screenReturn: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
