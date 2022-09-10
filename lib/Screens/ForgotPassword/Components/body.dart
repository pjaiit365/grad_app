import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grad_app/Components/reset_password_button.dart';
import 'package:grad_app/Components/reset_text_field.dart';
import 'package:grad_app/Components/rounded_input_field.dart';
import 'package:grad_app/Screens/ForgotPassword/SubScreens/ResetCheckMail/reset_check_mail.dart';
import 'package:grad_app/constants.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future PasswordReset() async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(
        email: _emailController.text.trim(),
      );
      showDialog(
        context: context,
        builder: (context) {
          return const ResetCheckMail();
        },
      );
    } on FirebaseAuthException catch (e) {
      print(e.toString());
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(
              e.message.toString(),
            ),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 80),
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
            RoundedInputTextFieldcontroller(
              textController: _emailController,
              onChanged: (value) {},
              keyboardType: TextInputType.emailAddress,
              hintText: 'Email address',
            ),
            SizedBox(height: 15),
            ResetPasswordButton(
              resetPasswordTextColor: Colors.white,
              resetButtonColor: kprimary,
              resetPasswordText: 'Send Instructions',
              press: PasswordReset,
            ),
          ],
        ),
      ),
    );
  }
}
