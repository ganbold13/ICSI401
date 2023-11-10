import 'package:flutter/material.dart';
import 'package:personal_finance/components/checkbox_button.dart';
import 'package:personal_finance/components/debit_card.dart';
import 'package:personal_finance/components/flat_button.dart';
import 'package:personal_finance/components/header_bg.dart';
import 'package:personal_finance/components/input_field.dart';
import 'package:personal_finance/components/navbar.dart';
import 'package:personal_finance/components/popup.dart';

class ConnectWalletScreen extends StatelessWidget {
  const ConnectWalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Stack(
        children: [
          const HeaderBackground(),
          Popup(
            title: "Түрийвч цэнэглэх",
            padding: 0,
            child: Column(
              children: [
                const SizedBox(height: 40),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  height: 720,
                  child: DefaultTabController(
                    initialIndex: 0,
                    length: 2,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey.shade100,
                              borderRadius: BorderRadius.circular(24)),
                          child: TabBar(
                            indicatorPadding: const EdgeInsets.all(4),
                            indicator: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            tabs: const [
                              Tab(
                                icon: SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    'Картууд',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                              Tab(
                                icon: SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    'Аккаунт',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 30),
                        Expanded(
                          child: TabBarView(
                            children: [
                              Column(
                                children: [
                                  const DebitCard(),
                                  const SizedBox(height: 15),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Картний мэдээлэл нэмэх",
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleSmall,
                                      ),
                                      Text(
                                        "Энд холбох карт нь зөвхөн таны нэр дээр байх ёстой",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelSmall,
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 15),
                                  SizedBox(
                                    height: 200,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        CustomInputField(
                                          text: "Карт дээрх нэр",
                                          width: double.infinity,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            CustomInputField(
                                              text: "Картын дугаар",
                                              width: 245,
                                            ),
                                            CustomInputField(
                                              text: "CVC",
                                              width: 170,
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            CustomInputField(
                                              text: "Дуусах хугацаа",
                                              width: 245,
                                            ),
                                            CustomInputField(
                                              text: "ZIP",
                                              width: 170,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  // const SizedBox(height: 15),
                                  // const FlatButton(
                                  //   text: "Дараах",
                                  //   path: "",
                                  //   isPrimary: false,
                                  // )
                                ],
                              ),
                              ListView(
                                children: const [
                                  CheckBoxButton(
                                    iconData: Icons.account_balance,
                                    title: "Bank Link",
                                    details:
                                        "Connect your bank account to deposit & fund",
                                  ),
                                  SizedBox(height: 15),
                                  CheckBoxButton(
                                    iconData: Icons.currency_exchange,
                                    title: "Microdeposits",
                                    details: "Connect bank in 5-7 days",
                                  ),
                                  SizedBox(height: 15),
                                  CheckBoxButton(
                                    iconData: Icons.paypal,
                                    title: "Paypal",
                                    details: "Connect your paypal account",
                                  ),
                                  // SizedBox(height: 100),
                                  // FlatButton(
                                  //   text: "Дараах",
                                  //   path: "",
                                  //   isPrimary: false,
                                  // )
                                ],
                              ),
                            ],
                          ),
                        ),
                        FlatButton(
                          text: "Дараах",
                          path: "",
                          isPrimary: false,
                          onPress: () {},
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavBar(middleSpace: false),
    );
  }
}
