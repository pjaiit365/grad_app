import 'package:flutter/material.dart';
import 'package:grad_app/Components/default_back_button.dart';
import 'package:grad_app/constants.dart';

import '../../../../Components/payment_list_item.dart';

class PaymentList extends StatefulWidget {
  const PaymentList({Key? key}) : super(key: key);

  @override
  State<PaymentList> createState() => _PaymentListState();
}

class _PaymentListState extends State<PaymentList> {
  List payList = ['Apparel Collection', 'Cash', '30.00'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: DefaultBackButton(backButtonColor: Colors.black),
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text('List of Payments', style: TextStyle(color: kprimary)),
        centerTitle: true,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            if (payList.length == 0) {
              return Center(
                child: Text('There have been no payments.'),
              );
            } else {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18.0, vertical: 15),
                child: PaymentListItem(
                  paymentItem: payList[index][0],
                  paymentMode: payList[index][1],
                  price: payList[index][2],
                ),
              );
            }
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: payList.length),
    );
  }
}
