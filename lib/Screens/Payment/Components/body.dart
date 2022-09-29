// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:grad_app/Components/default_app_bar.dart';
import 'package:grad_app/Components/default_back_button.dart';
import 'package:grad_app/Components/reset_password_button.dart';
import 'package:grad_app/Components/rounded_button.dart';
import 'package:grad_app/Screens/CardPayment/credit_card.dart';
import 'package:grad_app/Screens/Payment/CashPayment.dart';
import 'package:grad_app/Screens/Payment/Components/header_text.dart';
import 'package:grad_app/Screens/Payment/SubScreen/PaymentList/payment_list.dart';
import 'package:grad_app/Screens/Payment/success_screen.dart';
import 'package:grad_app/constants.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int value = 0;

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

  final payableOptions = [
    'Photoshoot Ticket',
    'Apparel Collection (Gown, Hat, etc.)',
    'Apparel Customization',
    'Academic Stoles (Sashes,etc.)'
  ];

  String dropdownvalue = 'Photoshoot Ticket';

  final priceValue = ['215.00', '75.00', '100.00', '30.00'];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: DefaultAppBar(
        title: 'Payment',
        leading: DefaultBackButton(backButtonColor: Colors.black),
        action: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PaymentList(),
                    ));
              },
              icon: Icon(Icons.list))
        ],
      ),
      body: Column(
        children: [
          //choosing what you're paying for
          HeaderLabel(headerText: 'What are you paying for'),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 20, bottom: 15),
            child: DropdownButton(
              elevation: 2,
              isExpanded: true,
              dropdownColor: Colors.grey[100],
              value: dropdownvalue,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: payableOptions.map((String payableOptions) {
                return DropdownMenuItem(
                  value: payableOptions,
                  child: Text(payableOptions),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ),
          //choosing mode of payment
          HeaderLabel(headerText: 'Choose your mode of payment'),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Radio(
                      activeColor: kprimary,
                      value: index,
                      groupValue: value,
                      onChanged: (i) => setState(() => value = index),
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
            padding: EdgeInsets.only(bottom: 95, left: 30),
            child: Row(
              children: <Widget>[
                Text(
                  'Price:  ',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                SizedBox(width: 15),
                Text(
                  '\$' + priceValue[value],
                  style: TextStyle(color: kprimary, fontSize: 19),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: TextButton(
              onPressed: () {
                //TODO: add details from payment form to payment list

                FirebaseFirestore.instance.collection('Payment List').add({
                  'Payment Item': dropdownvalue,
                  'Mode of Payment': paymentLabel[value],
                  //TODO: add price field to firestore database
                });

                switch (value) {
                  case 0:
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SuccessScreen(),
                      ),
                    );
                    break;
                  case 1:
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SuccessScreen(),
                      ),
                    );
                    break;
                  case 2:
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CashPayment(),
                      ),
                    );
                    break;
                  case 3:
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CrediCard(),
                      ),
                    );
                }
              },
              child: Text(
                'Pay',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              style: TextButton.styleFrom(
                backgroundColor: kprimary,
                elevation: 1.0,
                padding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.42, vertical: 17),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide.none),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
