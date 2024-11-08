import 'package:flutter/material.dart';
import 'package:personal_finance/components/flat_button.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.7,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/onboarding.png'),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(60),
              child: Column(
                children: [
                  Text(
                    'Ухаалаг Зарцуулж Илүү Хэмнэе',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(color: Theme.of(context).colorScheme.primary),
                  ),
                  const SizedBox(height: 30),
                  FlatButton(
                    text: "Эхлэх",
                    path: '/register',
                    isPrimary: true,
                    onPress: () {
                      Navigator.pushNamed(context, '/register');
                    },
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
