import 'package:flutter/material.dart';
import 'package:sandbox/data/quick_acions.dart';
import 'package:sandbox/widgets/airtel/airtel_quick_action_button.dart';

class AirtelQuickActions extends StatelessWidget {
  const AirtelQuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Quick Actions",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text("View All", style: TextStyle(color: Colors.blue)),
              ),
            ],
          ),
          SizedBox(height: 10),
          Wrap(
            alignment: WrapAlignment.spaceBetween,
            runAlignment: WrapAlignment.spaceBetween,
            spacing: 10,
            runSpacing: 10,
            children: [
              ...quickActions.map(
                (action) => AirtelQuickActionButton(
                  text: action["text"],
                  icon: action["icon"],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
