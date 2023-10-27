import 'package:flutter/material.dart';

class Header_Space extends StatelessWidget {
  const Header_Space({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
    );
  }
}
