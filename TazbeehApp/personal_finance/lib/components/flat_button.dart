import 'package:flutter/material.dart';

class FlatButton extends StatelessWidget {
  final String text;
  final String path;
  FlatButton({super.key, required this.text, required this.path});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print(path);
        Navigator.pushNamed(context, path);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35), // Change the border radius
        ),
      ),
      child: Container(
        alignment: Alignment.center,
        width: 345,
        height: 75,
        child: Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
