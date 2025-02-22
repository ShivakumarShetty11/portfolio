import 'package:flutter/material.dart';
import 'package:portfolio/common/blog.dart'; // Ensure this import is correct
import 'package:portfolio/web/about_web.dart';
import 'package:portfolio/web/landing_page_web.dart';
import 'package:portfolio/web/works_web.dart';
import 'package:portfolio/web/contact_web.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return const LandingPageWeb();
              } else {
                return const Scaffold();
              }
            },
          ),
        );
      case '/contact':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return const ContactWeb();
              } else {
                return const Scaffold();
              }
            },
          ),
        );
      case '/about':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return const AboutWeb();
              } else {
                return const Scaffold();
              }
            },
          ),
        );
      case '/blog':
        return MaterialPageRoute(
          builder: (_) => const Blog(), // Ensure this is correct
        );
      case '/works':
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return const WorksWeb();
              } else {
                return const Scaffold();
              }
            },
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 800) {
                return const LandingPageWeb();
              } else {
                return const Scaffold();
              }
            },
          ),
        );
    }
  }
}
