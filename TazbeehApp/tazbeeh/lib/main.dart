import 'package:flutter/material.dart';

void main() {
  runApp(const TasbeehApp());
}

class TasbeehApp extends StatelessWidget {
  const TasbeehApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tasbeeh App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TasbeehCounter(),
    );
  }
}

class TasbeehCounter extends StatefulWidget {
  const TasbeehCounter({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TasbeehCounterState createState() => _TasbeehCounterState();
}

class _TasbeehCounterState extends State<TasbeehCounter> {
  int count = 0;

  void incrementCount() {
    setState(() {
      count++;
    });
  }

  void resetCount() {
    setState(() {
      count = 0;
    });
  }

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 216, 175, 255),
        appBar: AppBar(
          title: const Text('Tasbeeh Counter'),
          backgroundColor: Color.fromARGB(255, 214, 64, 252),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/tazbeeh.png'),
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '$count',
                  style:
                      const TextStyle(fontSize: 48, fontFamily: 'Technology'),
                  textAlign: TextAlign.end,
                ),
                CircularButton(
                  size: 20.0,
                  margin: EdgeInsets.only(left: 95, top: 15),
                  OnPressed: resetCount,
                ),
                const SizedBox(height: 10),
                CircularButton(
                  size: 80.0,
                  OnPressed: incrementCount,
                ),
              ],
            ),
          ),
        ));
  }
}

class CircularButton extends StatelessWidget {
  final size;
  final margin;
  final Function OnPressed;
  const CircularButton(
      {super.key, this.size, this.margin, required this.OnPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      margin: margin,
      child: Material(
        shape: CircleBorder(),
        color: Colors.white,
        child: InkWell(
          onTap: () {
            OnPressed();
          },
          borderRadius: BorderRadius.circular(
              size / 2), // Half the width/height makes it a circle
        ),
      ),
    );
  }
}
