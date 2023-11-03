import 'package:flutter/material.dart';
import 'package:personal_finance/components/navbar.dart';
import 'package:personal_finance/screens/wallet.dart';

class AddExpenseScreen extends StatefulWidget {
  const AddExpenseScreen({Key? key}) : super(key: key);

  @override
  State<AddExpenseScreen> createState() => _AddExpense();
}

class _AddExpense extends State<AddExpenseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        appBar: AppBar(
          title: const Text("Add Expense"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  SizedBox(
                    height: 76,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              debugPrint('Clicked back!');
                            }),
                        const Text(
                          "Wallet",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.white),
                        ),
                        IconButton(
                            icon: const Icon(
                              Icons.notifications_outlined,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              debugPrint('Clicked notification!');
                            })
                      ],
                    ),
                  ),
                  Container(
                    width: 400,
                    height: 260,
                    child: const Image(
                      image: AssetImage("assets/images/home_page_top.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 400,
                    color: Colors.white,
                    margin: EdgeInsets.only(left: 48),
                    child: Column(children: <Widget>[]),
                  )
                ],
              ),
            ],
          ),
        ),
        persistentFooterButtons: <Widget>[
          NavBar(),
        ]);
  }
}
