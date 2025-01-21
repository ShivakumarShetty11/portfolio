import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabsWeb extends StatefulWidget {
  final title;

  const TabsWeb(this.title, {super.key});

  @override
  State<TabsWeb> createState() => _TabsWebState();
}

class _TabsWebState extends State<TabsWeb> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isSelected = true;
        });
      },
      onExit: (_) {
        setState(() {
          isSelected = false;
        });
      },
      child: AnimatedDefaultTextStyle(
        duration: Duration(microseconds: 100),
        curve: Curves.elasticIn,
        style: isSelected
            ? GoogleFonts.oswald(
                fontSize: 30.0,
                color: Colors.redAccent,
                decoration: TextDecoration.underline)
            : GoogleFonts.oswald(fontSize: 25.0, color: Colors.black),
        child: Text(
          widget.title,
          style: GoogleFonts.oswald(color: Colors.grey),
        ),
      ),
    );
  }
}

class SansBold extends StatelessWidget {
  final text;
  final size;
  const SansBold(this.text, this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.oswald(
          fontSize: size,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ));
  }
}
