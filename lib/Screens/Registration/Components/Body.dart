import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grad_app/Components/already_have_account.dart';
import 'package:grad_app/Components/or_divider.dart';
import 'package:grad_app/Components/rounded_button.dart';
import 'package:grad_app/Components/rounded_input_field.dart';
import 'package:grad_app/Components/rounded_password_field.dart';
import 'package:grad_app/Components/social_media_icon.dart';
import 'package:grad_app/Screens/Dashboard/dashboard_screen.dart';
import 'package:grad_app/Screens/Login/login_screen.dart';
import 'package:grad_app/Screens/Registration/Components/background.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Background(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'SIGNUP',
              style: TextStyle(fontWeight: FontWeight.bold),
              // textAlign: TextAlign.center,
            ),
            SizedBox(height: size.height * 0.02),
            SvgPicture.asset(
              'assets/icons/signup.svg',
              height: size.height * 0.28,
            ),
            SizedBox(height: size.height * 0.01),
            RoundedInputTextField(
              hintText: 'Email Address',
              onChanged: (value) {},
            ),
            RoundedInputTextField(
              hintText: 'Index Number',
              icon: Icons.numbers_rounded,
              onChanged: (value) {},
            ),
            RoundedPasswordField(onChanged: (value) {}),
            SizedBox(height: size.height * 0.01),
            RoundedButton(press: () {}, text: 'SIGNUP'),
            SizedBox(height: size.height * 0.005),
            AlreadyHaveAnAccount(
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginScreen();
                  }));
                },
                login: false),
            SizedBox(height: size.height * 0.01),
            OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocialMediaIcon(
                  iconSrc: 'assets/icons/facebook.svg',
                  press: () {},
                ),
                SocialMediaIcon(
                  iconSrc: 'assets/icons/twitter.svg',
                  press: () {},
                ),
                SocialMediaIcon(
                  iconSrc: 'assets/icons/google-plus.svg',
                  press: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
