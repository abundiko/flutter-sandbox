import 'dart:io';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Sandbox App"),
        actions: [
          SizedBox(
            width: 100,
            child: Column(
              children: [
                Icon(Icons.settings, color: Colors.white),
                Text("Settings", style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.person, color: Colors.white),
          ),
        ],
        // backgroundColor: Color(0xff222222),
        // backgroundColor: Color.fromARGB(198, 133, 123, 8),
        backgroundColor: Color.fromRGBO(161, 22, 1, 1),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 30,
              bottom: 100,
              left: 10,
              right: 10,
            ),

            child: SingleChildScrollView(
              child: Column(
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
                  SizedBox(height: 20),
                  Text("Hello World"),
                  SizedBox(height: 20),
                  Text("Hello World"),
                  SizedBox(height: 20),
                  Text("Hello World"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("A"),
                      SizedBox(width: 20),
                      Text("B"),
                      Text("C"),
                      Text("D"),
                      Icon(
                        Icons.account_balance_wallet,
                        size: 50,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 200,
                    width: double.maxFinite,
                    child: Center(child: Text("Kizito")),
                  ),
                  Image.network(
                    height: 200,
                    "https://pbs.twimg.com/profile_images/1750733905613778944/ackI5m1I_400x400.jpg",
                  ),
                ],
              ),
            ),
          ),
          Image.asset(
            "assets/images/heart.png",
            height: 200,
            fit: BoxFit.cover,
          ),

          AspectRatio(
            aspectRatio: 1,
            child: Stack(
              children: [
                Text(
                  "Welcome everyone",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Text(
                    "This is for Peter",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
              ],
            ),
          ),
          // Image.file(
          //   File(
          //     "/storage/emulated/0/Pictures/WhatsApp/IMG-20250619-WA0026(1).jpg",
          //   ),
          //   height: 200,
          //   fit: BoxFit.cover,
          // ),
          Image.network(
            "https://pbs.twimg.com/profile_images/1750733905613778944/ackI5m1I_400x400.jpg",
            height: 200,
            fit: BoxFit.cover,
          ),

          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            alignment: Alignment.bottomLeft,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black87,
                  spreadRadius: 1,
                  blurRadius: 10,
                ),
              ],
              border: Border.all(color: Colors.white, width: 2),
              gradient: LinearGradient(
                colors: [Colors.red, Colors.white, Colors.blueAccent],
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
              ),
              image: DecorationImage(
                image: AssetImage("assets/images/heart.png"),
              ),
            ),
            height: 300,
            clipBehavior: Clip.hardEdge,
            constraints: BoxConstraints(maxHeight: 250, minHeight: 40),
            child: Image.network(
              "https://pbs.twimg.com/profile_images/1750733905613778944/ackI5m1I_400x400.jpg",
              height: double.maxFinite,
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
