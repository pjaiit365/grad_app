import 'package:flutter/material.dart';
import 'package:grad_app/Components/default_back_button.dart';
import 'package:grad_app/constants.dart';

import '../../Components/photo_studio_item.dart';

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
                studioBackgroundImage: 'assets/images/grad_pic_8.jpg',
                press: () {},
              ),
              PhotoStudioItem(
                studioLogo: 'assets/images/grad_pic_7.png',
                studioName: 'studioName',
                studioMantra: 'studioMantra',
                studioBackgroundImage: 'assets/images/grad_pic_6.jpg',
                press: () {},
              ),
              PhotoStudioItem(
                studioLogo: 'assets/images/knust_logo.png',
                studioName: 'studioName',
                studioMantra: 'studioMantra',
                studioBackgroundImage: 'assets/images/grad_pic_5.jpg',
                press: () {},
              ),
              PhotoStudioItem(
                studioLogo: 'assets/images/knust_logo.png',
                studioName: 'studioName',
                studioMantra: 'studioMantra',
                studioBackgroundImage: 'assets/images/grad_pic_4.jpg',
                press: () {},
              ),
              PhotoStudioItem(
                studioLogo: 'assets/images/knust_logo.png',
                studioName: 'studioName',
                studioMantra: 'studioMantra',
                studioBackgroundImage: 'assets/images/grad_pic_3.jpg',
                press: () {},
              ),
              PhotoStudioItem(
                studioLogo: 'assets/images/knust_logo.png',
                studioName: 'studioName',
                studioMantra: 'studioMantra',
                studioBackgroundImage: 'assets/images/grad_pic_2.jpg',
                press: () {},
              ),
              PhotoStudioItem(
                studioLogo: 'assets/images/knust_logo.png',
                studioName: 'studioName',
                studioMantra: 'studioMantra',
                studioBackgroundImage: 'assets/images/grad_pic_1.jpg',
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
