import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_model.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:grad_app/Components/default_back_button.dart';
import 'package:grad_app/Screens/Payment/success_screen.dart';
import 'package:grad_app/constants.dart';

class CrediCard extends StatefulWidget {
  const CrediCard({Key? key}) : super(key: key);

  @override
  State<CrediCard> createState() => _CrediCardState();
}

class _CrediCardState extends State<CrediCard> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: DefaultBackButton(backButtonColor: Colors.black),
        elevation: 0.1,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Text(
          'Card Details',
          style: TextStyle(color: kprimary),
        ),
      ),
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            CreditCardWidget(
              cardNumber: cardNumber,
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              showBackView: isCvvFocused,
              obscureCardNumber: true,
              obscureCardCvv: true,
              onCreditCardWidgetChange: (CreditCardBrand) {},
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  CreditCardForm(
                    cardNumber: cardNumber,
                    expiryDate: expiryDate,
                    cardHolderName: cardHolderName,
                    cvvCode: cvvCode,
                    onCreditCardModelChange: onCreditCardModelChange,
                    themeColor: Colors.blue,
                    formKey: formKey,
                    cardNumberDecoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Card Number',
                      hintText: 'XXXX XXXX XXXX XXXX',
                    ),
                    expiryDateDecoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Expiry Date',
                      hintText: 'XX/XX',
                    ),
                    cvvCodeDecoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'CVV',
                      hintText: 'XXX',
                    ),
                    cardHolderDecoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Card Holder Name',
                      hintText: '',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 100),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          primary: Color(0xff1b447b)),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          print('Valid Card Payment !');
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SuccessScreen(),
                              ));
                        } else {
                          print('Invalid Card Payment !');
                        }
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 120),
                        margin: EdgeInsets.all(8),
                        child: Text(
                          'Validate',
                          style: TextStyle(
                            color: kWhiteColor,
                            fontFamily: 'halter',
                            fontSize: 17,
                            package: 'flutter_credit_card',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  void onCreditCardModelChange(CreditCardModel creditCardModel) {
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
      cardHolderName = creditCardModel.cardHolderName;
    });
  }
}
