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
              RoundedInputTextField(hintText: 'Email', onChanged: (value) {}),
              SizedBox(height: 4),
              RoundedInputTextField(
                maxlength: 7,
                keyboardType: TextInputType.number,
                hintText: 'Index Number',
                onChanged: (value) {},
                icon: Icons.numbers_rounded,
              ),
              SizedBox(height: 4),
              RoundedPasswordField(onChanged: (String value) {}),
              RoundedPasswordField(
                onChanged: (String value) {},
                hintText: 'Confirm Password',
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginAlternate(),
                    ),
                  );
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: kprimary,
                  elevation: 1.0,
                  padding: EdgeInsets.symmetric(horizontal: 148, vertical: 17),
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
                  SocialMedia(iconSrc: 'assets/icons/google-plus.svg'),
                  SocialMedia(iconSrc: 'assets/icons/facebook.svg'),
                  SocialMedia(iconSrc: 'assets/icons/twitter.svg'),
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