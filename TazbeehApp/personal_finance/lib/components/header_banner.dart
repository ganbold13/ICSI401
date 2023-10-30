import 'package:flutter/material.dart';

class HeaderBanner extends StatelessWidget {
  final String bannerText;
  const HeaderBanner({super.key, required this.bannerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity + 300,
      height: MediaQuery.of(context).size.height * 0.3,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius:
              const BorderRadius.vertical(bottom: Radius.elliptical(300, 50))),
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 100),
        child: Text(
          bannerText,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
