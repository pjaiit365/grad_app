import 'package:flutter/material.dart';
import 'package:grad_app/Components/default_app_bar.dart';
import 'package:grad_app/Components/default_back_button.dart';
import 'package:grad_app/Components/rounded_button.dart';
import 'package:grad_app/constants.dart';

import '../Payment//Components/body.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
