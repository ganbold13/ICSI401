import 'package:flutter/material.dart';

class HistoryItem extends StatelessWidget {
  final String image;
  final String name;
  final String date;
  final double amount;
  const HistoryItem(
      {super.key,
      required this.image,
      required this.name,
      required this.date,
      required this.amount});

  String calculateText() {
    if (amount > 0) {
      return "+ \$ $amount";
    } else {
      return "+ \$ ${-amount}";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Image(
                      image: AssetImage(image),
                      width: 60,
                      height: 60,
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      date,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
        Text(
          calculateText(),
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: amount > 0
                  ? const Color(0xff25A969)
                  : const Color(0xffF95B51)),
        ),
      ],
    );
  }
}
