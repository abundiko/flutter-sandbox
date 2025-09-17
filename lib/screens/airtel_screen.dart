import 'package:flutter/material.dart';
import 'package:sandbox/widgets/airtel/airtel_ads.dart';
import 'package:sandbox/widgets/airtel/airtel_just4me.dart';
import 'package:sandbox/widgets/airtel/airtel_quick_actions.dart';
import 'package:sandbox/widgets/airtel/airtel_top_bar.dart';
import 'package:sandbox/widgets/title/h1.dart';

class AirtelScreen extends StatelessWidget {
  const AirtelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        automaticallyImplyLeading: false,
        leadingWidth: 0,
        title: Row(children: [Icon(Icons.abc, size: 30), H1("airtel")]),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_active_outlined),
          ),
        ],
      ),
      body: ListView(
        children: [
          AirtelTopBar(),
          AirtelQuickActions(),
          AirtelAds(),
          AirtelJust4me(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black.withAlpha(150),

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.wifi), label: "Home wi-fi"),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_outlined),
            label: "More",
          ),
        ],
      ),
    );
  }
}
