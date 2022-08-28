import 'package:flutter/material.dart';
import 'package:grad_app/constants.dart';

class SchdeulerTopRow extends StatelessWidget {
  const SchdeulerTopRow({
    Key? key,
    required this.scheduleLightColor,
  }) : super(key: key);

  final Color scheduleLightColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Daily ',
          style: TextStyle(color: Colors.black, fontSize: 35),
        ),
        Text(
          'Meetings',
          style: TextStyle(color: Colors.black, fontSize: 35),
        ),
        Spacer(),
        Text(
          'Jan',
          style: TextStyle(color: kprimary.withOpacity(0.89), fontSize: 22),
        )
      ],
    );
  }
}
