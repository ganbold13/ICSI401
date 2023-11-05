import 'package:flutter/material.dart';
import 'package:personal_finance/components/flat_button.dart';
import 'package:personal_finance/components/header_banner.dart';
import 'package:personal_finance/components/header_space.dart';
import 'package:personal_finance/components/input_field.dart';
import 'package:personal_finance/components/text_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  double space = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      body: Stack(
        children: [
          const HeaderBanner(bannerText: "Орлого зарлагаа хянахад тань тусална"),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
            child: ListView(
              children: [
                const HeaderSpace(),
                SizedBox(height: space),
                CustomInputField(
                  text: "Бүтэн нэрээ оруулна уу",
                ),
                SizedBox(height: space),
                CustomInputField(
                  text: "Цахим шуудангаа оруулна уу",
                ),
                SizedBox(height: space),
                CustomInputField(
                  text: "Нууц үгээ оруулна уу",
                ),
                SizedBox(height: space),
                CustomInputField(
                  text: "Нууц үгээ дахин оруулна уу",
                ),
                SizedBox(height: space * 2),
                const FlatButton(
                  text: "Бүртгүүлэх",
                  path: '/login',
                  isPrimary: true,
                ),
                SizedBox(
                  height: space,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Хэрэглэгчийн эрхтэй юу?",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    CustomTextButton(
                      text: "Нэвтрэх",
                      path: '/login',
                      onPressed: () {},
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
