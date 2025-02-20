import 'package:flutter/material.dart';
import 'package:portfolio/mobile/landidng_page_mobile.dart';
import 'package:portfolio/web/landing_page_web.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LayoutBuilder(
        builder: (context, constraint) {
          if (constraint.maxWidth > 800) {
            return LandingPageWeb();
          } else {
            return LandidngPageMobile();
          }
        },
      ),
    );
  }
}
