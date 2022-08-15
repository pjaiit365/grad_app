import 'package:flutter/material.dart';
import 'package:grad_app/Screens/Payment/Components/outcome_text.dart';
import 'package:grad_app/Screens/Payment/success_screen.dart';
import 'package:grad_app/constants.dart';

class EmptySection extends StatelessWidget {
  final bool imgSrc;
  final bool subText;
  final bool outcomeText;
  const EmptySection({
    Key? key,
    required this.imgSrc,
    required this.subText,
    required this.outcomeText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
            image: AssetImage(imgSrc
                ? 'assets/images/success.gif'
                : 'assets/images/fail.gif'),
            height: 150.0),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(subText ? 'Successful !!' : 'Fail !!',
              style: kDarkTextStyle),
        ),
        OutcomeText(outcomeText: outcomeText),
      ],
    );
  }
}
