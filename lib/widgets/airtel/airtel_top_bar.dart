import 'package:flutter/material.dart';
import 'package:sandbox/widgets/airtel/airtel_top_bar_actions.dart';
import 'package:sandbox/widgets/airtel/airtel_top_bar_details.dart';
import 'package:sandbox/widgets/airtel/airtel_top_bar_name.dart';
import 'package:sandbox/widgets/airtel/line.dart';

class AirtelTopBar extends StatelessWidget {
  const AirtelTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 300,
      child: Stack(
        children: [
          Column(children: [Container(color: Colors.red, height: 100)]),
          Container(
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black87.withAlpha(70),
                  spreadRadius: 1,
                  blurRadius: 20,
                ),
              ],
            ),
            child: Column(
              children: [
                AirtelTopBarName(),
                SizedBox(height: 10),
                Line(),
                SizedBox(height: 10),
                AirtelTopBarDetails(),
                SizedBox(height: 10),
                Line(),
                SizedBox(height: 10),
                AirtelTopBarActions(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
