import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sandbox/screens/home_screen.dart';
import 'package:sandbox/widgets/title/h1.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        H1("Home"),
        Expanded(child: SizedBox()),
        IconButton(
          onPressed: () {
            Navigator.push(
              context,
              CupertinoPageRoute(builder: (_) => HomeScreen()),
            );
          },
          icon: Icon(Icons.settings),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.blender_outlined)),
      ],
    );
  }
}
