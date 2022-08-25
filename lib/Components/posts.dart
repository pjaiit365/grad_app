import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  final String postSrc;
  const Posts({
    Key? key,
    required this.postSrc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 300,
        color: Colors.deepPurple.withOpacity(0.3),
        child: Image.asset(
          postSrc,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
