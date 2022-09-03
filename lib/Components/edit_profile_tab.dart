import 'package:flutter/material.dart';
import 'package:grad_app/constants.dart';

class EditProfileTabBio extends StatefulWidget {
  final String tabText;
  const EditProfileTabBio({
    Key? key,
    required this.tabText,
  }) : super(key: key);

  @override
  State<EditProfileTabBio> createState() => _EditProfileTabBioState();
}

class _EditProfileTabBioState extends State<EditProfileTabBio> {
  late bool selectedTab;
  @override
  void initState() {
    selectedTab = true;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        setState(() {
          selectedTab = !selectedTab;
        });
      },
      child: Column(
        children: <Widget>[
          Text(
            widget.tabText,
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          Container(
            height: 4,
            width: size.width * 0.5,
            color: selectedTab ? Colors.white : kprimary,
          ),
        ],
      ),
    );
  }
}

class EditProfileTabProg extends StatefulWidget {
  final String tabText;
  const EditProfileTabProg({
    Key? key,
    required this.tabText,
  }) : super(key: key);

  @override
  State<EditProfileTabProg> createState() => _EditProfileTabProgState();
}

class _EditProfileTabProgState extends State<EditProfileTabProg> {
  late bool selectedTab;
  @override
  void initState() {
    selectedTab = false;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        setState(() {
          selectedTab = !selectedTab;
        });
      },
      child: Column(
        children: <Widget>[
          Text(
            widget.tabText,
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          Container(
            height: 4,
            width: size.width * 0.5,
            color: selectedTab ? Colors.white : kprimary,
          ),
        ],
      ),
    );
  }
}
