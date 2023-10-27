import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  String? path;
  CustomTextButton(
      {super.key, required this.text, required this.onPressed, this.path});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          onPressed();
          Navigator.pushNamed(context, path!);
        },
        child: Text(
          text,
          style: Theme.of(context).textTheme.displaySmall!.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold),
        ));
  }
}