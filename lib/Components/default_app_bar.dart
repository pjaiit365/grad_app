import 'package:flutter/material.dart';
import 'package:grad_app/constants.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget leading;
  final action;
  const DefaultAppBar({
    Key? key,
    required this.title,
    required this.leading,
    this.action,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(56.0);
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: TextStyle(color: kprimary)),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0.0,
      automaticallyImplyLeading: false,
      iconTheme: IconThemeData(color: kprimary),
      leading: leading,
      actions: action,
    );
  }
}
