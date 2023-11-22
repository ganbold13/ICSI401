import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:personal_finance/components/bill_amounts.dart';
import 'package:personal_finance/components/bill_details_header.dart';
import 'package:personal_finance/components/checkbox_button.dart';
import 'package:personal_finance/components/flat_button.dart';
import 'package:personal_finance/components/header_bg.dart';
import 'package:personal_finance/components/navbar.dart';
import 'package:personal_finance/components/popup.dart';

class BillDetailsScreen extends StatelessWidget {
  final String id;
  final String name;
  final String date;
  final double amount;
  final String type;
  BillDetailsScreen(
      {Key? key,
      required this.name,
      required this.date,
      required this.amount,
      required this.id,
      required this.type})
      : super(key: key);

  final FirebaseFirestore db = FirebaseFirestore.instance;

  Future<dynamic> fetchUserData() async {
    QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await db.collection("Bills").get();

    return querySnapshot.docs;
  }

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
                        title: name,
                        date: date,
                      ),
                      const SizedBox(height: 30),
                      BillAmounts(price: amount, tax: amount * 0.1),
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
                    text: "Төлөх",
                    path: "/billpayment",
                    isPrimary: true,
                    onPress: () async {
                      await db.collection("History").add({
                        "id": id,
                        "name": name,
                        "date": date,
                        "amount": amount,
                        "type": type
                      });
                      await db.collection("Bills").get().then((value) {
                        for (DocumentSnapshot doc in value.docs) {
                          if (doc['billId'] == id) {
                            doc.reference.delete();
                          }
                        }
                      });

                      Fluttertoast.showToast(
                          msg: "Төлбөр амжилттай",
                          toastLength: Toast.LENGTH_LONG,
                          gravity: ToastGravity.BOTTOM,
                          timeInSecForIosWeb: 1,
                          backgroundColor:
                              const Color.fromARGB(255, 54, 244, 111),
                          textColor: Colors.white,
                          fontSize: 20.0,
                          webPosition: "center");
                      Navigator.pushNamed(context, "/wallet");
                    },
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
