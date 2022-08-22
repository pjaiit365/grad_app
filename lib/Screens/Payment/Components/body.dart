import 'package:flutter/material.dart';
import 'package:grad_app/Components/default_app_bar.dart';
import 'package:grad_app/Components/default_back_button.dart';
import 'package:grad_app/Components/rounded_button.dart';
import 'package:grad_app/Screens/Payment/Components/header_text.dart';
import 'package:grad_app/Screens/Payment/success_screen.dart';
import 'package:grad_app/constants.dart';

class Body extends StatelessWidget {
  int value = 1;
  final paymentLabel = [
    'Mobile Money / Vodafone Cash',
    'Paypal',
    'Cash on Pick-Up',
    'Credit / Debit Card',
  ];
  final paymentIcon = [
    Icons.money,
    Icons.payment,
    Icons.attach_money_outlined,
    Icons.credit_card,
  ];
  Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: 'Payment',
        leading: DefaultBackButton(backButtonColor: Colors.black),
      ),
      body: Column(
        children: [
          HeaderLabel(headerText: 'Choose your mode of payment'),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Radio(
                      activeColor: kprimary,
                      value: index,
                      groupValue: value = 1,
                      onChanged: (i) => setState(() => value = 1),
                    ),
                    title: Text(
                      paymentLabel[index],
                      style: TextStyle(color: kDarkColor),
                    ),
                    trailing: Icon(
                      paymentIcon[index],
                      color: kprimary,
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemCount: paymentLabel.length),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: RoundedButton(
                text: 'PAY',
                press: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SuccessScreen()));
                }),
          ),
        ],
      ),
    );
  }

  setState(int Function() param0) {}
}
