import 'package:flutter/material.dart';
import 'package:personal_finance/screens/bill_details.dart';

class PendingItem extends StatelessWidget {
  final String image;
  final String id;
  final String? name;
  final String? date;
  final double? amount;
  final String type;
  const PendingItem({
    super.key,
    required this.image,
    required this.name,
    required this.date,
    required this.amount,
    required this.id,
    required this.type,
  });

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
                      name ?? "Name",
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      date ?? "Date",
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
        TextButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => BillDetailsScreen(
                        id: id,
                        name: name!,
                        date: date!,
                        amount: amount!,
                        type: type,
                      )));
            },
            child: const Text("Төлөх"))
      ],
    );
  }
}
