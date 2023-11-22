import 'package:flutter/material.dart';
import 'package:personal_finance/data/balanceModel.dart';

class BalanceCard extends StatelessWidget {
  final BalanceModel balanceModel;

  const BalanceCard({super.key, required this.balanceModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 120, 20, 0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Theme.of(context).colorScheme.primary,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Нийт үлдэгдэл",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        ImageIcon(
                          AssetImage("assets/images/Icon.png"),
                          size: 30,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Text(
                      "...",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Text(
                  "\$ ${balanceModel.income - balanceModel.expense}",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        ImageIcon(
                          AssetImage("assets/images/down_arrow.png"),
                          size: 24,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),
                        Text("Орлого",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "\$ ${balanceModel.income}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        ImageIcon(
                          AssetImage("assets/images/up_arrow.png"),
                          size: 24,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5),
                        Text("Зарлага",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500)),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "\$ ${balanceModel.expense}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
