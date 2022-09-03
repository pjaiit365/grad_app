import 'package:flutter/material.dart';
import 'package:grad_app/Components/reset_text_field.dart';

import '../constants.dart';

class BioEdit extends StatelessWidget {
  final String titleText;

  const BioEdit({
    Key? key,
    required this.titleText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 28),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            titleText,
            style: TextStyle(color: kLightColor),
          ),
          ResetTextField(hintText: titleText),
        ],
      ),
    );
  }
}
