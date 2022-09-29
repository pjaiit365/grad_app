import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:grad_app/Screens/Login/loginAlternate.dart';

import '../../Components/already_have_account.dart';
import '../../Components/or_divider.dart';
import '../../Components/rounded_input_field.dart';
import '../../Components/rounded_password_field.dart';
import '../../Components/social_media_used.dart';
import '../../constants.dart';

class RegistrationAlternate extends StatefulWidget {
  const RegistrationAlternate({Key? key}) : super(key: key);

  @override
  State<RegistrationAlternate> createState() => _RegistrationAlternateState();
}

class _RegistrationAlternateState extends State<RegistrationAlternate> {
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
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _indexController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Future signUp() async {
    try {
      if (PasswordConfirmed() && _indexController != null) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
        );
        addUserDetails(
          _emailController.text.trim(),
          int.parse(
            _indexController.text.trim(),
          ),
        );
        showDialog(
            context: context,
            builder: (context) {
              return SnackBar(
                content: Text('Succesfully Signed Up!'),
              );
            });
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginAlternate(),
          ),
        );
      } else {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                content: Text('Make sure both password fields are the same.'),
              );
            });
      }
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

  Future addUserDetails(String email, int indexNumber) async {
    await FirebaseFirestore.instance.collection('user').add(
      {
        'Email': email,
        'Index Number': indexNumber,
      },
    );
  }

  bool PasswordConfirmed() {
    if (_passwordController.text.trim() ==
        _confirmPasswordController.text.trim())
      return true;
    else
      return false;
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
                'Create your Account',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
              SizedBox(height: 10),
              RoundedInputTextFieldcontroller(
                hintText: 'Email',
                onChanged: (value) {},
                textController: _emailController,
              ),
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
                textController: _passwordController,
              ),
              RoundedPasswordFieldcontroller(
                textController: _confirmPasswordController,
                onChanged: (String value) {},
                hintText: 'Confirm Password',
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: signUp,
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: kprimary,
                  elevation: 1.0,
                  padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.359, vertical: 17),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: BorderSide.none),
                ),
              ),
              SizedBox(height: 20),
              Center(child: OrDivider()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SocialMedia(iconSrc: 'assets/icons/google_1.svg'),
                  SocialMedia(iconSrc: 'assets/icons/facebook_1.svg'),
                  SocialMedia(iconSrc: 'assets/icons/twitter_1.svg'),
                ],
              ),
              SizedBox(height: 12),
              AlreadyHaveAnAccount(
                login: false,
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginAlternate();
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
