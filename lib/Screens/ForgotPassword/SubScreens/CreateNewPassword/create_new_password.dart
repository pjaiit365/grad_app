import 'package:flutter/material.dart';
import 'package:grad_app/Components/default_back_button.dart';
import 'package:grad_app/Screens/ForgotPassword/SubScreens/CreateNewPassword/Components/body.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({Key? key}) : super(key: key);

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      appBar: AppBar(
        leading: DefaultBackButton(backButtonColor: Colors.black54),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
    );
  }
}
