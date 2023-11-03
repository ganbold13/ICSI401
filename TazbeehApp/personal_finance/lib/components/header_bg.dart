import 'package:flutter/material.dart';

class HeaderBackground extends StatelessWidget {
  const HeaderBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      height: 287,
      child: Image(
        image: AssetImage("assets/images/home_page_top.png"),
        fit: BoxFit.fill,
      ),
    );
  }
}
