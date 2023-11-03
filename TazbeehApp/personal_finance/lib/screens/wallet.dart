import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:personal_finance/components/navbar.dart';
import 'package:personal_finance/components/popup.dart';
import 'package:personal_finance/components/wallet_header.dart';
import 'package:personal_finance/data/transaction.dart';
import 'package:personal_finance/screens/home.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallet',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const ScPaymentPage(title: 'Wallet'),
    );
  }
}

class ScPaymentPage extends StatefulWidget {
  const ScPaymentPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ScPaymentPage> createState() => _ScPaymentPageState();
}

class _ScPaymentPageState extends State<ScPaymentPage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  late int _currentIndex;
  late List<Widget> _children;
  late List<Transaction> transactions = [];

  // late Future<List<Transaction>> futureTransactions;
  late int _selectedIndex = 2;

  @override
  void initState() {
    _currentIndex = 0;
    _children = [const HomeScreen(), const WalletScreen()];

    _tabController = TabController(length: 2, vsync: this);
    fetchTransaction();
    super.initState();
    // setState(() {
    //   transactions = fetchTransaction() as List<Transaction>;
    // });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void fetchTransaction() async {
    // final response = await http
    //     .get(Uri.parse('https://api.jsonbin.io/b/628f9857402a5b38020ec5c4/1'));

    // if (response.statusCode == 200) {
    //   // If the server did return a 200 OK response,
    //   // then parse the JSON.
    //   setState(() {
    //     transactions = (jsonDecode(response.body) as List)
    //         .map((data) => Transaction.fromJson(data))
    //         .toList();
    //   });
    // } else {
    //   // If the server did not return a 200 OK response,
    //   // then throw an exception.
    //   throw Exception('Failed to load transaction');
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        body: Popup(
            padding: 0,
            child: Column(
              children: [
                WalletHeader(),
                Container(
                  height: 45,
                  padding: const EdgeInsets.all(2.0),
                  margin: const EdgeInsets.only(
                      left: 20.0, right: 20.0, top: 0, bottom: 0),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: TabBar(
                    controller: _tabController,
                    padding: const EdgeInsets.all(2.0),
                    indicator: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    tabs: const [
                      Tab(
                          icon: Text(
                        'Гүйлгээнүүд',
                        style: TextStyle(color: Colors.black),
                      )),
                      Tab(
                          icon: Text(
                        'Хүлээгдэж буй гүйлгээнүүд',
                        style: TextStyle(color: Colors.black),
                      )),
                    ],
                  ),
                ),
              ],
            )),
        persistentFooterButtons: <Widget>[
          NavBar(),
        ]);
  }
}
