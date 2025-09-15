import 'package:flutter/material.dart';
import 'package:sandbox/screens/bottom_nav_screen.dart';
import 'package:sandbox/screens/device_info_screen.dart';
import 'package:sandbox/screens/home_screen.dart';
import 'package:sandbox/screens/login_screen.dart';
import 'package:sandbox/screens/webview_screen.dart';
import 'package:sandbox/utils/navigation.dart';
import 'package:sandbox/widgets/tiles/setting_tile.dart';
import 'package:sandbox/widgets/title/h1.dart';
import 'package:toastification/toastification.dart';

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
          title: "Open X",
          subtitle: "show kesh on X",
          image:
              "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
          onTap: () => toScreen(context, WebviewScreen()),
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
