import 'package:flutter/material.dart';
import 'package:personal_finance/components/popup_header.dart';

class Popup extends StatelessWidget {
  final double padding;
  final String title;
  final Widget child;
  const Popup(
      {super.key,
      required this.padding,
      required this.child,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PopupHeaderDetails(title: title),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: padding, vertical: 0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.8,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
            alignment: Alignment.topCenter,
            child: child,
          ),
        )
      ],
    );
  }
}
