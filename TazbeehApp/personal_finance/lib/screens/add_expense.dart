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
              // height: 400,
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ГҮЙЛГЭЭНИЙ НЭР",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  const SizedBox(height: 10),
                  CustomInputField(
                    text: "",
                    width: double.infinity,
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "ҮНИЙН ДҮН",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  const SizedBox(height: 10),
                  CustomInputField(
                    text: "",
                    width: double.infinity,
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "ОГНОО",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  const SizedBox(height: 10),
                  CustomInputField(
                    text: "",
                    width: double.infinity,
                    onChanged: (value) {},
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "ТӨЛБӨР",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  const SizedBox(height: 10),
                  CustomInputField(
                    text: "",
                    width: double.infinity,
                    onChanged: (value) {},
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
