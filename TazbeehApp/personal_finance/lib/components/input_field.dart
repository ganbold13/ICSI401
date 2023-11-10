import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomInputField extends StatelessWidget {
  final String text;
  final ValueChanged<String> onChanged;
  double? width;
  double? radius;
  CustomInputField(
      {super.key,
      required this.text,
      this.radius,
      this.width,
      required this.onChanged});

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
        onChanged: onChanged,
        decoration: InputDecoration(
          hoverColor: Theme.of(context).colorScheme.primary,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(radius ?? 16),
            ),
          ),
          labelText: text,
          labelStyle: Theme.of(context).textTheme.labelSmall,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        ),
      ),
    );
  }
}
