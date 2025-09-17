import 'package:flutter/material.dart';

class Line extends StatelessWidget {
  const Line({super.key, this.height, this.width});

  final double? height, width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 1,
      width: width ?? double.maxFinite,
      color: Colors.grey.withAlpha(100),
    );
  }
}
