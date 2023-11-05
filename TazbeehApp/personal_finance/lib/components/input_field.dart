import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomInputField extends StatelessWidget {
  final String text;
  double? width;
  double? radius;
  Widget? pre;
  Widget? suf;
  CustomInputField(
      {super.key,
      required this.text,
      this.pre,
      this.suf,
      this.radius,
      this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: width ?? 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius ?? 16),
        color: Colors.white,
      ),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(radius ?? 16))),
          labelText: text,
          labelStyle: Theme.of(context).textTheme.labelSmall,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          prefix: pre,
          suffix: suf,
        ),
      ),
    );
  }
}
