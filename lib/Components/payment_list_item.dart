import 'package:flutter/material.dart';
import 'package:grad_app/constants.dart';

class PaymentListItem extends StatelessWidget {
  final String paymentMode;
  final String paymentItem;
  final String price;
  const PaymentListItem({
    Key? key,
    required this.paymentMode,
    required this.paymentItem,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //TODO:display alert dialog box that show summary of payment item
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Payment Item: ' + paymentItem,
                style: TextStyle(color: Colors.black),
              ),
              Text(
                'Mode of payment: ' + paymentMode,
                style: TextStyle(color: Colors.black38),
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text(
              '\$' + price,
              style: TextStyle(fontSize: 17, color: kprimary),
            ),
          ),
        ],
      ),
    );
  }
}
