import 'package:flutter/material.dart';
import 'package:grad_app/Components/default_back_button.dart';
import 'package:grad_app/constants.dart';
import '../../../Profile/SubScreens/EditProgramme/Components/body.dart';

class EditProgramme extends StatelessWidget {
  const EditProgramme({Key? key}) : super(key: key);

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
    );
  }
}
