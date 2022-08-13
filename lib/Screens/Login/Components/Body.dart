import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grad_app/Components/already_have_account.dart';
import 'package:grad_app/Components/rounded_button.dart';
import 'package:grad_app/Components/rounded_input_field.dart';
import 'package:grad_app/Components/rounded_password_field.dart';
import 'package:grad_app/Components/text_field_container.dart';
import 'package:grad_app/Screens/Dashboard/dashboard_screen.dart';
import 'package:grad_app/Screens/Login/Components/background.dart';
import 'package:grad_app/Screens/Registration/registration_screen.dart';
import 'package:grad_app/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'LOGIN',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SvgPicture.asset(
            'assets/icons/login.svg',
            height: size.height * 0.3,
          ),
          RoundedInputTextField(
            hintText: 'Username',
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: 'LOGIN',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return DashboardScreen();
                }),
              );
            },
          ),
          AlreadyHaveAnAccount(
            login: true,
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return RegistrationScreen();
              }));
            },
          )
        ],
      ),
    );
  }
}
