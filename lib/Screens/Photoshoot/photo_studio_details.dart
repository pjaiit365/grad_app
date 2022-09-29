import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grad_app/Components/default_back_button.dart';
import 'package:grad_app/constants.dart';

import '../../Components/photoshootPackages.dart';

class PhotoStudioDetails extends StatelessWidget {
  const PhotoStudioDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: DefaultBackButton(backButtonColor: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: Text(
          'Elis Studios' + ' Details',
          style: TextStyle(color: kprimary),
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Packages',
                  style: TextStyle(color: Colors.black, fontSize: 19)),
              ListView.separated(
                  // scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return PhotoShootPackages(
                      packageColor: packageColor[index],
                      packageType: packageType[index],
                      retouchNumber: retouchNumber[index],
                      rawNumber: rawNumber[index],
                      packagePrice: packagePrice[index],
                      isSnackGiven: isSnackGiven[index],
                      packageBackgroundImage: packageBackgroundImage[index],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 20, height: 20);
                  },
                  itemCount: packageType.length),
              SizedBox(height: 20),
              Text('Location',
                  style: TextStyle(color: Colors.black, fontSize: 19)),
              SizedBox(height: 5),
              Container(
                height: 160,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: CupertinoColors.systemGrey5,
                    borderRadius: BorderRadius.circular(12)),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    '- Find my stand ' +
                        'behind the Independece Hall Bus' +
                        ' Stop.\n'
                            '- I have a ' +
                        'green tent' +
                        ' with ' +
                        '"ELIS STUDIOS"' +
                        ' encrypted on a banner beside it.\n'
                            '- Thank you.',
                    style: TextStyle(color: kprimary, fontSize: 17),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text('Contact',
                  style: TextStyle(color: Colors.black, fontSize: 19)),
              Container(
                  // height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: CupertinoColors.systemGrey5,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5),
                        Contact(
                            contactType: 'Email',
                            contactTypeIcon: Icons.email,
                            contactTypeInfo: 'elisstudiogh@gmail.com'),
                        Contact(
                            contactType: 'Mobile:',
                            contactTypeIcon: Icons.phone,
                            contactTypeInfo: '+233 500 111 372')
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class Contact extends StatelessWidget {
  final IconData contactTypeIcon;
  final String contactType;
  final String contactTypeInfo;
  const Contact({
    Key? key,
    required this.contactTypeIcon,
    required this.contactType,
    required this.contactTypeInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            contactTypeIcon,
            color: kprimary,
          ),
          SizedBox(width: 15),
          Text(contactType + '    ',
              style: TextStyle(color: Colors.black54, fontSize: 17)),
          Text(contactTypeInfo,
              style: TextStyle(color: kprimary, fontSize: 17)),
        ],
      ),
    );
  }
}
