import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:grad_app/Components/default_back_button.dart';
import 'package:grad_app/constants.dart';

class PhotoshootScreen extends StatelessWidget {
  const PhotoshootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      appBar: AppBar(
        leading: DefaultBackButton(backButtonColor: Colors.white),
        backgroundColor: kprimary,
        title: Text('Photo Studios'),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'List of Accredited Photographers',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 20),
              PhotoStudioItem(
                studioLogo: 'assets/images/knust_logo.png',
                studioName: 'studioName',
                studioMantra: 'studioMantra',
                studioBackgroundImage: 'assets/images/profile_pic.jpg',
                press: () {},
              ),
              PhotoStudioItem(
                studioLogo: 'assets/images/knust_logo.png',
                studioName: 'studioName',
                studioMantra: 'studioMantra',
                studioBackgroundImage: 'assets/images/profile_pic.jpg',
                press: () {},
              ),
              PhotoStudioItem(
                studioLogo: 'assets/images/knust_logo.png',
                studioName: 'studioName',
                studioMantra: 'studioMantra',
                studioBackgroundImage: 'assets/images/profile_pic.jpg',
                press: () {},
              ),
              PhotoStudioItem(
                studioLogo: 'assets/images/knust_logo.png',
                studioName: 'studioName',
                studioMantra: 'studioMantra',
                studioBackgroundImage: 'assets/images/profile_pic.jpg',
                press: () {},
              ),
              PhotoStudioItem(
                studioLogo: 'assets/images/knust_logo.png',
                studioName: 'studioName',
                studioMantra: 'studioMantra',
                studioBackgroundImage: 'assets/images/profile_pic.jpg',
                press: () {},
              ),
              PhotoStudioItem(
                studioLogo: 'assets/images/knust_logo.png',
                studioName: 'studioName',
                studioMantra: 'studioMantra',
                studioBackgroundImage: 'assets/images/profile_pic.jpg',
                press: () {},
              ),
              PhotoStudioItem(
                studioLogo: 'assets/images/knust_logo.png',
                studioName: 'studioName',
                studioMantra: 'studioMantra',
                studioBackgroundImage: 'assets/images/profile_pic.jpg',
                press: () {},
              ),
              PhotoStudioItem(
                studioLogo: 'assets/images/knust_logo.png',
                studioName: 'studioName',
                studioMantra: 'studioMantra',
                studioBackgroundImage: 'assets/images/profile_pic.jpg',
                press: () {},
              ),
              PhotoStudioItem(
                studioLogo: 'assets/images/knust_logo.png',
                studioName: 'studioName',
                studioMantra: 'studioMantra',
                studioBackgroundImage: 'assets/images/profile_pic.jpg',
                press: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PhotoStudioItem extends StatelessWidget {
  final VoidCallback press;
  final String studioLogo;
  final String studioBackgroundImage;
  final String studioName;
  final String studioMantra;
  const PhotoStudioItem({
    Key? key,
    required this.studioLogo,
    required this.studioName,
    required this.studioMantra,
    required this.studioBackgroundImage,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            color: kprimary,
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage(studioBackgroundImage), fit: BoxFit.fill),
          ),
          child: DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  kprimaryAlternate.withOpacity(0.7),
                  kprimary.withOpacity(0.7),
                ],
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset(
                    studioLogo,
                    color: Colors.white,
                    height: 120,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 8, bottom: 12, top: 8),
                    child: VerticalDivider(
                      color: Colors.white,
                      width: 10,
                      thickness: 4,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        studioName,
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      Text(
                        studioMantra,
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
