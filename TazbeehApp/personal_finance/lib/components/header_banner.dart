import 'package:flutter/material.dart';
import 'package:personal_finance/components/header_bg.dart';

class HeaderBanner extends StatelessWidget {
  final String bannerText;
  const HeaderBanner({super.key, required this.bannerText});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.3,
        alignment: Alignment.center,
        child: Stack(
          children: [
            const HeaderBackground(),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Text(
                bannerText,
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.white),
              ),
            ),
          ],
        ));
  }
}
