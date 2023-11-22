import 'package:flutter/material.dart';
import 'package:personal_finance/components/icon_button.dart';

class WalletHeader extends StatelessWidget {
  final double totalBalance;
  const WalletHeader({super.key, required this.totalBalance});

  @override
  Widget build(BuildContext context) {
    double buttonSize = 65;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 80),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Нийт үлдэгдэл",
            style: Theme.of(context).textTheme.labelSmall,
          ),
          const SizedBox(height: 10),
          Text(
            '\$ $totalBalance',
            style: Theme.of(context)
                .textTheme
                .displaySmall!
                .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButtonWithLabel(
                size: buttonSize,
                buttonIcon: Icons.add,
                path: '/connectwallet',
                labelText: "Нэмэх",
              ),
              IconButtonWithLabel(
                size: buttonSize,
                path: '/billdetails',
                buttonIcon: Icons.payment,
                labelText: "Төлөх",
              ),
              IconButtonWithLabel(
                size: buttonSize,
                path: '',
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
