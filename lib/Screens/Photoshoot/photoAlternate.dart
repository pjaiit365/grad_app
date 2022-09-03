import 'package:flutter/material.dart';
import 'package:grad_app/Components/default_back_button.dart';
import 'package:grad_app/Components/floating_widget.dart';
import 'package:grad_app/Screens/Photoshoot/SubSreens/AddPhotoStudio/add_photo_studio.dart';
import 'package:grad_app/Screens/Photoshoot/photo_studio_details.dart';
import 'package:grad_app/Screens/Photoshoot/photoshoot_screen.dart';
import 'package:grad_app/constants.dart';

class PhotoAlternate extends StatefulWidget {
  const PhotoAlternate({Key? key}) : super(key: key);

  @override
  State<PhotoAlternate> createState() => _PhotoAlternateState();
}

class _PhotoAlternateState extends State<PhotoAlternate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: DefaultBackButton(backButtonColor: Colors.white),
        backgroundColor: kprimary,
        title: Text('Photo Studio'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Body(),
      floatingActionButton: FloatingWidget(
        floatingIcon: Icons.add,
        screenReturn: () {
          Navigator.push(
              context,
              DialogRoute(
                context: context,
                builder: (context) => AddPhotoStudio(),
              ));
        },
      ),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<String> studioLogo = [
    'assets/images/knust_logo.png',
    'assets/images/knust_logo.png',
  ];
  List<String> studioName = [
    'studioName',
    'studioName',
  ];
  List<String> studioBackgroundImage = [
    'assets/images/profile_pic.jpg',
    'assets/images/profile_pic.jpg',
  ];
  List<String> studioMantra = [
    'studioMantra',
    'studioMantra',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 12),
      child: studioLogo.isNotEmpty
          ? ListView.separated(
              itemCount: studioLogo.length,
              itemBuilder: (context, index) {
                return PhotoStudioItem(
                  studioLogo: studioLogo[index],
                  studioName: studioName[index],
                  studioMantra: studioMantra[index],
                  studioBackgroundImage: studioBackgroundImage[index],
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PhotoStudioDetails(),
                        ));
                  },
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(height: 0);
              },
            )
          : const Center(
              child: Text('There are no accredited photographer on this list')),
    );
  }
}
