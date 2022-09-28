import 'package:flutter/material.dart';
import 'package:grad_app/constants.dart';

class EditProfileMenuItem extends StatelessWidget {
  final String mainText;
  final String subText;
  const EditProfileMenuItem({
    Key? key,
    required this.mainText,
    required this.subText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                mainText,
                style: TextStyle(color: kLightColor, fontSize: 17),
              ),
              Text(
                subText,
                style: TextStyle(color: kprimary, fontSize: 18),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
