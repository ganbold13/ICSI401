import 'package:flutter/material.dart';
import 'package:personal_finance/components/bill_amounts.dart';
import 'package:personal_finance/components/bill_details_header.dart';
import 'package:personal_finance/components/checkbox_button.dart';
import 'package:personal_finance/components/flat_button.dart';
import 'package:personal_finance/components/header_bg.dart';
import 'package:personal_finance/components/navbar.dart';
import 'package:personal_finance/components/popup.dart';

class BillDetailsScreen extends StatelessWidget {
  const BillDetailsScreen({Key? key}) : super(key: key);

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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BillDetailsHeader(
                        image: "assets/images/youtube_icon.png",
                        title: "Youtube Premium",
                        date: "2014 Feb 07",
                      ),
                      const SizedBox(height: 30),
                      BillAmounts(price: 11.99, tax: 1.99),
                      const SizedBox(height: 30),
                      Text(
                        "Төлбөрийн хэрэсгслээ сонго",
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      const SizedBox(height: 20),
                      CheckBoxButton(
                        iconData: Icons.credit_card,
                        title: "Дебит Кард",
                        details: "",
                      ),
                      const SizedBox(height: 20),
                      CheckBoxButton(
                        iconData: Icons.paypal,
                        title: "Paypal",
                        details: "",
                      ),
                    ],
                  ),
                  FlatButton(
                      text: "Төлөх", path: "/billpayment", isPrimary: true)
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
