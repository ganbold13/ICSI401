import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:personal_finance/components/home/transaction_history_item.dart';

class HomeTransactionHistory extends StatelessWidget {
  final QuerySnapshot<Map<String, dynamic>> history;
  HomeTransactionHistory({super.key, required this.history});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Гүйлгээний түүх",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Бүгдийг харах",
                    style: Theme.of(context).textTheme.bodySmall,
                  ))
            ],
          ),
          SizedBox(height: 20),
          if (history.docs.length > 0)
            HistoryItem(
              image: "assets/images/${history.docs[0]["name"]}.png",
              name: history.docs[0]["name"],
              date: history.docs[0]["date"],
              amount: history.docs[0]["type"] == "income"
                  ? history.docs[0]["amount"]
                  : -history.docs[0]["amount"],
            ),
          if (history.docs.length > 1)
            HistoryItem(
              image: "assets/images/${history.docs[1]["name"]}.png",
              name: history.docs[1]["name"],
              date: history.docs[1]["date"],
              amount: history.docs[1]["type"] == "income"
                  ? history.docs[1]["amount"]
                  : -history.docs[1]["amount"],
            ),
          if (history.docs.length > 2)
            HistoryItem(
              image: "assets/images/${history.docs[2]["name"]}.png",
              name: history.docs[2]["name"],
              date: history.docs[2]["date"],
              amount: history.docs[2]["type"] == "income"
                  ? history.docs[2]["amount"]
                  : -history.docs[2]["amount"],
            ),
          if (history.docs.length > 3)
            HistoryItem(
              image: "assets/images/${history.docs[3]["name"]}.png",
              name: history.docs[3]["name"],
              date: history.docs[3]["date"],
              amount: history.docs[3]["type"] == "income"
                  ? history.docs[3]["amount"]
                  : -history.docs[3]["amount"],
            ),
        ],
      ),
    );
  }
}
