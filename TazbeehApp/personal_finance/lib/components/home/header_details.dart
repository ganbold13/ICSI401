import 'package:flutter/material.dart';

class HeaderDetails extends StatelessWidget {
  const HeaderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Өглөөний мэнд!",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "Ганболд",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          ImageIcon(
            AssetImage("assets/images/headerBell.png"),
            size: 35,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
