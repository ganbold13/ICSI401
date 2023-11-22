import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:personal_finance/components/navbar.dart';
import 'package:personal_finance/components/popup.dart';
import 'package:personal_finance/components/transaction_history.dart';
import 'package:personal_finance/components/transaction_pending.dart';
import 'package:personal_finance/components/wallet_header.dart';

class WalletScreen extends StatelessWidget {
  WalletScreen({Key? key}) : super(key: key);

  final FirebaseFirestore db = FirebaseFirestore.instance;

  double expense = 0, income = 0;

  Future<dynamic> fetchUserData() async {
    QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await db.collection("Bills").get();

    QuerySnapshot<Map<String, dynamic>> historySnapshot =
        await db.collection("History").get();

    for (QueryDocumentSnapshot<Map<String, dynamic>> bill
        in historySnapshot.docs) {
      if (bill['type'] == 'expense') {
        expense += bill["amount"]! as double;
      }
      if (bill['type'] == 'income') {
        income += bill["amount"]! as double;
      }
    }

    return querySnapshot.docs;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchUserData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
            return Scaffold(
              backgroundColor: Theme.of(context).colorScheme.primary,
              body: Popup(
                title: "Түрийвч",
                padding: 0,
                child: Column(
                  children: [
                    WalletHeader(totalBalance: income - expense),
                    const SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      height: 390,
                      child: DefaultTabController(
                        initialIndex: 0,
                        length: 2,
                        child: Column(
                          children: [
                            Container(
                              // padding: const EdgeInsets.all(6.0),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: TabBar(
                                indicatorPadding: const EdgeInsets.all(4),
                                indicator: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                tabs: [
                                  Tab(
                                    icon: Container(
                                      alignment: Alignment.center,
                                      width: double.infinity,
                                      child: Text(
                                        'Гүйлгээнүүд',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge,
                                      ),
                                    ),
                                  ),
                                  Tab(
                                    icon: Container(
                                      alignment: Alignment.center,
                                      width: double.infinity,
                                      child: Text(
                                        'Хүлээгдэж буй гүйлгээ',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            Expanded(
                              child: TabBarView(
                                children: [
                                  TransactionHistory(),
                                  TransactionPending(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              bottomNavigationBar: NavBar(
                middleSpace: false,
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
    );
  }
}
