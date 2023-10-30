import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      destinations: [
        Icon(Icons.home),
        Icon(Icons.graphic_eq),
        Icon(Icons.wallet),
        Icon(Icons.person)
      ],
      backgroundColor: Colors.white,
    );
  }
}
