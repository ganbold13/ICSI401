import 'package:flutter/material.dart';

class IconButtonWithLabel extends StatelessWidget {
  final size;
  final Function OnPressed;
  final IconData buttonIcon;
  final String labelText;
  const IconButtonWithLabel(
      {super.key,
      required this.size,
      required this.OnPressed,
      required this.buttonIcon,
      required this.labelText});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).colorScheme.primary),
              color: Colors.white,
              borderRadius: BorderRadius.circular(size / 2)),
          child: Icon(
            buttonIcon,
            size: size / 2,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          labelText,
          style: Theme.of(context).textTheme.bodySmall,
        )
      ],
    );
  }
}
