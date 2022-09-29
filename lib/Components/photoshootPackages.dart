import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhotoShootPackages extends StatelessWidget {
  final Color packageColor;
  final String packageType;
  final String packageBackgroundImage;
  final String retouchNumber;
  final String rawNumber;
  final String packagePrice;
  final String isSnackGiven;
  const PhotoShootPackages({
    Key? key,
    required this.packageColor,
    required this.packageType,
    required this.retouchNumber,
    required this.rawNumber,
    required this.isSnackGiven,
    required this.packagePrice,
    required this.packageBackgroundImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: 200,
      width: size.width * 0.7,
      decoration: BoxDecoration(
        color: packageColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
              color: CupertinoColors.systemGrey4,
              blurRadius: 5,
              offset: Offset(2, 5))
        ],
        image: DecorationImage(
            image: AssetImage(packageBackgroundImage),
            fit: BoxFit.fill,
            opacity: 0.6),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              packageColor.withOpacity(0.75),
              packageColor.withOpacity(0.75),
            ],
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                packageType,
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  retouchNumber +
                      ' Retouched Pictures, \n' +
                      rawNumber +
                      ' Raw Pictures',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Row(
                children: [
                  Text(
                    'Price: ' + '\$' + packagePrice,
                    style: TextStyle(color: Colors.white, fontSize: 23),
                  ),
                  SizedBox(width: 23),
                  Text(
                    isSnackGiven,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
