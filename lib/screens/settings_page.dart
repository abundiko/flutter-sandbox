import 'package:flutter/material.dart';
import 'package:sandbox/screens/airtel_screen.dart';
import 'package:sandbox/screens/bottom_nav_screen.dart';
import 'package:sandbox/screens/device_info_screen.dart';
import 'package:sandbox/screens/login_screen.dart';
import 'package:sandbox/screens/weather_screen.dart';
import 'package:sandbox/screens/webview_screen.dart';
import 'package:sandbox/utils/navigation.dart';
import 'package:sandbox/widgets/settings/settings_menu.dart';
import 'package:sandbox/widgets/settings/theme_switcher.dart';
import 'package:sandbox/widgets/tiles/setting_tile.dart';
import 'package:sandbox/widgets/title/h1.dart';
import 'package:toastification/toastification.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "WhatsappRed",
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              SettingsMenu(),
            ],
          ),
        ),
        SettingTile(
          title: "Home",
          subtitle: "Go to Home Screen",
          image:
              "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          date: "today",
          icon: Icons.checklist_rtl_sharp,
          onTap: () => toScreen(context, DeviceInfoScreen()),
        ),
        SettingTile(
          title: "Settings",
          subtitle: "Go to Settings Screen",
          image:
              "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          date: "today",
          onTap: () {
            toastification.show(
              context: context, // optional if you use ToastificationWrapper
              title: Text('Hello, world!'),
              autoCloseDuration: const Duration(seconds: 5),
              alignment: Alignment.bottomCenter,
              type: ToastificationType.success,
              style: ToastificationStyle.flatColored,
              showIcon: false,
              closeButton: ToastCloseButton(
                buttonBuilder: (context, onClose) =>
                    ElevatedButton(onPressed: () {}, child: Text("Retry")),
              ),
            );
          },
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
        SettingTile(
          title: "Airtel Home",
          subtitle: "Go to Airtel Home Screen",
          image:
              "https://pbs.twimg.com/profile_images/1750733905613778944/ackI5m1I_400x400.jpg",
          onTap: () => toScreen(context, AirtelScreen()),
        ),
        SettingTile(
          title: "Open X",
          subtitle: "show kesh on X",
          image:
              "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          onTap: () => toScreen(context, WebviewScreen()),
        ),
        SettingTile(
          title: "Weather",
          subtitle: "open weather screen",
          image:
              "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          onTap: () => toScreen(context, WeatherScreen()),
        ),

        ElevatedButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => LoginScreen()),
          ),
          child: Text("Go to Login"),
        ),

        ThemeSwitcher(),
      ],
    );
  }
}
