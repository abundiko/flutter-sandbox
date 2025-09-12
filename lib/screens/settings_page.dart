import 'package:flutter/material.dart';
import 'package:sandbox/screens/bottom_nav_screen.dart';
import 'package:sandbox/screens/login_screen.dart';
import 'package:sandbox/widgets/tiles/setting_tile.dart';
import 'package:sandbox/widgets/title/h1.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        H1("Whatsapp"),
        SettingTile(
          title: "Home",
          subtitle: "Go to Home Screen",
          image:
              "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          date: "today",
          icon: Icons.checklist_rtl_sharp,
        ),
        SettingTile(
          title: "Settings",
          subtitle: "Go to Settings Screen",
          image:
              "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          date: "today",
        ),
        SettingTile(
          title: "Bottom Nav",
          subtitle: "Go to Bottom Navigation Screen",
          image:
              "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (c) => BottomNavScreen()),
          ),
        ),

        ElevatedButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => LoginScreen()),
          ),
          child: Text("Go to Login"),
        ),
      ],
    );
  }
}
