import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grad_app/Components/rounded_button.dart';
import 'package:grad_app/Screens/Welcome/Components/background.dart';
import 'package:grad_app/constants.dart';

import '../../Login/login_screen.dart';
import '../../Registration/registration_screen.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "WELCOME TO G to G!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            SizedBox(height: size.height * 0.035),
            SvgPicture.asset(
              'assets/icons/chat.svg',
              height: size.height * 0.45,
              alignment: Alignment.center,
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ));
              },
            ),
            SizedBox(height: size.height * 0.01),
            RoundedButton(
              text: "SIGN UP",
              color: kprimaryLightColor,
              textColor: Colors.black,
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegistrationScreen(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
