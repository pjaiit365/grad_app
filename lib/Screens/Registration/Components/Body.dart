import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grad_app/Components/rounded_input_field.dart';
import 'package:grad_app/Components/rounded_password_field.dart';
import 'package:grad_app/Screens/Registration/Components/background.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'SIGNUP',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset(
            'assets/icons/signup.svg',
            height: size.height * 0.35,
          ),
          RoundedInputTextField(
            hintText: 'Email Address',
            onChanged: (value) {},
          ),
          RoundedInputTextField(
            hintText: 'Index Number',
            onChanged: (value) {},
          ),
          RoundedPasswordField(onChanged: (value) {})
        ],
      ),
    );
  }
}
