import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding/onboard/screensindex.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 4),
            () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => ScreenIndex(initial: 0,))));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Container(
          child: Center(
            child: Image.asset(
              'assets/imagesplash.png',
              height: 150.0,
              width: 150.0,
            ),
          ),
        ),
      ),
    );
  }
}
