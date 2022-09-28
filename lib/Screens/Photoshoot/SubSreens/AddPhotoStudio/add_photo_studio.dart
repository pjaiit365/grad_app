import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:grad_app/constants.dart';

import '../../../../Components/add_new_event_widget.dart';

class AddPhotoStudio extends StatefulWidget {
  const AddPhotoStudio({Key? key}) : super(key: key);

  @override
  State<AddPhotoStudio> createState() => _AddPhotoStudioState();
}

class _AddPhotoStudioState extends State<AddPhotoStudio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final nameTextController = TextEditingController();
  final sloganTextController = TextEditingController();
  final bioTextController = TextEditingController();
  final pictureTextController = TextEditingController();
  final logoTextController = TextEditingController();

  @override
  void dispose() {
    nameTextController.dispose();
    sloganTextController.dispose();
    bioTextController.dispose();
    pictureTextController.dispose();
    logoTextController.dispose();
    super.dispose();
  }

  Future addStudio() async {
    addStudioDetails(
      nameTextController.text.trim(),
      sloganTextController.text.trim(),
      bioTextController.text.trim(),
      pictureTextController.text.trim(),
    );
    Navigator.pop(context);
    setState(
      () {
        studioLogo.add(pictureTextController.text);
        studioName.add(nameTextController.text);
        studioBackgroundImage.add(logoTextController.text);
        studioMantra.add(sloganTextController.text);
        Navigator.pop(context);
      },
    );
  }

  Future addStudioDetails(String studioName, String studioSlogan,
      String studioBio, String studioBackImage) async {
    await FirebaseFirestore.instance.collection('photo studio').add(
      {
        'Studio Name:': studioName,
        'Studio Slogan:': studioSlogan,
        'Studio Bio:': studioBio,
        'Background Image:': studioBackImage,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                'Add Photo Studio',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              SizedBox(height: 20),
              AddNewEventWidget(
                  textController: nameTextController,
                  onChanged: (value) {},
                  newEventWidth: 0.9,
                  newEventHeight: 65,
                  newEventHintText: 'Studio Name'),
              AddNewEventWidget(
                  textController: sloganTextController,
                  onChanged: (value) {},
                  newEventWidth: 0.9,
                  newEventHeight: 65,
                  newEventHintText: 'Studio Slogan'),
              AddNewEventWidget(
                  textController: bioTextController,
                  onChanged: (value) {},
                  newEventWidth: 0.9,
                  newEventHeight: 200,
                  newEventHintText: 'Studio Bio'),
              AddNewEventWidget(
                  textController: pictureTextController,
                  onChanged: (value) {},
                  newEventWidth: 0.9,
                  newEventHeight: 65,
                  newEventHintText: 'Upload background picture'),
              AddNewEventWidget(
                  textController: logoTextController,
                  onChanged: (value) {},
                  newEventWidth: 0.9,
                  newEventHeight: 65,
                  newEventHintText: 'Upload studio logo'),
              SizedBox(height: 20),
              TextButton(
                onPressed: addStudio,
                child: Text(
                  'Add studio',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    backgroundColor: kprimary,
                    padding:
                        EdgeInsets.symmetric(horizontal: 140, vertical: 16),
                    elevation: 4.0,
                    shadowColor: kprimary),
              )
            ],
          ),
        ),
      ),
    );
  }
}
