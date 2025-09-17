import 'package:flutter/material.dart';
import 'package:sandbox/widgets/airtel/airtel_top_bar_detail_card.dart';
import 'package:sandbox/widgets/airtel/line.dart';

class AirtelTopBarDetails extends StatelessWidget {
  const AirtelTopBarDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AirtelTopBarDetailCard(
          title: "71.34",
          primaryTitle: "NGN",
          description: "Airtime Balance",
        ),

        Line(height: 50, width: 1),
        AirtelTopBarDetailCard(
          title: "0",
          primaryTitle: "Mins",
          description: "Voice Balance",
        ),
        Line(height: 50, width: 1),
        AirtelTopBarDetailCard(
          title: "54.34",
          primaryTitle: "GB",
          description: "Data Balance",
        ),
      ],
    );
  }
}
