// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          //first page
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Image Section
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
                  ),
                ),
                SizedBox(width: 20.0), // Space between image and text

                // Text Section
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.tealAccent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          ),
                        ),
                        child: SansBold("hi", 15),
                        alignment: Alignment.center,
                      ),
                      SizedBox(
                          height:
                              10.0), // Space between "hi" container and "Shiva" text
                      SansBold(
                        "Shiva Kumar",
                        55.0,
                      ),
                      Sans("Student", 30),
                      SizedBox(height: 10.0),
                      Row(
                        children: [
                          Icon(Icons.email),
                          SizedBox(height: 10.0),
                          Sans("shiva@gmail.com", 15)
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: [
                          Icon(Icons.call),
                          SizedBox(height: 10.0),
                          Sans("123456", 15)
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Row(
                        children: [
                          Icon(Icons.location_pin),
                          SizedBox(height: 10.0),
                          Sans("bengaluru", 15)
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          //second page
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Sans("About me", 40),
                SizedBox(height: 15),
                Sans(
                    "Hello,i am shivakumar and i am pursuing my bachelors of Engineering in RVCE banglore",
                    15),
                Sans("i am actively looking for Internship opportunity", 15),
                Sans("u can acontact me through any of the above medium", 15),
                SizedBox(height: 15),
                Row(children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            style: BorderStyle.solid,
                            color: Colors.tealAccent,
                            width: 2),
                        borderRadius: BorderRadius.circular(7.0)),
                    child: Sans("flutter", 15),
                  ),
                  SizedBox(width: 7),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            style: BorderStyle.solid,
                            color: Colors.tealAccent,
                            width: 2),
                        borderRadius: BorderRadius.circular(7.0)),
                    child: Sans("firebase", 15),
                  )
                ])
              ],
            ),
          )
          //second page
        ],
      ),
    );
  }
}

class TabsWeb extends StatelessWidget {
  final String title;
  TabsWeb(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }
}
