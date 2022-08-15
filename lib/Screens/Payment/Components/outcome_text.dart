import 'package:flutter/material.dart';
import 'package:grad_app/constants.dart';

class OutcomeText extends StatelessWidget {
  final bool outcomeText;
  const OutcomeText({
    Key? key,
    required this.outcomeText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50, top: 24),
      child: Text(
        outcomeText
            ? 'Your payment was done successfully'
            : 'Your payment failed! Try again.',
        style: TextStyle(color: kLightColor, fontSize: 17),
        textAlign: TextAlign.center,
      ),
    );
  }
}
