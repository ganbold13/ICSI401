import 'package:flutter/material.dart';
import 'package:personal_finance/components/home/transaction_history_item.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: const Column(
        children: [
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Гүйлгээний түүх",
                style: TextStyle(
                  color: Color(0xff222222),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Бүгдийг харах",
                style: TextStyle(
                    color: Color(0xff666666),
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          SizedBox(height: 20),
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
          )
        ],
      ),
    );
  }
}
