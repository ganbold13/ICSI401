import 'package:flutter/material.dart';
import 'package:personal_finance/components/bill_amounts.dart';
import 'package:personal_finance/components/flat_button.dart';
import 'package:personal_finance/components/header_bg.dart';
import 'package:personal_finance/components/navbar.dart';
import 'package:personal_finance/components/popup.dart';

class BillPaymentDoneScreen extends StatelessWidget {
  const BillPaymentDoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const HeaderBackground(),
          Popup(
            title: "Төлбөр төлөх",
            padding: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Амжилттай төлөгдлөө",
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .displaySmall!
                            .copyWith(
                                color: Theme.of(context).colorScheme.primary),
                      ),
                      Text(
                        "Youtube premium",
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                      Icon(
                        Icons.check_circle,
                        size: 50,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Гүйлгээний дэлгэрэнгүй",
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          Text(
                            "^",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Төлбөрийн хэрэгсэл",
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          Text(
                            "Дебит кард",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Төлөв",
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          Text(
                            "Хийгдсэн",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Цаг",
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          Text(
                            "8:15 AM",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Огноо",
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          Text(
                            "Feb 08, 2023",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Гүйлгээний дугаар",
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          Text(
                            "243447839432",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Container(
                        height: 1,
                        color: Colors.black,
                      ),
                      SizedBox(height: 20),
                      BillAmounts(price: 11.99, tax: 1.99),
                    ],
                  ),
                  FlatButton(
                    text: "Баталгаажуулах",
                    path: "/billpayment",
                    isPrimary: true,
                    onPress: () {},
                  )
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
