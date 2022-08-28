import 'package:flutter/material.dart';
import 'package:grad_app/Components/reset_password_button.dart';
import 'package:grad_app/Components/reset_text_field.dart';
import 'package:grad_app/Screens/ForgotPassword/SubScreens/ResetCheckMail/reset_check_mail.dart';
import 'package:grad_app/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Reset Password',
              style: TextStyle(
                  color: Color(0xff161B26),
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 2),
            ),
            SizedBox(height: 10),
            Text(
              'Enter the email associated with your account and we\'ll send an email with intructions to reset your password.',
              style: TextStyle(
                color: Color(0xffA5AAB2),
                fontSize: 18,
                height: 1.2,
              ),
            ),
            SizedBox(height: 37),
            Text(
              'Email address',
              style: TextStyle(
                color: Color(0xffA5AAB2),
                fontSize: 20,
              ),
            ),
            ResetTextField(hintText: 'Email address'),
            SizedBox(height: 15),
            ResetPasswordButton(
              resetPasswordTextColor: Colors.white,
              resetButtonColor: kprimary,
              resetPasswordText: 'Send Instructions',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ResetCheckMail();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
