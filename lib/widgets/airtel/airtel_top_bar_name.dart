import 'package:flutter/material.dart';
import 'package:sandbox/widgets/title/h1.dart';

class AirtelTopBarName extends StatelessWidget {
  const AirtelTopBarName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "PETER KIZITO",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
            Text(
              "Prepaid - 00000000",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ],
        ),
        TextButton(
          onPressed: () {},
          child: Text("Manage Account", style: TextStyle(color: Colors.blue)),
        ),
      ],
    );
  }
}
