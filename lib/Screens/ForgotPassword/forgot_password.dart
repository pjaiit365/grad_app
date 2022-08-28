import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grad_app/Components/default_back_button.dart';
import 'package:grad_app/Components/reset_password_button.dart';
import 'package:grad_app/Components/reset_text_field.dart';
import 'package:grad_app/Components/rounded_button.dart';
import 'package:grad_app/Components/rounded_input_field.dart';
import 'package:grad_app/Components/text_field_container.dart';
import 'package:grad_app/constants.dart';

import '../ForgotPassword/Components/body.dart';

class ForgotYourPassword extends StatelessWidget {
  const ForgotYourPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: DefaultBackButton(
          backButtonColor: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'HelpIcon',
          style: TextStyle(color: Colors.black),
          textAlign: TextAlign.right,
        ),
      ),
      body: Body(),
    );
  }
}
