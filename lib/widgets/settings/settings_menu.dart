import 'package:flutter/material.dart';

class SettingsMenu extends StatefulWidget {
  const SettingsMenu({super.key});

  @override
  State<SettingsMenu> createState() => _SettingsMenuState();
}

class _SettingsMenuState extends State<SettingsMenu> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      borderRadius: BorderRadius.circular(20),
      itemBuilder: (ctx) => [
        PopupMenuItem(child: Text("Settings")),
        PopupMenuItem(child: Text("Home")),
        PopupMenuItem(child: Text("Abount")),
      ],
      child: Icon(Icons.more_vert, color: Theme.of(context).primaryColor),
    );
  }
}
