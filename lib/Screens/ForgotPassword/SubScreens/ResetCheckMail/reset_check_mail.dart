import 'package:flutter/material.dart';
import 'package:grad_app/Components/default_back_button.dart';

import '../../../ForgotPassword/SubScreens/ResetCheckMail/Components/body.dart';

class ResetCheckMail extends StatelessWidget {
  const ResetCheckMail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: DefaultBackButton(backButtonColor: Colors.black54),
        backgroundColor: Colors.white,
        elevation: 0.0,
        leadingWidth: 60,
      ),
      body: Body(),
    );
  }
}
