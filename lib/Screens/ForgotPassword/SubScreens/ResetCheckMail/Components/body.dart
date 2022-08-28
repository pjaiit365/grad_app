import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grad_app/Components/reset_password_button.dart';
import 'package:grad_app/Screens/ForgotPassword/SubScreens/CreateNewPassword/create_new_password.dart';
import 'package:grad_app/Screens/Login/login_screen.dart';
import 'package:grad_app/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 70),
          Container(
            padding: EdgeInsets.all(35),
            height: 140,
            width: 140,
            decoration: BoxDecoration(
              color: Color(0xffF7F5FF),
              borderRadius: BorderRadius.circular(30),
            ),
            child: SvgPicture.asset(
              'assets/icons/lette_mail.svg',
              color: kprimary,
            ),
          ),
          SizedBox(height: 25),
          Text(
            'Check your mail',
            style: TextStyle(
              color: Color(0xff161B26),
              fontSize: 35,
              fontWeight: FontWeight.normal,
              wordSpacing: 0.2,
            ),
          ),
          // SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(
                left: 28.0, right: 28.0, top: 10, bottom: 45),
            child: Text(
              'We have sent password recovery instructions to your email.',
              style: TextStyle(
                color: Color(0xffA5AAB2),
                fontSize: 19,
                height: 1.2,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          ResetPasswordButton(
            resetPasswordTextColor: Colors.white,
            resetButtonColor: kprimary,
            resetPasswordText: 'Open Email app',
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreateNewPassword(),
                  ));
            },
          ),
          SizedBox(height: 15),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
              );
            },
            child: Text(
              'Skip, I\'ll confirm later',
              style: TextStyle(color: Color(0xff767D8A), fontSize: 19),
            ),
          ),
          SizedBox(height: 120),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: Text(
              'Did not receive the email? Check your spam filter,',
              style: TextStyle(
                color: Color(0xffA5AAB2),
                fontSize: 16,
                height: 1.2,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'or ',
                style: TextStyle(
                  color: Color(0xffA5AAB2),
                  fontSize: 16,
                  height: 1.2,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'try another email address',
                  style: TextStyle(
                    color: kprimary,
                    fontSize: 16,
                    height: 1.2,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
