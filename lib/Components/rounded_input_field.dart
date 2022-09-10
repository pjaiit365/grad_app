import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grad_app/Components/text_field_container.dart';
import 'package:grad_app/constants.dart';

class RoundedInputTextField extends StatefulWidget {
  final int maxlength;
  final TextInputType keyboardType;
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputTextField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
    this.keyboardType = TextInputType.text,
    this.maxlength = 50,
  }) : super(key: key);

  @override
  State<RoundedInputTextField> createState() => _RoundedInputTextFieldState();
}

class _RoundedInputTextFieldState extends State<RoundedInputTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        keyboardType: widget.keyboardType,
        onChanged: widget.onChanged,
        maxLength: widget.maxlength,
        decoration: InputDecoration(
            counterText: '',
            hintText: widget.hintText,
            hintStyle: TextStyle(color: Colors.grey),
            icon: Icon(
              widget.icon,
              color: kprimary,
            ),
            border: InputBorder.none),
      ),
    );
  }
}

class RoundedInputTextFieldcontroller extends StatefulWidget {
  final TextEditingController textController;
  final int maxlength;
  final TextInputType keyboardType;
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputTextFieldcontroller({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
    this.keyboardType = TextInputType.text,
    this.maxlength = 50,
    required this.textController,
  }) : super(key: key);

  @override
  State<RoundedInputTextFieldcontroller> createState() =>
      _RoundedInputTextFieldcontrollerState();
}

class _RoundedInputTextFieldcontrollerState
    extends State<RoundedInputTextFieldcontroller> {
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        controller: widget.textController,
        keyboardType: widget.keyboardType,
        onChanged: widget.onChanged,
        maxLength: widget.maxlength,
        decoration: InputDecoration(
            counterText: '',
            hintText: widget.hintText,
            hintStyle: TextStyle(color: Colors.grey),
            icon: Icon(
              widget.icon,
              color: kprimary,
            ),
            border: InputBorder.none),
      ),
    );
  }
}
