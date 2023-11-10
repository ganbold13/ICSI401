import 'package:flutter/material.dart';
import 'package:personal_finance/components/flat_button.dart';
import 'package:personal_finance/components/header_banner.dart';
import 'package:personal_finance/components/header_space.dart';
import 'package:personal_finance/components/input_field.dart';
import 'package:personal_finance/components/text_button.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  double space = 30;

  String? _name;
  String? _email;
  String? _password;

  final _auth = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState();
    initializeFirebase();
  }

  Future<void> initializeFirebase() async {
    await Firebase.initializeApp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      body: Stack(
        children: [
          const HeaderBanner(
              bannerText: "Орлого зарлагаа хянахад тань тусална"),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
            child: ListView(
              children: [
                const HeaderSpace(),
                SizedBox(height: space),
                CustomInputField(
                  text: "Бүтэн нэрээ оруулна уу",
                  onChanged: (value) {
                    setState(() {
                      _name = value;
                    });
                  },
                ),
                SizedBox(height: space),
                CustomInputField(
                  text: "Цахим шуудангаа оруулна уу",
                  onChanged: (value) {
                    setState(() {
                      _email = value;
                    });
                  },
                ),
                SizedBox(height: space),
                CustomInputField(
                  text: "Нууц үгээ оруулна уу",
                  onChanged: (value) {
                    setState(() {
                      _password = value;
                    });
                  },
                ),
                SizedBox(height: space),
                CustomInputField(
                  text: "Нууц үгээ дахин оруулна уу",
                  onChanged: (value) {
                    setState(() {
                      _password = value;
                    });
                  },
                ),
                SizedBox(height: space * 2),
                FlatButton(
                  text: "Бүртгүүлэх",
                  path: '/login',
                  isPrimary: true,
                  onPress: () async {
                    print("pressed");
                    try {
                      final _newuser =
                          await _auth.createUserWithEmailAndPassword(
                              email: _email!, password: _password!);
                      Navigator.pushNamed(context, '/login');
                    } catch (e) {
                      print(e);
                    }
                  },
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
                        text: "Нэвтрэх", path: '/login', onPressed: () {})
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
