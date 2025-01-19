// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:portfolio/components.dart';

class LandingPageWeb extends StatefulWidget {
  const LandingPageWeb({super.key});

  @override
  State<LandingPageWeb> createState() => LandingPageWebState();
}

class LandingPageWebState extends State<LandingPageWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        iconTheme: IconThemeData(size: 25.0, color: Colors.black),
        title: TabsWeb("HOME"),
      ),
      body: ListView(children: [
        Container(
            child: Row(children: [
          CircleAvatar(
              radius: 146.0,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 143.0,
                backgroundColor: Colors.black,
                child: CircleAvatar(
                  radius: 140.0,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("assets/image1circle.png"),
                ),
              ))
        ])),
      ]),
    );
  }
}
