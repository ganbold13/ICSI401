import 'package:flutter/material.dart';

class Popup extends StatelessWidget {
  final double padding;
  final Widget child;
  const Popup({super.key, required this.padding, required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: padding),
          height: MediaQuery.of(context).size.height * 0.8,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
          child: child,
          alignment: Alignment.topCenter,
        ),
      ],
    );
  }
}
