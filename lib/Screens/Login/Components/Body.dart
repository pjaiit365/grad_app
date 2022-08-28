import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grad_app/Components/already_have_account.dart';
import 'package:grad_app/Components/fogot_password.dart';
import 'package:grad_app/Components/rounded_button.dart';
import 'package:grad_app/Components/rounded_input_field.dart';
import 'package:grad_app/Components/rounded_password_field.dart';
import 'package:grad_app/Screens/Dashboard/dashboard_screen.dart';
import 'package:grad_app/Screens/ForgotPassword/forgot_password.dart';
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
    return SingleChildScrollView(
      child: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'LOGIN',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              'assets/icons/login.svg',
              height: size.height * 0.3,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputTextField(
              hintText: 'Username',
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            ForgotPassword(press: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => ForgotYourPassword(),
                ),
              );
            }),
            RoundedButton(
              text: 'LOGIN',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const DashboardScreen();
                  }),
                );
              },
            ),
            SizedBox(height: size.height * 0.02),
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
      ),
    );
  }
}
