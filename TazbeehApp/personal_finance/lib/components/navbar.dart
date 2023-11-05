import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NavBar extends StatelessWidget {
  NavBar({super.key, required this.middleSpace});
  final bool middleSpace;
  double iconSize = 30;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 5,
            blurRadius: 10,
            offset: const Offset(0, -3)),
      ]),
      child: NavigationBar(
        backgroundColor: Colors.white,
        destinations: <Widget>[
          IconButton(
            icon: Icon(
              Icons.home_outlined,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            iconSize: iconSize,
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.insert_chart_outlined,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            iconSize: iconSize,
            onPressed: () {
              //statis
            },
          ),
          if (middleSpace) const SizedBox(),
          IconButton(
            icon: Icon(
              Icons.account_balance_wallet_outlined,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            iconSize: iconSize,
            onPressed: () {
              //account
              Navigator.pushNamed(context, '/wallet');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.person_outline,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            iconSize: iconSize,
            onPressed: () {
              //s
            },
          ),
        ],
      ),
    );
  }
}
