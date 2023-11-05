import 'package:flutter/material.dart';

class HeaderSpace extends StatelessWidget {
  const HeaderSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
    );
  }
}
