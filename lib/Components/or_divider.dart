import 'package:flutter/material.dart';
import 'package:grad_app/Components/build_divider.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.84,
      child: Row(
        children: <Widget>[
          buildDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'OR',
              style: TextStyle(fontWeight: FontWeight.w600, color: Colors.grey),
            ),
          ),
          buildDivider(),
        ],
      ),
    );
  }
}
