import 'package:flutter/material.dart';
import 'package:grad_app/constants.dart';

class HeaderLabel extends StatelessWidget {
  final String headerText;
  const HeaderLabel({
    Key? key,
    required this.headerText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 15, top: 10),
          child: Text(
            headerText,
            style: TextStyle(color: kLightColor, fontSize: 17),
          ),
        ),
      ],
    );
  }
}
