import 'package:flutter/material.dart';
import 'package:personal_finance/components/home/send_again_item.dart';

class SendAgain extends StatelessWidget {
  const SendAgain({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
      child: Column(children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Дахин илгээх",
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
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SendAgainItem(),
            SendAgainItem(),
            SendAgainItem(),
            SendAgainItem(),
            SendAgainItem(),
          ],
        )
      ]),
    );
  }
}
