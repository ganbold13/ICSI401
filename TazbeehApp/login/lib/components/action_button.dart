import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final buttonText;
  const ActionButton({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          // Implement login logic here
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(20.0), // Change the border radius
          ),
        ),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          alignment: Alignment.center,
          width: double.infinity,
          height: 50,
          child: Text(
            buttonText,
            style: const TextStyle(fontSize: 18),
          ),
        ));
  }
}
