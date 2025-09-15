import 'package:flutter/material.dart';
import 'package:sandbox/widgets/tiles/setting_tile.dart';

class WebviewMenuBottomSheet extends StatefulWidget {
  const WebviewMenuBottomSheet({super.key});

  @override
  State<WebviewMenuBottomSheet> createState() => _WebviewMenuBottomSheetState();
}

class _WebviewMenuBottomSheetState extends State<WebviewMenuBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.black,
        border: BoxBorder.all(width: 2, color: Colors.white),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 4,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(height: 10),
          SettingTile(
            title: "Open X",
            subtitle: "show kesh on X",
            image:
                "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
