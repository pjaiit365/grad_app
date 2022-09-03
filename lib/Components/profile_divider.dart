import 'package:flutter/material.dart';
import 'package:grad_app/Components/build_divider.dart';

class ProfileDivider extends StatelessWidget {
  const ProfileDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 67, right: 22.0),
      child: Row(
        children: [
          buildDivider(),
        ],
      ),
    );
  }
}
