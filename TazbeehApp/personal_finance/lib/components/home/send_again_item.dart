import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SendAgainItem extends StatelessWidget {
  double size = 75;
  SendAgainItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(size),
        image: const DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/person_icon.png"),
        ),
      ),
    );
  }
}
