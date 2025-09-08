import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Sandbox App"),
        // backgroundColor: Color(0xff222222),
        // backgroundColor: Color.fromARGB(198, 133, 123, 8),
        backgroundColor: Color.fromRGBO(161, 22, 1, 1),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temporal incididunt ut labore et dolore magna aliqua.",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              // wordSpacing: 20,
              // letterSpacing: 20,
              decoration: TextDecoration.underline,
              decorationColor: Colors.orange,
              // fontStyle: FontStyle.italic,
              overflow: TextOverflow.fade,
            ),
            maxLines: 4,
            textAlign: TextAlign.center,
          ),
          Text("Hello World"),
          Text("Hello World"),
          Text("Hello World"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [Text("A"), Text("B"), Text("C"), Text("D")],
          ),
          Text("Kizito"),
        ],
      ),
    );
  }
}
