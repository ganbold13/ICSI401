import 'package:flutter/material.dart';
import 'package:personal_finance/components/header_bg.dart';
import 'package:personal_finance/components/home/transaction_history_item.dart';
import 'package:personal_finance/components/popup.dart';
import 'package:personal_finance/components/transaction_pending.dart';
import 'package:personal_finance/components/wallet_header.dart';

class BillPaymentScreen extends StatelessWidget {
  const BillPaymentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Stack(
        children: [
          const HeaderBackground(),
          Popup(
            title: "Төлбөрийн мэдээлэл",
            padding: 20,
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
                          padding: const EdgeInsets.all(4.0),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(24)),
                          child: TabBar(
                            indicator: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            tabs: const [
                              Tab(
                                icon: Text(
                                  'Гүйлгээнүүд',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              Tab(
                                  icon: Text(
                                'Хүлээгдэж буй гүйлгээнүүд',
                                style: TextStyle(color: Colors.black),
                              )),
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
        ],
      ),
    );
  }
}
