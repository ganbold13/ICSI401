import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      height: 45,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Image.asset("assets/images/home_icon.png"),
            onPressed: () {
              //home page ru orno
              Navigator.pushNamed(context, '/home');
            },
          ),
          IconButton(
            icon: Image.asset("assets/images/statistics_icon.png"),
            onPressed: () {
              //statis
            },
          ),
          FloatingActionButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/addexpenses');
            },
            backgroundColor: const Color(0xff2F7E79),
            child: const Icon(Icons.add),
          ),
          IconButton(
            icon: Image.asset("assets/images/account_icon.png"),
            onPressed: () {
              //account
              Navigator.of(context).pushNamed('/wallet');
            },
          ),
          IconButton(
            icon: Image.asset("assets/images/personal_icon.png"),
            onPressed: () {
              //s
            },
          ),
        ],
      ),
    );
  }
}
