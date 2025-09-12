import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sandbox/widgets/home/home_appbar.dart';
import 'package:sandbox/widgets/tiles/setting_tile.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeAppbar(),
          SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: [
                SettingTile(
                  title: "Title 1",
                  subtitle: "Subtitle 1",
                  image:
                      "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                ),
                SettingTile(
                  title: "Title 2",
                  subtitle: "Subtitle 2",
                  image:
                      "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                ),
                SettingTile(
                  title: "Title 3",
                  subtitle: "Subtitle 3",
                  image:
                      "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
