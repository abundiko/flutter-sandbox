import 'package:flutter/material.dart';

class DeviceInfoCard extends StatelessWidget {
  const DeviceInfoCard({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
  });

  final String title, value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    double width = (MediaQuery.of(context).size.width - 50) / 2;

    return Container(
      width: width.floorToDouble(),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0x33ffffff),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 16),
              SizedBox(width: 4),
              Expanded(
                child: Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            value,
            style: TextStyle(
              fontSize: 14,
              color: Colors.white70,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
