import 'package:flutter/material.dart';
import 'package:grad_app/Components/bio_edit.dart';
import 'package:grad_app/Components/reset_text_field.dart';
import 'package:grad_app/constants.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 15),
          BioEdit(titleText: 'Personal Email Address'),
          BioEdit(titleText: 'Primary Number'),
          BioEdit(titleText: 'Postal Address Line 1'),
          BioEdit(titleText: 'Postal Address Line 2'),
          BioEdit(titleText: 'Postal Address Line 3'),
          BioEdit(titleText: 'Postal Address Line 4'),
          BioEdit(titleText: 'Residential Address Line 1'),
          BioEdit(titleText: 'Residential Address Line 2'),
          BioEdit(titleText: 'Residential Address Line 3'),
          BioEdit(titleText: 'Residential Address Line 4'),
        ],
      ),
    );
  }
}
