import 'package:flutter/material.dart';
import 'package:sandbox/widgets/airtel/airtel_action_button.dart';

class AirtelTopBarActions extends StatelessWidget {
  const AirtelTopBarActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AirtelActionButton(
            title: "Buy bundles",
            icon: Icons.wallet,
            onTap: () {},
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: AirtelActionButton(
            title: "Buy airtime",
            icon: Icons.bolt,
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
