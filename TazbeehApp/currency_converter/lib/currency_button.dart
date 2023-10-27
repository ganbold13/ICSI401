import 'package:currency_converter/converter.dart';
import 'package:flutter/material.dart';

class CurrencyButton extends StatelessWidget {
  final String name;
  final String image;
  final String currency;

  const CurrencyButton(
      {super.key,
      required this.name,
      required this.image,
      required this.currency});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: const BoxDecoration(
            border: Border(top: BorderSide(color: Colors.black, width: 1))),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(image),
                        ),
                      ),
                      width: 50,
                      height: 30,
                    ),
                    Text(name),
                  ],
                ),
                Text(currency),
              ],
            ),
            SizedBox(
              height: 30,
              child: InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          CurrencyConverterApp(fromCurrency: currency)))),
            )
          ],
        ));
  }
}
