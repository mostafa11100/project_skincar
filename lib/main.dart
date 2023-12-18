import 'package:flutter/material.dart';
import 'package:skincare/about_us.dart';
import 'package:skincare/home_screen.dart';
import 'package:skincare/login.dart';

void main() {
  runApp(const SkinCareAPP());
}

class SkinCareAPP extends StatelessWidget {
  const SkinCareAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => LoginPage(),
        "home": (context) => Home(),
        "aboutus": (context) => AboutUsScreen()
      },
      initialRoute: '/',
    );
  }
}

// ignore: must_be_immutable
