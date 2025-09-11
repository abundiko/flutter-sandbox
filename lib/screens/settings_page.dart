import 'package:flutter/material.dart';
import 'package:sandbox/screens/home_screen.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          dense: true,
          onTap: () {
            print("list tile pressed");
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => HomeScreen()),
            );
          },
          titleAlignment: ListTileTitleAlignment.top,
          minVerticalPadding: 20,
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.network(
              "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
              fit: BoxFit.cover,
              height: 40,
              width: 40,
            ),
          ),
          title: Text("Peter Okonkwo"),
          subtitle: Row(
            children: [
              Icon(Icons.checklist_rtl_sharp),
              SizedBox(width: 10),
              Text("Flutter Developer", style: TextStyle(fontSize: 12)),
            ],
          ),
          trailing: Text("Yesterday"),
        ),
      ],
    );
  }
}
