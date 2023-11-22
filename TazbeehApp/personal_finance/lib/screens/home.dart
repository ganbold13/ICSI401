import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:personal_finance/components/header_bg.dart';
import 'package:personal_finance/components/home/balance_card.dart';
import 'package:personal_finance/components/home/header_details.dart';
import 'package:personal_finance/components/home/home_transaction_history.dart';
import 'package:personal_finance/components/home/send_again.dart';
import 'package:personal_finance/components/navbar.dart';
import 'package:personal_finance/data/balanceModel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final email = FirebaseAuth.instance.currentUser!.email.toString();
  final FirebaseFirestore db = FirebaseFirestore.instance;

  var data;

  double income = 0;
  double expense = 0;

  Future<String> fetchUserData() async {
    QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await db.collection('Users').get();

    QuerySnapshot<Map<String, dynamic>> history =
        await db.collection('History').get();

    data = history;

    for (QueryDocumentSnapshot<Map<String, dynamic>> bill in history.docs) {
      if (bill['type'] == 'expense') {
        expense += bill["amount"]! as double;
      }
      if (bill['type'] == 'income') {
        income += bill["amount"]! as double;
      }
    }

    for (QueryDocumentSnapshot<Map<String, dynamic>> document
        in querySnapshot.docs) {
      if (document['email'] as String == email) {
        return document['username'] as String;
      }
    }

    return ''; // Return a default value if no data is found
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: fetchUserData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              return Center(
                child: ListView(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        HeaderBackground(),
                        HeaderDetails(name: snapshot.data as String ?? ""),
                        BalanceCard(
                          balanceModel: BalanceModel(
                              email: "", expense: expense, income: income),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    HomeTransactionHistory(history: data),
                    SendAgain(),
                  ],
                ),
              );
            } else if (snapshot.hasError) {
              return Center(child: Text(snapshot.error.toString()));
            } else {
              return Center(child: Text("Something went wrong"));
            }
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      floatingActionButton: InkWell(
        onTap: () => Navigator.pushNamed(context, '/addexpenses'),
        child: Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(40),
          ),
          child: const Icon(
            Icons.add,
            size: 40,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: NavBar(
        middleSpace: true,
      ),
    );
  }
}
