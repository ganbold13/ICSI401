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
      body: Container(
        child: Stack(
          children: [
            HeaderBanner(bannerText: "Welcome to Register"),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
              child: ListView(
                children: [
                  Header_Space(),
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
                  FlatButton(text: "Бүртгүүлэх", path: '/login'),
                  SizedBox(
                    height: space,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Хэрэглэгчийн эрхтэй юу?",
                        style: Theme.of(context).textTheme.displaySmall,
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
      ),
    );
  }
}
