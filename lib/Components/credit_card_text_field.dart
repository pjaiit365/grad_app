import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grad_app/Components/credit_card_text_container.dart';
import 'package:grad_app/constants.dart';

class CreditCardTextField extends StatelessWidget {
  final String labelText;
  const CreditCardTextField({
    Key? key,
    required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CreditCardTextContainer(
      widthSize: 0.9,
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: SizedBox(
                height: 60,
                width: size.width * 0.85,
                child: TextField(
                  maxLength: 12,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: InputDecoration(
                    prefixIcon: (SvgPicture.asset(
                      'assets/icons/paypal.png',
                      width: 10,
                    )),
                    counterText: '',
                    focusColor: Colors.black,
                    labelText: labelText,
                    labelStyle: TextStyle(color: kprimary),
                    suffixIcon: Icon(Icons.credit_card, color: Colors.black),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
