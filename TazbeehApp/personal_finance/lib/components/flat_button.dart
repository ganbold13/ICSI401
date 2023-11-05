import 'package:flutter/material.dart';

class FlatButton extends StatelessWidget {
  final String text;
  final String path;
  final bool isPrimary;
  const FlatButton(
      {super.key,
      required this.text,
      required this.path,
      required this.isPrimary});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, path),
      child: Container(
        alignment: Alignment.center,
        // width: 345,
        height: 75,
        decoration: BoxDecoration(
          color:
              isPrimary ? Theme.of(context).colorScheme.primary : Colors.white,
          borderRadius: BorderRadius.circular(40),
          border: Border.all(width: 2, color: Theme.of(context).primaryColor),
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: isPrimary
                    ? Colors.white
                    : Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
