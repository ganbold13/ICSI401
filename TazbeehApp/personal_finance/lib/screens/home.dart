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
