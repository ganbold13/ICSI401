import 'package:flutter/material.dart';

class PopupHeaderDetails extends StatelessWidget {
  final String title;
  const PopupHeaderDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: Colors.white),
          ),
          const ImageIcon(
            AssetImage("assets/images/headerBell.png"),
            size: 35,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
