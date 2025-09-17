import 'package:flutter/material.dart';

class AirtelTopBarDetailCard extends StatelessWidget {
  const AirtelTopBarDetailCard({
    super.key,
    required this.title,
    required this.primaryTitle,
    required this.description,
  });

  final String title, primaryTitle, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 4),
        Text(
          primaryTitle,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.red,
          ),
        ),
        SizedBox(height: 3),
        Text(
          description,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 11,
            color: Colors.black.withAlpha(100),
          ),
        ),
      ],
    );
  }
}
