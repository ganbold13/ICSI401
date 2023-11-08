import 'package:flutter/material.dart';

class BillAmounts extends StatelessWidget {
  final double price;
  final double tax;
  const BillAmounts({super.key, required this.price, required this.tax});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Үнэ",
              style: Theme.of(context).textTheme.labelMedium,
            ),
            Text(
              "\$ $price",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Хураамж",
              style: Theme.of(context).textTheme.labelMedium,
            ),
            Text(
              "\$ $tax",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        const SizedBox(height: 15),
        Container(
          height: 1,
          color: Colors.black,
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Нийт",
              style: Theme.of(context).textTheme.labelMedium,
            ),
            Text(
              "\$ ${price + tax}",
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
