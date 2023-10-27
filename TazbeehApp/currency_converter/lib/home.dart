import 'package:currency_converter/currency_button.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class CurrencyData {
  String name = "";
  String image = "";
  String currency = '';

  CurrencyData({required String n, required String i, required String c}) {
    name = n;
    image = i;
    currency = c;
  }
}

var data = [
  CurrencyData(n: "Евро", i: "assets/EUR.png", c: "EUR"),
  CurrencyData(n: "Английн фунт", i: "assets/GBP.png", c: "GBP"),
  CurrencyData(n: "Оросын рубль", i: "assets/RUB.png", c: "RUB"),
  CurrencyData(n: "Хятадын юань", i: "assets/CNY.png", c: "CNY"),
  CurrencyData(n: "Японы иен", i: "assets/JPY.png", c: "JPY"),
  CurrencyData(n: "БНСУ-н вон", i: "assets/KRW.png", c: "KRW"),
  CurrencyData(n: "Австрали доллар", i: "assets/AUD.png", c: "AUD"),
  CurrencyData(n: "Швейцарь франк", i: "assets/CHF.png", c: "CHF"),
  CurrencyData(n: "Канад доллар", i: "assets/CAD.png", c: "CAD"),
  CurrencyData(n: "Сингапур доллар", i: "assets/SGD.png", c: "SGD"),
  CurrencyData(n: "Швед крон", i: "assets/SEK.png", c: "SEK"),
  CurrencyData(n: "Туркийн лир", i: "assets/TRY.png", c: "TRY"),
  CurrencyData(n: "Гонгонк доллар", i: "assets/HKD.png", c: "HKD"),
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: const Text(
                "Монгол банкны валютын ханш",
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xff0027B0),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return CurrencyButton(
                      name: data[index].name,
                      image: data[index].image,
                      currency: data[index].currency,
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
