import 'package:flutter/material.dart';
import 'package:grad_app/Components/custom_bottom_nav.dart';
import 'package:grad_app/Components/dashboard_header_widget.dart';
import 'package:grad_app/Components/dashboard_widget.dart';
import 'package:grad_app/Screens/Profile/profile_screen.dart';
import 'package:grad_app/enum.dart';

import '../Dashboard/Components/body.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNav(selectedMenu: MenuState.home),
    );
  }
}
