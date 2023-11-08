import 'package:flutter/material.dart';
import 'package:personal_finance/components/bill_logo.dart';

class BillDetailsHeader extends StatelessWidget {
  final String image;
  final String title;
  final String date;
  const BillDetailsHeader(
      {super.key,
      required this.image,
      required this.title,
      required this.date});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BillLogo(image: image),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Text(
              date,
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        )
      ],
    );
  }
}
