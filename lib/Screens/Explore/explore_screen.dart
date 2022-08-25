import 'package:flutter/material.dart';
import 'package:grad_app/Components/custom_bottom_nav.dart';
import 'package:grad_app/Components/posts.dart';
import 'package:grad_app/Components/stories.dart';
import 'package:grad_app/constants.dart';
import 'package:grad_app/enum.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNav(selectedMenu: MenuState.explore),
    );
  }
}

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  final List<String> _postSrc = [
    'assets/images/profile_pic.jpg',
    'assets/images/profile_pic.jpg',
    'assets/images/profile_pic.jpg',
    'assets/images/profile_pic.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        //stories like in instagram posts

        //horizontal bar to toggle between grid, list view of pictures

        //graduation pics to be displayed
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: _postSrc.length,
            itemBuilder: (context, index) {
              return Posts(
                postSrc: _postSrc[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
