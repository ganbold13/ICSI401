import 'package:flutter/material.dart';
import 'package:personal_finance/components/icon_button.dart';

class WalletHeader extends StatelessWidget {
  const WalletHeader({super.key});

  @override
  Widget build(BuildContext context) {
    double buttonSize = 65;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 80),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Нийт үлдэгдэл",
            style: Theme.of(context).textTheme.labelMedium,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '2548.00',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButtonWithLabel(
                size: buttonSize,
                OnPressed: () {},
                buttonIcon: Icons.add,
                labelText: "Нэмэх",
              ),
              IconButtonWithLabel(
                size: buttonSize,
                OnPressed: () {},
                buttonIcon: Icons.payment,
                labelText: "Төлөх",
              ),
              IconButtonWithLabel(
                size: buttonSize,
                OnPressed: () {},
                buttonIcon: Icons.message,
                labelText: "Илгээх",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
