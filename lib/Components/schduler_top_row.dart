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
          style: TextStyle(color: Colors.black, fontSize: 33),
        ),
        Text(
          'Meetings',
          style: TextStyle(color: Colors.black, fontSize: 33),
        ),
        Spacer(),
        Text(
          'Sept ' + '2022',
          style: TextStyle(color: kprimary.withOpacity(0.89), fontSize: 19),
        )
      ],
    );
  }
}
