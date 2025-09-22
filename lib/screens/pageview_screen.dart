import 'package:flutter/material.dart';
import 'package:sandbox/screens/settings_page.dart';

class PageViewScreen extends StatelessWidget {
  const PageViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: [
          SettingsPage(),
          Container(color: Colors.green, height: 50, width: double.maxFinite),
          Container(color: Colors.red, height: 50, width: double.maxFinite),
          Container(color: Colors.blue, height: 50, width: double.maxFinite),
        ],
      ),
    );
  }
}
