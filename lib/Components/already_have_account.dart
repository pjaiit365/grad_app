import 'package:flutter/material.dart';
import 'package:grad_app/constants.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  final bool login;
  final VoidCallback press;
  const AlreadyHaveAnAccount({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? 'Don\'t have an account?' : 'Already have an account?',
          style: TextStyle(color: kprimary),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? ' Sign Up' : ' Sign In',
            style: TextStyle(
              color: kprimary,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
