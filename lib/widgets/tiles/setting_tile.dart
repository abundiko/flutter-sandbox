import 'package:flutter/material.dart';

class SettingTile extends StatelessWidget {
  SettingTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
    this.date,
    this.icon,
    this.onTap,
  });

  final String title, subtitle, image;
  final String? date;
  IconData? icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      onTap: onTap,
      titleAlignment: ListTileTitleAlignment.top,
      minVerticalPadding: 20,
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Image.network(image, fit: BoxFit.cover, height: 40, width: 40),
      ),
      title: Text(title),
      subtitle: Row(
        children: [
          if (icon is IconData) Icon(icon),
          SizedBox(width: 10),
          Text(subtitle, style: TextStyle(fontSize: 12)),
        ],
      ),
      trailing: date is String ? Text(date!) : null,
    );
  }
}
