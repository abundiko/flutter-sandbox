import 'package:flutter/material.dart';

class AirtelQuickActionButton extends StatelessWidget {
  const AirtelQuickActionButton({
    super.key,
    required this.text,
    required this.icon,
  });

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: ((screenWidth - 32 - 40) / 4).floorToDouble(),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.black, size: 30),
          Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 11,
              color: Colors.black.withAlpha(200),
            ),
          ),
        ],
      ),
    );
  }
}
