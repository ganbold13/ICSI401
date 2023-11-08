import 'package:flutter/material.dart';
import 'package:personal_finance/components/bill_amounts.dart';
import 'package:personal_finance/components/bill_details_header.dart';
import 'package:personal_finance/components/bill_logo.dart';
import 'package:personal_finance/components/flat_button.dart';
import 'package:personal_finance/components/header_bg.dart';
import 'package:personal_finance/components/navbar.dart';
import 'package:personal_finance/components/popup.dart';

class BillPaymentScreen extends StatelessWidget {
  const BillPaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const HeaderBackground(),
          Popup(
            title: "Төлбөрийн мэдээлэл",
            padding: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BillLogo(image: "assets/images/youtube_icon.png"),
                      SizedBox(height: 30),
                      Text(
                        "You will pay Youtube Premium for one month with BCA OneKlik.",
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 50),
                      BillAmounts(price: 11.99, tax: 1.99),
                    ],
                  ),
                  FlatButton(
                      text: "Баталгаажуулах",
                      path: "/billdone",
                      isPrimary: true)
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavBar(middleSpace: false),
    );
  }
}
