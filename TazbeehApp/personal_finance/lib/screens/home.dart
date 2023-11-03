import 'package:flutter/material.dart';
import 'package:personal_finance/components/header_bg.dart';
import 'package:personal_finance/components/home/balance_card.dart';
import 'package:personal_finance/components/home/header_details.dart';
import 'package:personal_finance/components/home/send_again.dart';
import 'package:personal_finance/components/home/transaction_history.dart';
import 'package:personal_finance/components/navbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: const Center(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  HeaderBackground(),
                  HeaderDetails(),
                  BalanceCard(),
                ],
              ),
              TransactionHistory(),
              SendAgain(),
            ],
          ),
        ),
        persistentFooterButtons: <Widget>[
          NavBar()
        ]);
  }
}
