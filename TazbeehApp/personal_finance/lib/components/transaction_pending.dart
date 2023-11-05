import 'package:flutter/material.dart';
import 'package:personal_finance/components/transaction_pending_item.dart';

class TransactionPending extends StatelessWidget {
  const TransactionPending({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: const Column(
        children: [
          Column(
            children: <Widget>[
              PendingItem(
                  image: "assets/images/youtube_icon.png",
                  name: "Youtube",
                  date: "Jan 16, 2022",
                  amount: 15),
              PendingItem(
                  image: "assets/images/youtube_icon.png",
                  name: "Youtube",
                  date: "Jan 16, 2022",
                  amount: -15),
              PendingItem(
                  image: "assets/images/youtube_icon.png",
                  name: "Youtube",
                  date: "Jan 16, 2022",
                  amount: 105),
              PendingItem(
                  image: "assets/images/youtube_icon.png",
                  name: "Youtube",
                  date: "Jan 16, 2022",
                  amount: 105)
            ],
          )
        ],
      ),
    );
  }
}
