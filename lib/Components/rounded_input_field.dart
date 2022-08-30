import 'package:flutter/material.dart';
import 'package:grad_app/Components/text_field_container.dart';
import 'package:grad_app/constants.dart';

class RoundedInputTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputTextField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey),
            icon: Icon(
              icon,
              color: kprimary,
            ),
            border: InputBorder.none),
      ),
    );
  }
}
