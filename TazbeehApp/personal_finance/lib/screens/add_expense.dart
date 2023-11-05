import 'package:flutter/material.dart';
import 'package:personal_finance/components/header_bg.dart';
import 'package:personal_finance/components/input_field.dart';
import 'package:personal_finance/components/navbar.dart';
import 'package:personal_finance/components/popup.dart';

class AddExpenseScreen extends StatelessWidget {
  const AddExpenseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Stack(
        children: [
          const HeaderBackground(),
          Popup(
            title: "Зарлага нэмэх",
            padding: 20,
            child: Container(
              height: 400,
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomInputField(
                    text: "Гүйлгээний нэр",
                    width: double.infinity,
                  ),
                  CustomInputField(
                    text: "Үнийн дүн",
                    width: double.infinity,
                  ),
                  CustomInputField(
                    text: "Огноо",
                    width: double.infinity,
                  ),
                  CustomInputField(
                    text: "Гүйлгээний нэр",
                    width: double.infinity,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavBar(middleSpace: false),
    );
  }
}
