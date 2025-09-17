import 'package:flutter/material.dart';

class AirtelAdCard extends StatelessWidget {
  const AirtelAdCard({
    super.key,
    required this.imageUrl,
    required this.redirectUrl,
  });

  final String imageUrl, redirectUrl;

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 120,
      width: deviceWidth - 16 * 4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
