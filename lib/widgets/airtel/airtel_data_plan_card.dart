import 'package:flutter/material.dart';

class AirtelDataPlanCard extends StatelessWidget {
  const AirtelDataPlanCard({
    super.key,
    required this.title,
    required this.validity,
    required this.price,
  });

  final String title, validity;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.deepPurple,
            ),
            child: Icon(Icons.bookmark, color: Colors.white, size: 18),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black.withAlpha(200),
                  ),
                ),
                Text(
                  validity,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black.withAlpha(200),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 10),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "NGN",
                  style: TextStyle(color: Colors.red),
                ),
                TextSpan(
                  text: "\t$price",
                  style: TextStyle(color: Colors.black.withAlpha(200)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
