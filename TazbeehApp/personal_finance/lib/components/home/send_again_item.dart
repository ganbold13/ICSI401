import 'package:flutter/material.dart';

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
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("assets/images/person_icon.png"),
        ),
      ),
    );
  }
}
