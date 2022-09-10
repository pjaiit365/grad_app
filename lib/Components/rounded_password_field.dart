import 'package:flutter/material.dart';
import 'package:grad_app/Components/text_field_container.dart';
import 'package:grad_app/constants.dart';

class RoundedPasswordField extends StatefulWidget {
  final String hintText;
  final ValueChanged<String> onChanged;
  RoundedPasswordField({
    Key? key,
    required this.onChanged,
    this.hintText = 'Password',
  }) : super(key: key);

  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: widget.onChanged,
        obscureText: _passwordVisible,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(color: Colors.grey),
          icon: Icon(
            Icons.lock,
            color: kprimary,
          ),
          border: InputBorder.none,
          suffixIcon: IconButton(
            icon: _passwordVisible
                ? Icon(
                    Icons.visibility,
                    color: Colors.grey,
                  )
                : Icon(
                    Icons.visibility_off,
                    color: Colors.grey,
                  ),
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
          ),
        ),
      ),
    );
  }
}

class RoundedPasswordFieldcontroller extends StatefulWidget {
  final TextEditingController textController;
  final String hintText;
  final ValueChanged<String> onChanged;
  RoundedPasswordFieldcontroller({
    Key? key,
    required this.onChanged,
    this.hintText = 'Password',
    required this.textController,
  }) : super(key: key);

  @override
  State<RoundedPasswordFieldcontroller> createState() =>
      _RoundedPasswordFieldcontrollerState();
}

class _RoundedPasswordFieldcontrollerState
    extends State<RoundedPasswordFieldcontroller> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        controller: widget.textController,
        onChanged: widget.onChanged,
        obscureText: _passwordVisible,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(color: Colors.grey),
          icon: Icon(
            Icons.lock,
            color: kprimary,
          ),
          border: InputBorder.none,
          suffixIcon: IconButton(
            icon: _passwordVisible
                ? Icon(
                    Icons.visibility,
                    color: Colors.grey,
                  )
                : Icon(
                    Icons.visibility_off,
                    color: Colors.grey,
                  ),
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
          ),
        ),
      ),
    );
  }
}
