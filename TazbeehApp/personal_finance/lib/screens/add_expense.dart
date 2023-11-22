import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:personal_finance/components/flat_button.dart';
import 'package:personal_finance/components/header_bg.dart';
import 'package:personal_finance/components/input_field.dart';
import 'package:personal_finance/components/navbar.dart';
import 'package:personal_finance/components/popup.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddExpenseScreen extends StatefulWidget {
  const AddExpenseScreen({super.key});

  @override
  State<AddExpenseScreen> createState() => _AddExpenseScreen();
}

class _AddExpenseScreen extends State<AddExpenseScreen> {
  String selectedOption = 'Netflix';
  double? billAmount;
  String? billDate;
  String billType = 'expense';

  final db = FirebaseFirestore.instance;

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
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "ГҮЙЛГЭЭНИЙ НЭР",
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                        ),

                        child: InputDecorator(
                          decoration: InputDecoration(
                            hoverColor: Theme.of(context).colorScheme.primary,
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                            ),
                            labelText: '',
                            labelStyle: Theme.of(context).textTheme.labelSmall,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: selectedOption,
                              items: const [
                                DropdownMenuItem<String>(
                                  value: 'Netflix',
                                  child: Row(
                                    children: [
                                      Image(
                                        image: AssetImage(
                                            "assets/images/Netflix.png"),
                                        width: 60,
                                        height: 60,
                                      ),
                                      SizedBox(width: 10),
                                      Text('Netflix'),
                                    ],
                                  ),
                                ),
                                DropdownMenuItem<String>(
                                  value: 'Youtube',
                                  child: Row(
                                    children: [
                                      Image(
                                        image: AssetImage(
                                            "assets/images/Youtube.png"),
                                        width: 60,
                                        height: 60,
                                      ),
                                      SizedBox(width: 10),
                                      Text('Youtube'),
                                    ],
                                  ),
                                ),
                                DropdownMenuItem<String>(
                                  value: 'Upwork',
                                  child: Row(
                                    children: [
                                      Image(
                                        image: AssetImage(
                                            "assets/images/Upwork.png"),
                                        width: 60,
                                        height: 60,
                                      ),
                                      SizedBox(width: 10),
                                      Text('Upwork'),
                                    ],
                                  ),
                                ),
                                DropdownMenuItem<String>(
                                  value: 'Paypal',
                                  child: Row(
                                    children: [
                                      Image(
                                        image: AssetImage(
                                            "assets/images/Paypal.png"),
                                        width: 60,
                                        height: 60,
                                      ),
                                      SizedBox(width: 10),
                                      Text('Paypal'),
                                    ],
                                  ),
                                ),
                                // Add more DropdownMenuItem as needed
                              ],
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedOption = newValue!;
                                });
                              },
                            ),
                          ),
                        ),
                        // Add more DropdownMenuItem as needed
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
                        onChanged: (value) {
                          setState(() {
                            billAmount = double.parse(value);
                          });
                        },
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
                        onChanged: (value) {
                          setState(() {
                            billDate = value;
                          });
                        },
                      ),
                      const SizedBox(height: 30),
                      Text(
                        "ТӨЛБӨР",
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.white,
                        ),
                        child: InputDecorator(
                          decoration: InputDecoration(
                            hoverColor: Theme.of(context).colorScheme.primary,
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                            ),
                            labelText: '',
                            labelStyle: Theme.of(context).textTheme.labelSmall,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: billType,
                              items: const [
                                DropdownMenuItem<String>(
                                  value: 'expense',
                                  child: Text('Төлбөр'),
                                ),
                                DropdownMenuItem<String>(
                                  value: 'income',
                                  child: Text('Орлого'),
                                ),
                              ],
                              onChanged: (String? newValue) {
                                setState(() {
                                  billType = newValue!;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  FlatButton(
                      text: "Нэмэх",
                      path: "",
                      isPrimary: false,
                      onPress: () async {
                        await db.collection("Bills").add({
                          "billId": (selectedOption +
                              billAmount.toString() +
                              billDate.toString() +
                              billType),
                          "billName": selectedOption,
                          "billAmount": billAmount,
                          "billDate": billDate,
                          "billType": billType
                        });
                        Fluttertoast.showToast(
                            msg: "Амжилттай",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor:
                                const Color.fromARGB(255, 54, 244, 111),
                            textColor: Colors.white,
                            fontSize: 20.0,
                            webPosition: "center");
                      })
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
