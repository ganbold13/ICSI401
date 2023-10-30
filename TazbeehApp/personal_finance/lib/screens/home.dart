import 'package:flutter/material.dart';
import 'package:personal_finance/components/popup.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Popup(
      padding: 0,
      child: Text(""),
    );
  }
}
