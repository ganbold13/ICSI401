import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:personal_finance/components/navbar.dart';
import 'package:personal_finance/data/transaction.dart';
import 'package:personal_finance/screens/home.dart';
import 'package:personal_finance/screens/wallet.dart';

class BillDetailsScreen extends StatelessWidget {
  const BillDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bill',
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
    //     transactions = (jsonDecode(response.body) as List).map((data) => Transaction.fromJson(data)).toList();
    //   });
    // } else {
    //   // If the server did not return a 200 OK response,
    //   // then throw an exception.
    //   throw Exception('Failed to load transaction');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.teal,
        body: Container(
            margin: const EdgeInsets.only(top: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 76,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomeScreen(),
                              ),
                            );
                          }),
                      const Text(
                        "Wallet",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.white),
                      ),
                      IconButton(
                          icon: const Icon(
                            Icons.notifications_outlined,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            debugPrint('Clicked notification!');
                          })
                    ],
                  ),
                ),
                Container(
                    height: MediaQuery.of(context).size.height - 156,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20)),
                    ),
                    // color: Colors.white70,
                    child: Column(children: <Widget>[
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Total Balance',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        '\$2,456.00',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Card(
                              elevation: 0,
                              child: InkWell(
                                  // splashColor: Colors.green.withAlpha(30),
                                  splashColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () {
                                    debugPrint('Add card tapped.');
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const WalletScreen(),
                                      ),
                                    );
                                  },
                                  child: SizedBox(
                                    width: 100,
                                    height: 90,
                                    child: Column(children: <Widget>[
                                      Container(
                                        width: 60,
                                        height: 60,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.teal, width: 1),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(30))),
                                        child: const Image(
                                            image: AssetImage(
                                                'assets/images/plus.png')),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text('Add',
                                          style: TextStyle(fontSize: 14)),
                                    ]),
                                  ))),
                          Card(
                              elevation: 0,
                              child: InkWell(
                                  splashColor: Colors.green.withAlpha(30),
                                  onTap: () {
                                    debugPrint('Pay card tapped.');
                                  },
                                  child: SizedBox(
                                    width: 100,
                                    height: 90,
                                    child: Column(children: <Widget>[
                                      Container(
                                        width: 60,
                                        height: 60,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.teal, width: 1),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(30))),
                                        child: const Image(
                                            image: AssetImage(
                                                'assets/images/qr_code.png')),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text('Pay',
                                          style: TextStyle(fontSize: 14)),
                                    ]),
                                  ))),
                          Card(
                              elevation: 0,
                              child: InkWell(
                                  splashColor: Colors.green.withAlpha(30),
                                  onTap: () {
                                    debugPrint('Send card tapped.');
                                  },
                                  child: SizedBox(
                                    width: 100,
                                    height: 90,
                                    child: Column(children: <Widget>[
                                      Container(
                                        width: 60,
                                        height: 60,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.teal, width: 1),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(30))),
                                        child: const Image(
                                            image: AssetImage(
                                                'assets/images/send.png')),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text('Send',
                                          style: TextStyle(fontSize: 14)),
                                    ]),
                                  ))),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
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
                              'Transactions',
                              style: TextStyle(color: Colors.black),
                            )),
                            Tab(
                                icon: Text(
                              'Incoming Bills',
                              style: TextStyle(color: Colors.black),
                            )),
                          ],
                        ),
                      ),
                      // ignore: unnecessary_null_comparison
                      transactions.isNotEmpty
                          ? Expanded(
                              child: TabBarView(
                                controller: _tabController,
                                children: [
                                  ListView.builder(
                                      itemCount: transactions.length - 3,
                                      itemBuilder: (context, index) {
                                        return Card(
                                          elevation: 0,
                                          key: UniqueKey(),
                                          margin: const EdgeInsets.only(
                                              left: 20,
                                              right: 20,
                                              top: 0,
                                              bottom: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              SizedBox(
                                                  width: 160,
                                                  child: Row(
                                                    children: [
                                                      Image(
                                                          image: AssetImage(
                                                              'assets/images/' +
                                                                  transactions[
                                                                          index]
                                                                      .img
                                                                      .toString() +
                                                                  '.png')),
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            transactions[index]
                                                                .name,
                                                            style: const TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 16,
                                                                color: Colors
                                                                    .black),
                                                          ),
                                                          Text(
                                                            transactions[index]
                                                                .date,
                                                            style:
                                                                const TextStyle(
                                                                    fontSize:
                                                                        13,
                                                                    color: Colors
                                                                        .grey),
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  )),
                                              Text(
                                                transactions[index].status == 1
                                                    ? '+\$' +
                                                        transactions[index]
                                                            .mount
                                                            .toString()
                                                    : '-\$' +
                                                        transactions[index]
                                                            .mount
                                                            .toString(),
                                                style: TextStyle(
                                                    color: transactions[index]
                                                                .status ==
                                                            1
                                                        ? Colors.greenAccent
                                                        : Colors.redAccent,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        );
                                      }),
                                  ListView.builder(
                                      itemCount: transactions.length,
                                      itemBuilder: (context, index) {
                                        return index > 2
                                            ? Card(
                                                elevation: 0,
                                                key: UniqueKey(),
                                                margin: const EdgeInsets.only(
                                                    left: 20,
                                                    right: 20,
                                                    top: 0,
                                                    bottom: 10),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    SizedBox(
                                                        width: 160,
                                                        child: Row(
                                                          children: [
                                                            Image(
                                                                image: AssetImage('/assets/images/' +
                                                                    transactions[
                                                                            index]
                                                                        .img
                                                                        .toString() +
                                                                    '.png')),
                                                            const SizedBox(
                                                              width: 10,
                                                            ),
                                                            Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  transactions[
                                                                          index]
                                                                      .name,
                                                                  style: const TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          16,
                                                                      color: Colors
                                                                          .black),
                                                                ),
                                                                Text(
                                                                  transactions[
                                                                          index]
                                                                      .date,
                                                                  style: const TextStyle(
                                                                      fontSize:
                                                                          13,
                                                                      color: Colors
                                                                          .grey),
                                                                )
                                                              ],
                                                            ),
                                                          ],
                                                        )),
                                                    OutlinedButton(
                                                      onPressed: () {},
                                                      child: const Text(
                                                        'Pay',
                                                        style: TextStyle(
                                                            color: Colors.teal),
                                                      ),
                                                      style: OutlinedButton
                                                          .styleFrom(
                                                        shape:
                                                            const StadiumBorder(),
                                                        backgroundColor:
                                                            Colors.tealAccent,
                                                        side: const BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )
                                            : Container();
                                      }),
                                ],
                              ),
                            )
                          : Container(),
                    ])),
              ],
            )),
        persistentFooterButtons: <Widget>[NavBar()]);
  }
}
