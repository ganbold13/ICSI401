import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    callDelay(context);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
        child: Text(
          "Сайн уу?",
          style: Theme.of(context)
              .textTheme
              .displayLarge!
              .copyWith(color: Theme.of(context).colorScheme.background),
        ),
      ),
    );
  }

  Future callDelay(BuildContext context) async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    Navigator.pushNamed(context, "/onboarding");
  }
}
