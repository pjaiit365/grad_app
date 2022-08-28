import 'package:flutter/material.dart';
import 'package:grad_app/Components/default_back_button.dart';
import 'package:grad_app/Components/reset_password_button.dart';
import 'package:grad_app/Components/reset_text_field.dart';
import 'package:grad_app/constants.dart';
// import 'package:grad_app/Screens/ForgotPassword/SubScreens/CreateNewPassword/Components/body.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({Key? key}) : super(key: key);

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      appBar: AppBar(
        leading: DefaultBackButton(backButtonColor: Colors.black54),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Create new password',
              style: TextStyle(
                color: Color(0xff161B26),
                fontSize: 35,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Your new password must be different from previous used passwords.',
              style: TextStyle(
                color: Color(0xffA5AAB2),
                fontSize: 19,
                height: 1.2,
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 20),
            Text(
              'Password',
              style: TextStyle(
                color: Color(0xffA5AAB2),
                fontSize: 19,
                height: 1.2,
              ),
              textAlign: TextAlign.left,
            ),
            ResetTextField(hintText: 'Password'),
            Text(
              'Must be at least 8 characters.',
              style: TextStyle(
                color: Color(0xffA5AAB2),
                fontSize: 16,
                height: 1.2,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Confirm Password',
              style: TextStyle(
                color: Color(0xffA5AAB2),
                fontSize: 19,
                height: 1.2,
              ),
              textAlign: TextAlign.left,
            ),
            ResetTextField(hintText: 'Confirm password'),
            Text(
              'Both passwords must match.',
              style: TextStyle(
                color: Color(0xffA5AAB2),
                fontSize: 16,
                height: 1.2,
              ),
            ),
            SizedBox(height: 28),
            TextButton(
              onPressed: () {},
              child: Text(
                'Reset Password',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              style: TextButton.styleFrom(
                backgroundColor: kprimary,
                elevation: 1.0,
                padding: EdgeInsets.symmetric(horizontal: 116, vertical: 16),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide.none),
              ),
            )
          ],
        ),
      ),
    );
  }
}
