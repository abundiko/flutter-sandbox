import 'package:flutter/material.dart';
import 'package:sandbox/widgets/airtel/airtel_data_plan_card.dart';

class AirtelJust4me extends StatelessWidget {
  const AirtelJust4me({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "JUST4ME",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Colors.red,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text("All Offers", style: TextStyle(color: Colors.blue)),
              ),
            ],
          ),
          SizedBox(height: 10),
          AirtelDataPlanCard(
            title: "250 MB",
            validity: "validity 1 day",
            price: 50,
          ),
        ],
      ),
    );
  }
}
