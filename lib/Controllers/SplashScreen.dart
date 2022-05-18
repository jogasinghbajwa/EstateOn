import 'package:flutter/material.dart';
import "HomePage.dart";
import 'dart:async';

/// State
class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      // backgroundColor: Colors.red,
      body: Center(
        child: Image.asset(
          'assets/images/Estate_On_Logo.png',
          fit: BoxFit.fill,
          height: 100,
        ),
      ),
    ));
  }
}
