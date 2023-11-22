import 'package:flutter/material.dart';

class HeaderDetails extends StatelessWidget {
  final String name;

  const HeaderDetails({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Өглөөний мэнд!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ],
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
