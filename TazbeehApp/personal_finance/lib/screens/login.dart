import 'package:flutter/material.dart';
import 'package:personal_finance/components/flat_button.dart';
import 'package:personal_finance/components/header_banner.dart';
import 'package:personal_finance/components/header_space.dart';
import 'package:personal_finance/components/input_field.dart';
import 'package:personal_finance/components/text_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  double space = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      body: Stack(
        children: [
          const HeaderBanner(
            bannerText: "Тавтай морилно уу!",
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
            child: ListView(
              children: [
                const HeaderSpace(),
                Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/login.png'),
                    ),
                  ),
                ),
                SizedBox(height: space),
                CustomInputField(
                  text: "Цахим шуудангаа оруулна уу",
                ),
                SizedBox(height: space),
                CustomInputField(
                  text: "Нууц үгээ оруулна уу",
                ),
                SizedBox(height: space * 2),
                const FlatButton(
                  text: "Нэвтрэх",
                  path: '/home',
                  isPrimary: true,
                ),
                SizedBox(
                  height: space,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Хэрэглэгчийн эрхгүй юу?",
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    CustomTextButton(
                      text: "Бүртгүүлэх",
                      path: '/register',
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
