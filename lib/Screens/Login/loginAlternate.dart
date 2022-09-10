import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grad_app/Components/or_divider.dart';
import 'package:grad_app/Components/reset_password_button.dart';
import 'package:grad_app/Components/reset_text_field.dart';
import 'package:grad_app/Components/rounded_input_field.dart';
import 'package:grad_app/Components/rounded_password_field.dart';
import 'package:grad_app/Screens/Dashboard/dashboard_screen.dart';
import 'package:grad_app/Screens/Registration/registrationAlternate.dart';
import 'package:grad_app/Screens/Registration/registration_screen.dart';
import 'package:grad_app/constants.dart';

import '../../Components/already_have_account.dart';
import '../../Components/fogot_password.dart';
import '../../Components/social_media_used.dart';
import '../ForgotPassword/forgot_password.dart';

class LoginAlternate extends StatefulWidget {
  const LoginAlternate({Key? key}) : super(key: key);

  @override
  State<LoginAlternate> createState() => _LoginAlternateState();
}

class _LoginAlternateState extends State<LoginAlternate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _emailController = TextEditingController();
  final _indexController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim());
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text('Sign In successful!'),
            );
          });
    } on FirebaseAuthException catch (e) {
      print(e.toString());
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text(e.message.toString()),
            );
          });
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _indexController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 27.0, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 10),
              Center(
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 100,
                ),
              ),
              SizedBox(height: 25),
              Text(
                'Login to your Account',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
              SizedBox(height: 10),
              RoundedInputTextFieldcontroller(
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Email',
                  onChanged: (value) {},
                  textController: _emailController),
              SizedBox(height: 4),
              RoundedInputTextFieldcontroller(
                textController: _indexController,
                maxlength: 7,
                keyboardType: TextInputType.number,
                hintText: 'Index Number',
                onChanged: (value) {},
                icon: Icons.numbers_rounded,
              ),
              SizedBox(height: 4),
              RoundedPasswordFieldcontroller(
                  onChanged: (String value) {},
                  textController: _passwordController),
              ForgotPassword(
                press: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ForgotYourPassword(),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: signIn,
                child: Text(
                  'Sign In',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: kprimary,
                  elevation: 1.0,
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.365, vertical: 17),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide.none),
                ),
              ),
              SizedBox(height: 30),
              Center(child: OrDivider()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SocialMedia(iconSrc: 'assets/icons/google-plus.svg'),
                  SocialMedia(iconSrc: 'assets/icons/facebook.svg'),
                  SocialMedia(iconSrc: 'assets/icons/twitter.svg'),
                ],
              ),
              SizedBox(height: 25),
              AlreadyHaveAnAccount(
                login: true,
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return RegistrationAlternate();
                  }));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
