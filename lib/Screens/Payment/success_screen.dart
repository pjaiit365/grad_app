import 'package:flutter/material.dart';
import 'package:grad_app/Components/rounded_button.dart';
import 'package:grad_app/Screens/Payment/Components/success_failure.dart';
import 'package:grad_app/constants.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          EmptySection(imgSrc: true, subText: true, outcomeText: true),
          RoundedButton(text: 'OK', press: () {}),
        ],
      ),
    );
  }
}
