import 'package:flutter/material.dart';
import 'package:personal_finance/components/home/transaction_history_item.dart';
import 'package:personal_finance/components/navbar.dart';
import 'package:personal_finance/components/popup.dart';
import 'package:personal_finance/components/transaction_pending.dart';
import 'package:personal_finance/components/wallet_header.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Popup(
        title: "Түрийвч",
        padding: 0,
        child: Column(
          children: [
            const WalletHeader(),
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
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),
                          ),
                          Tab(
                            icon: Container(
                              alignment: Alignment.center,
                              width: double.infinity,
                              child: Text(
                                'Хүлээгдэж буй гүйлгээ',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Expanded(
                      child: TabBarView(
                        children: [
                          Column(
                            children: <Widget>[
                              HistoryItem(
                                  image: "assets/images/youtube_icon.png",
                                  name: "Youtube",
                                  date: "Jan 16, 2022",
                                  amount: 15),
                              HistoryItem(
                                  image: "assets/images/youtube_icon.png",
                                  name: "Youtube",
                                  date: "Jan 16, 2022",
                                  amount: -15),
                              HistoryItem(
                                  image: "assets/images/youtube_icon.png",
                                  name: "Youtube",
                                  date: "Jan 16, 2022",
                                  amount: 105),
                              HistoryItem(
                                  image: "assets/images/youtube_icon.png",
                                  name: "Youtube",
                                  date: "Jan 16, 2022",
                                  amount: 105)
                            ],
                          ),
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
  }
}
