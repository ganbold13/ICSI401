import 'package:flutter/material.dart';

class CurrencyConverterApp extends StatelessWidget {
  final String fromCurrency;

  const CurrencyConverterApp({super.key, required this.fromCurrency});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CurrencyConverter(
        fromCurrency: fromCurrency,
      ),
    );
  }
}

class CurrencyConverter extends StatefulWidget {
  final String fromCurrency;

  const CurrencyConverter({super.key, required this.fromCurrency});

  @override
  _CurrencyConverterState createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
  final Map<String, double> exchangeRates = {
    'USD': 3442.0,
    'EUR': 3599.0,
    'GBP': 4141.0,
    'RUB': 33.06,
    'CNY': 468.5,
    'KRW': 2.42,
    'CAD': 2463.0,
    'AUD': 2137.0,
    'JPY': 22.66,
    'HKD': 438.0,
    'SGD': 2484.0,
    'CHF': 3772.0,
    'SEK': 293.0,
    'TRY': 117.0,
  };

  late String fromCurrency = 'USD';
  double amount = 1.0;
  double convertedAmount = 0;

  void convertCurrency() {
    if (exchangeRates.containsKey(fromCurrency)) {
      double? fromRate = exchangeRates[fromCurrency];
      setState(() {
        convertedAmount = (amount * fromRate!);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fromCurrency = widget.fromCurrency;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 166,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/$fromCurrency.png'),
              ),
            ),
          ),
          DropdownButton<String>(
            value: fromCurrency,
            items: exchangeRates.keys.map((String currency) {
              return DropdownMenuItem<String>(
                value: currency,
                child: Text(
                  currency,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.bold),
                ),
              );
            }).toList(),
            onChanged: (String? value) {
              setState(() {
                fromCurrency = value!;
                convertCurrency();
              });
            },
          ),
          SizedBox(
            width: 190,
            child: TextField(
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              keyboardType: TextInputType.number,
              onChanged: (text) {
                setState(() {
                  amount = double.tryParse(text) ?? 1.0;
                });
              },
            ),
          ),
          const SizedBox(height: 100),
          ElevatedButton(
            onPressed: convertCurrency,
            child: Container(
              alignment: Alignment.center,
              width: 155,
              height: 60,
              child: const Text(
                "Хөрвүүлэх",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(height: 100),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(bottom: 10),
            width: 190,
            decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black))),
            child: Text(
              convertedAmount.toString(),
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            "MNT",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: 200,
            height: 100,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/MNG.png'),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
