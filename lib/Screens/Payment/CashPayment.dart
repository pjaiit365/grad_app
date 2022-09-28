import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grad_app/Components/default_back_button.dart';
import 'package:grad_app/constants.dart';

class CashPayment extends StatelessWidget {
  const CashPayment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: DefaultBackButton(backButtonColor: Colors.black),
        elevation: 0.0,
        title: Text(
          'Cash Payment',
          style: TextStyle(color: kprimary),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 90),
          SvgPicture.asset(
            'assets/icons/cashSvg.svg',
            height: 180,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0, bottom: 10),
            child: Center(
                child: Text(
              'You have chosen to pay with physical cash.\n'
              'Please bring cash for payment on arrival.\n'
              'Thank you!',
              style: TextStyle(color: Colors.black87, fontSize: 17),
            )),
          ),
          SizedBox(height: 20),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'OK',
              style: TextStyle(color: Colors.white),
            ),
            style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 160, vertical: 15),
                backgroundColor: kprimary,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
          )
        ],
      ),
    );
  }
}
