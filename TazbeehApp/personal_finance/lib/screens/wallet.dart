import 'package:flutter/material.dart';
import 'package:personal_finance/components/navbar.dart';
import 'package:personal_finance/components/popup.dart';
import 'package:personal_finance/components/wallet_header.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        bottomNavigationBar: NavBar(),
        body: Stack(
          children: [
            Popup(
              padding: 0,
              child: WalletHeader(),
            ),
          ],
        ));
  }
}
